/// @description Test that a condition is true.  The result is printed to the test output area.
/// @param {bool}   condition the condition to test
/// @param {string} description OPTIONAL: test description
/// @return true if condition is true, false otherwise
var condition = argument[0];
var description = "";
if (argument_count > 1)
	description = argument[1];

var message;
var passed;

if (condition)
{
	message = description;
	passed = true;
}
else
{
	message = description;
	passed = false;
}

_ac_add_test_result(message, passed);

return passed;