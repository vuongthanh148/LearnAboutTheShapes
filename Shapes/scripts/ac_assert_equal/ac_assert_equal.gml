/// @description Test that a condition equals an expected value.  The result is printed to the test output area.
/// @param          expected    the expected value
/// @param          actual      the actual value
/// @param {string} description OPTIONAL: test description
/// @return true if values are equal, false otherwise
var expected = argument[0];
var actual = argument[1];
var description = "";
if (argument_count > 2)
	description = argument[2];

var message;
var passed;

if (expected == actual)
{
	message = description;
	passed = true;
}
else
{
	message = description + " expected: " + string(expected) + " got: " + string(actual);
	passed = false;
}

_ac_add_test_result(message, passed);

return passed;