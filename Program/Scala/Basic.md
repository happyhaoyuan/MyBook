# Basic
* RELP
	- All commands
	```scala
	:help
	```
	- Show the history
	```scala
	:hi(story)
	```
	- Search the history
	```scala
	:h? <string>
	```
	- Edit history for reference
	```scala
	:e(dit) <line>   //palce that line in recent history
	```
	```scala
	:e(dit) <id>     //place that variable in recent history
	```
	> Then with a single up-arrow to edit/excute the code

* Variable
	- Immutable variable(constant)
	```scala
	val {variable_name}: {variable_type} = {variable_value}
	```
	- Mutable variable(var)
	```scala
	var {variable_name}: {variable_type} = {variable_value}
	```

* Type classes and methods
	- Any
	> `Any` is the supertype of all types
	- AnyVal
	> `AnyVal` represents value types are non-nullable
		- Functions/methods
			+ General
			```scala
			.getClass()	//runtime class
			.getType()	//
			.to{Type}()	//type convert
			.abs //absolute value
			.signum	//-1, 0, 1 for negative, zero, positive
			.isWhole	//true if have no decimal component
			.isInfinite()
			.isInfinity
			.isPosInfinity
			.isNegInfinity
			.isNaN	//
			.isValidInt
			.toDegrees	//the measurement of the angle x in degrees
			.toRadians	//the measurement of the angle in radians
			```
			+ Integer only
			```scala
			.%()	//remainder of the division
			.&()	//bitwise And
			.!=()	//not equal
			.==()	//eqaul
			.<<()	//bit-shifted left(preserve the sign)
			.>>()	//bit-shifted right(preserve the sign)
			.^()	//bitwise XOR
			.|()	//bitwise OR
			.toBinaryString	//to binary String
			```
		- [RichChar](https://www.scala-lang.org/api/2.12.3/scala/runtime/RichChar.html)/[Char](https://www.scala-lang.org/api/2.12.3/scala/Char.html)
		```scala
		.isDigit
		.isLetter
		.isLetterOrDigit
		.isLower
		.isUpper	
		.isWhitespace
		.toLower
		.toUpper
		.asDigit	//as digit instead .toInt with ASCII
		.until(end = {up_to_but_not_including}, step=1)
		.to(end = {including}, step=1)
		```
		- [String](https://www.scala-lang.org/api/current/scala/collection/immutable/StringOps.html)
		```scala
		.toTitleCase	//Upper the first letter for each word
		```
		- [RichInt](https://www.scala-lang.org/api/2.12.3/scala/runtime/RichInt.html)/[BigInt](https://www.scala-lang.org/api/current/scala/math/BigInt.html)/[Long](https://www.scala-lang.org/api/2.12.3/scala/Long.html)/[Int](https://www.scala-lang.org/api/2.12.3/scala/Int.html)/[Short](https://www.scala-lang.org/api/2.12.3/scala/Short.html)/[Byte](https://www.scala-lang.org/api/2.12.3/scala/Byte.html)
		```scala
		.util(end = {up_to_but_not_including}, step=1)
		.to(end = {including}, step=1)
		```
		- [RichDouble](https://www.scala-lang.org/api/current/scala/runtime/RichDouble.html)/[BigDecimal](https://www.scala-lang.org/api/current/scala/math/BigDecimal.html)/[Double](https://www.scala-lang.org/api/2.12.3/scala/Double.html)/[RichFloat](https://www.scala-lang.org/api/current/scala/runtime/RichFloat.html)/[Float](https://www.scala-lang.org/api/current/scala/Float.html)
			```scala
			.round	//nearest integer [Int]
			.ceil	//sallest integer larger than or equal integer [Double]
			.floor	//largest integer smaller than or equal integer [Double]
			```
		- [Unit](https://www.scala-lang.org/api/2.12.3/scala/Unit.html)	
		> Useful return type, like ( )
		- [Boolean](https://www.scala-lang.org/api/2.12.3/scala/Boolean.html)

	- AnyRef
	> `AnyRef` represents reference types covers all non-value types
	- Nothing
	> 'Nothing' is a subtype of all types to signal non-termination(thrown exception, program exit, an infinite loop)
	- Null
	> 'Null' is a subtype of all `AnyRef` with single value `null`
	```scala
	var {variable_name}: Any = null    //initial with null value
	```
	- Type Casting
	![Casting](./Casting.png)
	
	
* 