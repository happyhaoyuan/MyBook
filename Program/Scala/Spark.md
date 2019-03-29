# SparkScala
* [Installation](https://sundog-education.com/spark-scala/)
> Install Spark 2.3
* Setup shell environment
> Edit `~/.bash_profile` or `~/.zshrc` with
```bash
export SPARK_HOME=.../spark-2.3.x-bin-hadoop2.x
export PATH=$PATH:$SPARK_HOME:$SPARK_HOME/bin
```
> For *`Windows`* need add this to `envrionment variable`
```bash
%SPARK_HOME%\bin
```
* Set log level
> Edit `conf/log4j.properties` with
```bash
log4j.rootCategory=ERROR, console
```
> Setup with the following levels: `ALL`, `DEBUG`, `ERROR`, `FATAL`, `INFO`, `OFF`, `TRACE`, `TRACE_INT`, `WARN`
```scala
import org.apache.log4j.{Level, Logger}
Logger.getLogger("org").setLevel(Level.ERROR)
Logger.getLogger("akka").setLevel(Level.ERROR)
```
* Initialize
```scala
import org.apache.spark._
import org.apache.spark.SparkContext._
val sc = new SparkContext("local[*]", "<name>")
```