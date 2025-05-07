fn main() {
	hello := 'Hello World'
	println(hello.len) // get string length

	str_to_bytes := hello.bytes()
	println(str_to_bytes) // convert string to bytes

	bytes_to_str := str_to_bytes.bytestr()
	println(bytes_to_str) // convert bytes to string

	println(hello[0]) // will return the letter at that index (in BYTES not as a string)
	println(hello[0].ascii_str()) // gives you the string version

	println(hello[6..11]) // slice and get a part of a string (gives a string not bytes)

	println("Strings\\can\ncontain special \"characters\'")
	println(r'Strings\\can\ncontain special \"characters') // use r AND SINGLE QUOTES to not escape escape characters

	// you can specify unicode characters with \u
	star_str := '\u2605' // ★
	// note they will be accepted as their string counterparts
	println(star_str == '★') // true
	
	number := "59"

	// convert string to int
	age := number.int()
	println(age)

	// int to string with .str()
	// this is a basic way to concatenate strings
	add := hello + "! I am " + age.str() + " years old"
	println(add)

	// can easily do string interpolation with ${}
	story := "${hello}! I am ${age} years old!"
	println("This is my story: ${story}")

	// todo may want to include https://docs.vlang.io/v-types.html#string-interpolation int tutorial
}