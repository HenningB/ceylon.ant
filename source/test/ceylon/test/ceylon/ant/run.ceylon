import ceylon.test { ... }

"Run the module `test.ceylon.ant`."
void run() {
    TestRunner testRunner = TestRunner();
    testRunner.addTestListener(PrintingTestListener());
    testRunner.addTest("test.ceylon.ant::testEcho", testEcho);
    testRunner.addTest("test.ceylon.ant::testFileTasks", testFileTasks);
    testRunner.run();
}
