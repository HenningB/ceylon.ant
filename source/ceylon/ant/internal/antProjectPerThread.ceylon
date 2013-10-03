import java.lang { ThreadLocal }
import ceylon.ant { AntProject }

ThreadLocal<AntProject> threadLocalAntProject = ThreadLocal<AntProject>();

AntProject createAntProject(String? baseDirectory) {
    return AntProject(baseDirectory);
}

shared AntProject provideAntProject() {
    AntProject? storedAntProject = threadLocalAntProject.get();
    if(exists storedAntProject) {
        return storedAntProject;
    } else {
        AntProject newAntProject = createAntProject(null);
        setAntProject(newAntProject);
        return newAntProject;
    }
}

shared void setAntProject(AntProject antProject) {
    threadLocalAntProject.set(antProject);
}

shared AntProject purgeAntProject(String? baseDirectory) {
    AntProject newAntProject = createAntProject(baseDirectory);
    threadLocalAntProject.set(newAntProject);
    return threadLocalAntProject.get();
}
