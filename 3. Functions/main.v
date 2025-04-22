fn main() {
	say_hello()
	say_hello_to("Nick")

	// you can store the value in a var if you want
	a := sum(10, 5)
	println(a)

	// get multiple values from a function
	b, c := sum_v2(10, 5)
	println(b)
	println(c)

	// to ignore a value returned by a function, use _

	d, _ := sum_v2(9, 10)

	println(d)
	// println(_) NOTE that this won't work because _ is used to discard the value and is not a variable
}

// simple function
fn say_hello() {
	println("Hello!")
}

// parameters
fn say_hello_to(name string) {
	println("Hello, $name!")
}

// seems like v does not support default function parameter values

// returns an integer
fn sum(x int, y int) int {
	return x + y
}

// seems like v does not have function overloading
// (x, y int) has been deprecated, so all parameters
// requires you to specify a type

// return multiple values
fn sum_v2(x int, y int) (int, string) {
	return x+y, "Calculated"
}