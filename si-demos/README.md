# WSO2 Streaming Integrator Demos Using Pre-baked Docker Images
This demonstration used the following two Docker images,
1. mssql-wso2si-demo - https://hub.docker.com/r/niruhan/mssql-wso2si-demo
2. wso2si-demo - https://hub.docker.com/r/niruhan/wso2si-demo

![Overall Architecture](https://github.com/niruhan/wso2si-demo/blob/main/images/overall_architecture.png?raw=true)

Note: we will use the image name as the container name using the --name tag when starting the containers for simplicity.

The conainer `mssql-wso2si-demo` contains Microsoft SQL server with a table named `SweetProductionTable` already created. Change data capture is also enabled
on this table.

The container `wso2si-demo` contains WSO2 Streaming Integrator, Kafka Zookeper, Kafka Server, Kafka Console Client, Kafka Console Producer, Prometheus, and Grafana servers pre-configured to minimize the effort required to follow this demonstration.

## Table of Contents
- [Start the containers](#start)
- [Monitoring](#monitoring)
- [Demo 1 - Receive and Send events with Kafka](#demo1)
  - [Test Publishing to Kafka](#kafkapub)
  - [Test Receiving from Kafka](#kafkacon)
- [Demo 2 - Change Data Capture (CDC) with Microsoft SQL Server](#demo2)
- [Demo 3 - File Processing](#demo3)
  - [Test file tailing](#tailing)
  - [Test Reading Complex XML File](#complexxml)
- [Demo 4 - Combined Demo](#demo4)

<a name="start"/>

## Start the required Docker images

Step 1 - Pull the custom mssql image with all the necessary settings preconfigured
```
docker pull niruhan/mssql-wso2si-demo
```

Step 2 - Start the SQL server
```
docker run -d --name mssql-wso2si-demo niruhan/mssql-wso2si-demo
```

Step 3 - Pull the wso2si-demo Docker image
```
docker pull niruhan/wso2si-demo
```

Step 4 - Start the wso2si-demo with a link to the SQL server
```
docker run --name wso2si-demo -p 8006:8006 -p 3000:3000 --link mssql-wso2si-demo niruhan/wso2si-demo
```

<a name="monitoring"/>

## Monitoring
In order to observe statistics and insights related to streaming activities performed by wso2si visit `http://localhost:3000`
In the address above you can access Grafana dashboards related to various metrics. Everything has been preconfigured and baked into this Docker image.
Use the following credentials if prompted for a login
```
username: admin
password: admin
```

<a name="demo1"/>

## Demo 1 - Receive and Send events with Kafka

In the first demo we will see how we can publish and receive events to and from kafka topics. A Siddhi App named `KafkaApp.siddhi` was designed for this purpose. This app publishes to `production_topic` and consumes from `order_topic`. In addition, this app also has an HTTP source listening at `http://0.0.0.0:8006/httpStream` and a log sink.

![KafkaApp](https://github.com/niruhan/wso2si-demo/blob/main/images/kafka_app.png?raw=true)

```
@App:name("KafkaApp")
@App:statistics(reporter = 'prometheus')
@App:description('Send and receive events via Kafka transport using JSON format')

@Source(type = 'http',
        receiver.url='http://0.0.0.0:8006/httpStream',
        basic.auth.enabled='false',
        @map(type='json'))
define stream httpStream (batchNumber long, lowTotal double);

@sink(type='log', prefix='Received events from order_topic topic: ')
define stream logStream (batchNumber long, lowTotal double);

@sink(type='kafka',
      topic='production_topic',
      bootstrap.servers='localhost:9092',
      @map(type='json'))
define stream KafkaOutputStream (batchNumber long, lowTotal double);

@source(type='kafka',
        topic.list='order_topic',
        partition.no.list='0',
        threading.option='single.thread',
        group.id="group",
        bootstrap.servers='localhost:9092',
        @map(type='json'))
define stream KafkaInputStream (batchNumber long, lowTotal double);

@info(name='EventsPassthroughQuery')
from httpStream
select batchNumber, lowTotal * 2 as lowTotal
insert into KafkaOutputStream;

from KafkaInputStream
select batchNumber + 5 as batchNumber, lowTotal
insert into logStream;
```

<a name="kafkapub"/>

### Test Publishing to Kafka.
In this demo we will see how we can publish events to kafka topic. We can send an HTTP request to `http://0.0.0.0:8006/httpStream` to trigger the relevant actions by `KafkaApp.siddhi`. We can use the Kafka Console Consumer to observe the events published by the KafkaApp to the `production_topic`

![KafkaPub](https://github.com/niruhan/wso2si-demo/blob/main/images/kafka_pub.png?raw=true)

Step 1 - Access the shell of the wso2si-demo container
```
docker exec -it wso2si-demo bash
```

Step 2 - Start kafka console consumer on the topic “production_topic”
```
kafka/bin/kafka-console-consumer.sh --topic production_topic --from-beginning --bootstrap-server localhost:9092
```

Step 3 - Send an HTTP Request
```
curl --location --request POST 'http://0.0.0.0:8006/httpStream' --header 'Content-Type: application/json' --data-raw '{ "event": { "batchNumber": 7, "lowTotal": 45.6 } }'
```

Step 4 - Observe the logs in the kafka console consumer
```
{"event":{"batchNumber":7,"lowTotal":45.6}}
```

<a name="kafkacon"/>

### Test Receiving from Kafka.
In this demo we will see how we can consume events from kafka topic. We can use the Kafka Console Producer to publish events into `order_topic`. This will be captured by the Kafka source within the KafkaApp and will be logged in the wso2si-demo container terminal after some transformation.

![KafkaConsume](https://github.com/niruhan/wso2si-demo/blob/main/images/kafka_consume.png?raw=true)

Step 1 - Issue the following command from the shell of wso2si-demo container to start kafka console producer
```
kafka/bin/kafka-console-producer.sh --topic order_topic --broker-list localhost:9092
```

Step 2 - Copy and paste the following event into the console producer and hit enter
```
{ "event": { "batchNumber": 7, "lowTotal": 45.6 } }
```

Step 3 - Observe the following logs in the terminal used to start wso2si-demo container
```
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from order_topic topic:  : Event{timestamp=1605007067048, data=[7, 45.6], isExpired=false}
```

<a name="demo2"/>

## Demo 2 - Change Data Capture (CDC) with Microsoft SQL Server

The SQL server custom image at niruhan/mssql-wso2si-demo had a database called "production" and a table named "SweetProductionTable". CDC is enabled on this table. In addition, a CDC source is configured in CDCApp.siddhi which listens for insertions into "SweetProductionTable" and the event is published into “kafka_in” topic. Since we already have a kafka source configured on the same topic, this event is read from the topic and a log is printed

![CDC](https://github.com/niruhan/wso2si-demo/blob/main/images/cdc.png?raw=true)

```
@App:name('CDCApp')
@App:statistics(reporter = 'prometheus')
@App:description('Capture MSSQL database inserts and prints log')


@source(type='cdc',
    url='jdbc:sqlserver://mssql-wso2si-demo:1433;databaseName=production;',
    username='SA',
    password='Wso2carbon',
    table.name='dbo.SweetProductionTable',
    operation='insert',
    database.server.name='localhost\default',
    connector.properties='snapshot.mode=initial_schema_only',
    @map(type='keyvalue', fail.on.missing.attribute='false'))
define stream CDCInputStream (batchNumber long, lowTotal double);

@sink(type='kafka',
      topic='order_topic',
      bootstrap.servers='localhost:9092',
      @map(type='json'))
define stream KafkaCDCOutputStream (batchNumber long, lowTotal double);

@info(name = 'show_in_logs_query')
from CDCInputStream
select batchNumber, lowTotal / 2 as lowTotal
insert into KafkaCDCOutputStream;
```

Step 1 - Log in to the  SQL server image from a new terminal
```
docker exec -it mssql-wso2si-demo bash
```

Step 2 - Access the MS SQL Commandline
```
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P Wso2carbon
```

Step 3 - Use the database named “production”
```
use production
```
```
go
```

Step 4 - A table named “SweetProductionTable” is already created and CDC is enabled. Insert a row into the table using the following SQL command
```
INSERT INTO SweetProductionTable VALUES (1, 23.5);
```
```
go
```

Step 5 - Observe logs in the terminal used to start wso2si-demo.
```
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from order_topic topic:  : Event{timestamp=1605684089777, data=[6, 11.75], isExpired=false}
```

<a name="demo3"/>

## Demo 3 - File Processing
In the FileApp.siddhi we have two sources related to file processing. One is fileeventlistener source which is listening on the directory /file. If any file is created or modified or deleted, it will generate an event. This event is then logged in the console.

The other is file source which listens to a file inside the /file directory. If there is a file it will read all the lines one by one and generate events with the content. In addition, if we add new lines to the file, it will automatically detect the new lines and produce new events. Then these events are logged to the console.

```
@App:name("FileApp")
@App:statistics(reporter = 'prometheus')
@App:description('Publish and receive data events processed within Siddhi to files in CSV custom format.')

@source(type='file',
dir.uri='file://home/wso2carbon/order_directory',
action.after.process='NONE',
tailing='true', mode='line',
@map(type='csv', @attributes(batchNumber='0', lowTotal='1')))
define stream InputStream (batchNumber long, lowTotal double);

@source(type='fileeventlistener',dir.uri='file://home/wso2carbon/order_directory')
define stream FileListenerStream (filepath string, filename string, status string);

@source(
    type = 'file',
    file.uri = "file://home/wso2carbon/xml_directory/complexData.xml",
    mode = "line",
    tailing = "true",
    action.after.process='keep',
    @map(type='xml',
        enclosing.element="/root/child",
        enable.streaming.xml.content="true",
        enclosing.element.as.event="true",
        extract.leaf.node.data="true",
        fail.on.missing.attribute="false",
        @attributes(id = "/child/@id", timestamp = "/child/@timestamp",
                    key = "/child/detail/@key",
                    value = "/child/detail/@value")))
define stream xmlInputStream (id string, timestamp string, key string, value string);

@sink(type='log')
define stream FooStream (filepath string, filename string, status string);

@sink(type='log', prefix='Received events from file changes in order_directory: ', @map(type='csv', @payload(batchNumber='1', lowTotal='0')))
define stream OutputStream (batchNumber long, lowTotal double);

@sink(type='kafka',
      topic='order_topic',
      bootstrap.servers='localhost:9092',
      @map(type='json'))
define stream KafkaFileOutputStream (batchNumber long, lowTotal double);

@sink(type='log', prefix='Received events from complexData.xml file ')
define stream xmlOutputStream (id string, timestamp string, key string, value string);

from InputStream
select *
insert into OutputStream;

from InputStream
select *
insert into KafkaFileOutputStream;

from FileListenerStream
select *
insert into FooStream;

from xmlInputStream
select *
insert into xmlOutputStream;

```

![File Processing](https://github.com/niruhan/wso2si-demo/blob/main/images/file_proc.png?raw=true)

Step 1 - Log into the console of the SI container
```
docker exec -it wso2si-demo bash
```

Step 2 - Move 
```
mv ordersFile.csv order_directory/ordersFile.csv
```

Step 3 - Observe the logs

Observe the following log which indicates a file named testFile.csv is created in the directory /home/wso2carbon/file
```
INFO {io.siddhi.core.stream.output.sink.LogSink} - FileApp : FooStream : Event{timestamp=1605684253673, data=[/home/wso2carbon/order_directory/ordersFile.csv, ordersFile.csv, created], isExpired=false}
```

The file testFile.csv contained the following
```
101,23.5
102,2.5
```

Observe the following logs which correspond to the two lines available in the file.
```
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from CDC on SweetProductionStream:  : 23.5,101
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from CDC on SweetProductionStream:  : 2.5,102

INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from order_topic topic:  : Event{timestamp=1605684254366, data=[106, 23.5], isExpired=false}
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from order_topic topic:  : Event{timestamp=1605684254368, data=[107, 2.5], isExpired=false}
```

Is it also worth noting that we have added a simple csv custom mapping to reorder the columns of data (The first column becomes the second and vice-versa)

<a name="tailing"/>

### Test file tailing
Step 1 - Open the testFile.csv file inside the container
```
nano order_directory/ordersFile.csv
```

Step 2 - Add a new line as follows and add a new line by hitting enter. Then save the file
```
103,4.7
```

Step 3 - Observe the logs
```
Received events from CDC on SweetProductionStream:  : 4.7,103
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from order_topic topic:  : Event{timestamp=1605684401118, data=[108, 4.7], isExpired=false}
INFO {io.siddhi.core.stream.output.sink.LogSink} - FileApp : FooStream : Event{timestamp=1605684401247, data=[/home/wso2carbon/order_directory/ordersFile.csv, ordersFile.csv, modifyingCompleted], isExpired=false}
```

<a name="complexxml"/>

### Test Reading Complex XML File
Step 1 - Log into the console of the SI container
```
docker exec -it wso2si-demo bash
```

Step 2 - Open the complexData.xml file
```
nano xml_directory/complexData.xml
```

Step 3 - Add the following in the root tag in the place as shown below
```
<?xml version='1.0' encoding='UTF-8'?>
<root>
	<bounds minlat="53.4281" minlon="-2.4142" maxlat="54.0097" maxlon="-0.9762"/>
	<way id="3698064" timestamp="2017-12-30T23:25:01Z" >
		<detail key="company" value="ibm"/>
		<detail key="country" value="USA"/>
		<subDetail ref="2143797720"/>
		<subDetail ref="2143797722"/>
	</way>
	<node id="1234567890" timestamp="2014-09-11T10:36:37Z" />
	<way id="204702407" version="3" timestamp="2017-12-31T00:30:25Z">
		<detail key="company" value="ibm"/>
		<detail key="country" value="USA"/>
		<subDetail ref="2143797720"/>
		<subDetail ref="2143797722"/>
	</way>
	<!--Content to add-->
	<child id="413229" timestamp="2014-09-10T14:12:48Z"/>
	<child id="414427" timestamp="2018-01-24T23:16:10Z"/>
	<child id="673959" timestamp="2019-10-20T12:07:13Z">
		<extra id="1234" timestamp="2014-09-11T10:36:37Z"/>
		<detail key="company" value="wso2"/>
		<extra id="0987" timestamp="2014-09-11T10:36:37Z"/>
		<detail key="country" value="Sri Lanka"/>
	</child>
	<child id="1649133314" timestamp="2019-03-11T17:16:47Z">
		<extra id="5678" timestamp="2014-09-11T10:36:37Z"/>
		<detail key="company" value="ibm"/>
		<detail key="country" value="USA"/>
		<detail key="employees" value="500"/>
	</child>
	<!-- End of Content to add-->
</root>
```

Save the modified xml file.

Step 4 - Observe logs in the wso2si-demo container terminal
```
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from complexData.xml file  : Event{timestamp=1605764871673, data=[413229, 2014-09-10T14:12:48Z, null, null], isExpired=false}
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from complexData.xml file  : Event{timestamp=1605764871680, data=[414427, 2018-01-24T23:16:10Z, null, null], isExpired=false}
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from complexData.xml file  : [Event{timestamp=1605764871683, data=[673959, 2019-10-20T12:07:13Z, null, null], isExpired=false}, Event{timestamp=1605764871683, data=[673959, 2019-10-20T12:07:13Z, company, wso2], isExpired=false}, Event{timestamp=1605764871683, data=[673959, 2019-10-20T12:07:13Z, null, null], isExpired=false}, Event{timestamp=1605764871683, data=[673959, 2019-10-20T12:07:13Z, country, Sri Lanka], isExpired=false}]
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from complexData.xml file  : [Event{timestamp=1605764872613, data=[1649133314, 2019-03-11T17:16:47Z, null, null], isExpired=false}, Event{timestamp=1605764872613, data=[1649133314, 2019-03-11T17:16:47Z, company, ibm], isExpired=false}, Event{timestamp=1605764872613, data=[1649133314, 2019-03-11T17:16:47Z, country, USA], isExpired=false}, Event{timestamp=1605764872613, data=[1649133314, 2019-03-11T17:16:47Z, employees, 500], isExpired=false}]
```

<a name="demo4"/>

## Demo 4 - Combined Demo

In this demo, we will see how file processing, database interactions, change data capture, and Kafka publishing can be chained.
We have a directory named `order_directory_combined` which has a file named `ordersFile.csv`.  A file source listens on this directory to capture any inputs into this file. Any lines written will be read and written into `SweetProductionTable`. Then the CDC listener on `SweetProductionTable` will capture this insertion and publish an event to Kafka topic `order_topic`.

![Combined Demo](https://github.com/niruhan/wso2si-demo/blob/main/images/Combined.png?raw=true)

```
@App:name("CombinedDemoApp")
@App:statistics(reporter = 'prometheus')
@App:description('PDemonstrate file reading, DB insert, CDC, and Kafka publishing')

@source(type='file',
dir.uri='file://home/wso2carbon/order_directory_combined',
action.after.process='NONE',
tailing='true', mode='line',
@map(type='csv', @attributes(batchNumber='0', lowTotal='1')))
define stream InputStream (batchNumber long, lowTotal double);

@Store(type="rdbms",
    jdbc.url="jdbc:sqlserver://mssql-wso2si-demo:1433;databaseName=production;",
    username="SA",
    password="Wso2carbon" ,
    jdbc.driver.name="com.microsoft.sqlserver.jdbc.SQLServerDriver",
    field.length="symbol:100")
define table SweetProductionTable (batchNumber long, lowTotal double);

@sink(type='log', prefix='Received events from file changes in order_directory_combined: ', @map(type='csv', @payload(batchNumber='1', lowTotal='0')))
define stream OutputStream (batchNumber long, lowTotal double);

from InputStream
select *
insert into OutputStream;

from InputStream
select *
insert into SweetProductionTable;
```

Step 1 - Log in to the console of the SI container
```
docker exec -it wso2si-demo bash
```

Step 2 - Open the complexData.xml file
```
nano order_directory_combined/ordersFile.csv
```

Step 3 - Add a new line as follows and add a new line by hitting enter. Then save the file
```
214,43.1
```

Step 4 - Observe the logs from the Kafka Topic
```
INFO {io.siddhi.core.stream.output.sink.LogSink} - Received events from order_topic topic:  : Event{timestamp=1606374017404, data=[214, 43.1], isExpired=false}
```