"""
   This module is imported by `ceylon.ant` for providing additional Ant tasks.
   Replace it with own collection of required Java libraries.  
"""
module additional.ceylon.ant "unversioned" {
    """For testing external dependency (ftp task)."""
    shared import "org.apache.ant.ant-commons-net" "1.9.2"; 
}
