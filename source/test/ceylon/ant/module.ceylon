"Tests the module `ceylon.ant`."
by ("Henning Burdack")
license ("http://www.apache.org/licenses/LICENSE-2.0.html")
module test.ceylon.ant "0.2.0" {
    shared import ceylon.ant "0.2.0";
    shared import ceylon.file "0.6.1";
    import ceylon.test "0.6.1";
    // for testing external dependency (ftp task)
    import 'org.apache.ant.ant-commons-net' "1.9.2"; 
}
