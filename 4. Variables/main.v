fn main() {
	// variables are declared with :=
	name := "Jack"
	// they also auto assign data types
	age := 20
	// recommended casing is snake_case
	is_registered_user := false;

	println(name)
	println(age)
	println(is_registered_user)

	// NOTE variables are CONSTANT by default (yay), to make them mutable you do
	mut power_level := 9000
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
