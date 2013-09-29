package ceylon.ant.internal;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Vector;

import org.apache.tools.ant.BuildLogger;
import org.apache.tools.ant.DefaultLogger;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.ProjectHelper;
import org.apache.tools.ant.ProjectHelperRepository;
import org.apache.tools.ant.types.resources.StringResource;

public class ProjectCreator {

    private final static String MINIMAL_BUILD_FILE = "<project default=\"main\" basedir=\".\"><target name=\"main\"><echo message=\"Hello world!\"/></target></project>";

    public static Project createProject() {
        try {
            // first simulate project
            Project project = new Project();
            project.fireBuildStarted();
            // do what ProjectHelper.configureProject(project, new File("build.xml")); does
            StringResource stringResource = new StringResource(project, MINIMAL_BUILD_FILE);
            URL url = new URL( null, "byte:bytes", new BytesURLStreamHandler(MINIMAL_BUILD_FILE.getBytes()));
            ProjectHelper helper = ProjectHelperRepository.getInstance().getProjectHelperForBuildFile(stringResource);
            project.addReference(ProjectHelper.PROJECTHELPER_REFERENCE, helper);
            helper.parse(project, url);
            // execute main with echo task, so that tasks get known to Ant
            Vector<String> targets = new Vector<>();
            targets.add("main");
            project.executeTargets(targets);
            // set logger
            project.addBuildListener(createLogger());
            return project;
        } catch (MalformedURLException e) {
            throw new RuntimeException("Cannot handle internal URL.", e);
        }
    }

    private static BuildLogger createLogger() {
        BuildLogger logger = new DefaultLogger();
        logger.setMessageOutputLevel(Project.MSG_INFO);
        logger.setOutputPrintStream(System.out);
        logger.setErrorPrintStream(System.err);
        return logger;
    }

}
