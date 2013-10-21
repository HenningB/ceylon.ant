"Enables you to write Apache Ant scripts in Ceylon.
 
 It facilitates the use of Ant-types, Ant-tasks and Ant-processes (processes still to do) being used within Ceylon.
 It is not intended to imitate Ant's `target` mechanism.
 Use the Ceylon based build tool [ceylon.build](https://github.com/loicrouchon/ceylon.build) for building with goals/targets.
 
 Can be used as a batch processor."
by ("Henning Burdack")
license ("http://www.apache.org/licenses/LICENSE-2.0.html")
module ceylon.ant "0.2.0"{
    shared import ceylon.collection "0.6.1";
    import java.base "7";
    import org.apache.ant.ant "1.9.2";
}
