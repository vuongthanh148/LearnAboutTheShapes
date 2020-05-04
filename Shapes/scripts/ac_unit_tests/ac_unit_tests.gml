// Place Unit Tests Here
// Functions Available:
//    ac_assert_true(test, description);
//    ac_assert_false(test, description);
//    ac_assert_equal(expected, actual, description);

// Example Unit Tests

repeat(10)
{
	ac_assert_true(true, "true = true");
	ac_assert_true(false, "false = true");
	ac_assert_false(true, "true = false");
	ac_assert_false(false, "false = false");
	ac_assert_equal(false, true, "Does " + string(false) + " = " + string(true));
	ac_assert_equal(true, true, "1=true, 2=true");
	ac_assert_equal(2+1, 4, "2 + 1 = 4");
	ac_assert_equal(2+1, 3, "2 + 1 = 3");
	ac_assert_equal(3*3, 9, "3 x 3 = 9");
    ac_assert_equal(false, true, "description");
}