var message = argument[0];
var passed = argument[1];

var outputInstance = asset_get_index("oUnitTests");

if (outputInstance != -1)
{
	with (outputInstance)
	{
		var index = testResultsCount;
		testResults[index,0] = message;
		testResults[index,1] = passed;
		testResultsCount++;
	}
}
else
{
	// If no object exists, print to console
	if (passed)
	{
		show_debug_message("PASSED: " + message);
	}
	else
	{
		show_debug_message("FAILED: " + message);
	}
}