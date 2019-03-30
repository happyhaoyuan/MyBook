import org.apache.log4j.{Level, Logger}
Logger.getLogger("org").setLevel(Level.ERROR)
Logger.getLogger("akka").setLevel(Level.ERROR)

import org.apache.spark._
import org.apache.spark.SparkContext._
val sc = new SparkContext("local[*]", "<name>")