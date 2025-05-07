fn main() {
	// variables are declared with :=
	name := "Jack" // string
	example := string("Here") // you can specify the data type when declaring a variable
	// they also auto assign data types
	age := 20
	example2 := int(30) // note that int is 32 bit by default use i64 for 64bit
	pi := 3.14159 // by default a 64bit float use f32 for 32bit
	// recommended casing is snake_case
	is_registered_user := false
	last_resort := any("")

	println(name)
	println(age)
	println(pi)
	println(is_registered_user)
	println(last_resort)
	// NOTE variables are CONSTANT by default (yay), to make them mutable you do
	mut power_level := 9001
	println(power_level)

	// now you can edit it, NOTE we use = to reassign it and not :=
	power_level = 9001
	println(power_level)

	mut weight := 80
	println(weight)

	// you can change multiple variables on one line
	power_level, weight = weight, power_level
	println(power_level)
	println(weight)

	{
		// this will cause an error because variable shadowing is not allowed, meaning in child scopes
		// you cannot declare a new variable that already exists in a parent scope
		// age := 30
		// you can however still access the parent variable as normal
		println(age)
	}
}
