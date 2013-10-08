import ceylon.test { ... }

"Run the module `test.ceylon.ant`."
void run() {
    TestRunner testRunner = TestRunner();
    testRunner.addTestListener(PrintingTestListener());
    testRunner.addTest("test.ceylon.ant::testEcho", testEcho);
    testRunner.addTest("test.ceylon.ant::testFileTasks", testFileTasks);
    testRunner.addTest("test.ceylon.ant::testAntDefinitions", testAntDefinitions);
    testRunner.addTest("test.ceylon.ant::testAntDefinition", testAntDefinition);
    testRunner.addTest("test.ceylon.ant::testPropeties", testProperties);
    testRunner.addTest("test.ceylon.ant::testProperty", testProperty);
    testRunner.addTest("test.ceylon.ant::testExternalDependency", testExternalDependency);
    testRunner.addTest("test.ceylon.ant::testIncludeAsTaskAndTask", testIncludeAsTaskAndTask);
    testRunner.run();
}
