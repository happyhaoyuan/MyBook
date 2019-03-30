# SparkScala
* [Installation](https://sundog-education.com/spark-scala/)
> Install Spark 2.3
* Setup shell environment
	
	Edit `~/.bash_profile` or `~/.zshrc` with

[import:17-19, title:"spark_shell_environment"](../../Code/shell.sh)

* Set log level
> Edit `conf/log4j.properties` with
```bash
log4j.rootCategory=ERROR, console
```
> Setup with the following levels: `ALL`, `DEBUG`, `ERROR`, `FATAL`, `INFO`, `OFF`, `TRACE`, `TRACE_INT`, `WARN`

[import:1-3, title:"setup_log_info_level"](../../Code/SparkScala.scala)

* Initialize

[import:4-6, title:"import"](../../Code/SparkScala.scala)