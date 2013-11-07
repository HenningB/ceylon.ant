import ceylon.test {
    createTestRunner, SimpleLoggingListener
}

"Run the module `test.ceylon.ant`."
shared void run() {
    createTestRunner([`module test.ceylon.ant`], [SimpleLoggingListener()]).run();
}
