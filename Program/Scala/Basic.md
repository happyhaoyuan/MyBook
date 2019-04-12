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
	val <variable_name>: <variable_type> = <variable_value>
	```
	- Mutable variable(var)
	```scala
	var <variable_name>: <variable_type> = <variable_value>
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
			.to<Type>()	//type convert
			.abs //absolute value
			.signum	//-1, 0, 1 for negative, zero, positive
			.isWhole	//true if have no decimal component
			.isInfinite
			.isInfinity
			.isPosInfinity
			.isNegInfinity
			.isNaN
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
		.until(end = <up_to_but_not_including>, step=1)
		.to(end = <including>, step=1)
		```
		- [String](https://www.scala-lang.org/api/current/scala/collection/immutable/StringOps.html), [StringBuilder](https://www.scala-lang.org/api/current/scala/collection/mutable/StringBuilder.html)
		```scala		
		.length
		.concat(<string>)	//equal with + <string>
		==	//equal
		.equalsIgnoreCase(<string>)
		.capitalize	//Upper the first letter for this string
		.toTitleCase	//Upper the first letter for each word
		.isUpper
		.toUpperCase
		.isLower
		.toLowerCase
		.distinct	//no duplicate(keep the first one)
		.count(<p: (char) => Boolean>)	//count the number of elements which satisfy a predicate
		.exists(<p: (char) => Boolean>)	//whether at least one element satisfying a predicate
		.contains(<searching>)	//true if contains the searching char/string
		.containsSlice(<sequence>)	//true if contains the searching sequence(order matters)
		.indexOf(<searching>)	//the first index(start with 0) of searching schar/tring or -1 if not found
		.repalce(<original>,<target>)	//replace all orginal char/string by target char/string
		.split(<seperator>)	//split by seperator char/string/regex
		.trim 	//remove start and end space
		.drop(<n>)	//Selects all elements except last n ones
		.take(<n>)	//Selects first n elements
		.takeRight(<n>)	//Select last n elements
		```
			+ Format
			```scala
			"%<specifier>".format(content) in order
			"%<position>$<specifier>".format(content)
			<s,f,raw>"$<{content}>%<specifier>"
			```
				* specifier
				```scala
				%c 	//Character
	      		%d  //Decimal number (integer, base 10)
	      		%e  //Exponential floating-point number
	      		%f  //Floating-point number
	      		%i  //Integer (base 10)
	      		%o  //Octal number (base 8)
	      		%s  //A string of characters
	      		%u  //Unsigned decimal (integer) number
	      		%x  //Hexadecimal number (base 16)
	      		%%  //Print a “percent” character
	      		\%  //Print a “percent” character
	      		```
		- [RichInt](https://www.scala-lang.org/api/2.12.3/scala/runtime/RichInt.html)/[BigInt](https://www.scala-lang.org/api/current/scala/math/BigInt.html)/[Long](https://www.scala-lang.org/api/2.12.3/scala/Long.html)/[Int](https://www.scala-lang.org/api/2.12.3/scala/Int.html)/[Short](https://www.scala-lang.org/api/2.12.3/scala/Short.html)/[Byte](https://www.scala-lang.org/api/2.12.3/scala/Byte.html)
		```scala
		.util(end = <up_to_but_not_including>, step=1)
		.to(end = <including>, step=1)
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
	
* Import&call&apply
	- Import
	```scala
	import <package_name>.{<method_name_with_comma>}
	import <package_name>._ //all
	```
	- Call a function
	```scala
	<object>.<function> //no parameter
	<object>.<function>(<parameters>)
	``` 
	- apply
	```
	(<object>)(<key>)
	<object>.apply(<key>)
	```

* Packages
	- math
	```scala
	import scala.math._
	E 	//e=2.718281828459045
	Pi 	//pi=3.141592653589793
	rint(<input>:Double): Double	//return a cloasest integer in Double
	pow(<base>:Double, <exponent>)	//return base ** exponent
	log(<value>)	//return log_e(value)
	log10(<value>)	//return log_10(value)
	acos(<value>), asin(<value>),atan(<value>)	//arccos, arcsin, arctan
	cos(<value>), sin(<value>), tan(<value>)	//cos, sin, tan
	cosh(<value>), sinh(<value>), tanh(<value>)	//cosh, sinh, tanh
	cbrt(<value>), sqrt(<value>)	//cube, square root
	random	//random positive double from [0, 1]
	```