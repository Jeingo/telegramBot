import Test.HUnit

main :: IO ()
main = runTestTTAndExit test1 

test1 = TestCase $ assertEqual "Test equality" 3 (2 + 1)
