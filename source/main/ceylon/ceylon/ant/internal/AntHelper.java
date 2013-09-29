package ceylon.ant.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.tools.ant.AntTypeDefinition;
import org.apache.tools.ant.ComponentHelper;
import org.apache.tools.ant.IntrospectionHelper;
import org.apache.tools.ant.IntrospectionHelper.Creator;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.Task;
import org.apache.tools.ant.types.DataType;

public class AntHelper {

    private static final ThreadLocal<Project> threadLocalProject;
        
    protected String antName;
    private Project project;
    private Object instantiatedType;
    private IntrospectionHelper introspectionHelper;
    private List<AntHelper> appliedElements = new ArrayList<AntHelper>();
    private Map<String, Object> appliedAttributeMap = new HashMap<String, Object>();
    private String appliedText;
    
    static {
    	threadLocalProject = new ThreadLocal<Project>() {
            @Override
            protected Project initialValue() {
                return createProject();
            }
        };
    }
    
    public static Project createProject() {
        return ProjectCreator.createProject();
    }

    public static Project provideProject() {
        return threadLocalProject.get();
    }
    
    public static Project purgeProject() {
        threadLocalProject.set(createProject());
        return threadLocalProject.get();
    }
    
    public AntHelper() {
    }
    
    public AntHelper(String antName) {
        this.antName= antName;
        project = provideProject();
        ComponentHelper componentHelper = ComponentHelper.getComponentHelper(project);
        AntTypeDefinition antTypeDefinition = componentHelper.getDefinition(antName);
        instantiatedType = antTypeDefinition.create(project);
        introspectionHelper = IntrospectionHelper.getHelper(project, instantiatedType.getClass());
    }
    
    private AntHelper(String nestedElementName, Project project, Object instantiatedType) {
        this.antName= nestedElementName;
        this.project = project;
        this.instantiatedType = instantiatedType;
        introspectionHelper = IntrospectionHelper.getHelper(project, instantiatedType.getClass());
    }
    
    public void attribute(String name, Object value) {
        introspectionHelper.setAttribute(project, instantiatedType, name, value);
        appliedAttributeMap.put(name, value);
    }
    
    public void element(AntHelper element) {
        introspectionHelper.storeElement(project, instantiatedType, element.instantiatedType, element.antName);
        appliedElements.add(element);
    }
    
    public void setText(String text) {
        introspectionHelper.addText(project, instantiatedType, text);
        appliedText = text;
    }
    
    public Map<String, Class<?>> getAttributeMap() {
        Map<String, Class<?>> attributeMap = introspectionHelper.getAttributeMap();
        return attributeMap;
    }
    
    public Map<String, Class<?>> getElementMap () {
        Map<String, Class<?>> nestedElementMap = introspectionHelper.getNestedElementMap();
        return nestedElementMap;
    }
    
    public AntHelper createNestedElement(String nestedElementName) {
        Creator creator = introspectionHelper.getElementCreator(project, "", instantiatedType, nestedElementName, null);
        Object object = creator.create();
        AntHelper antHelper = new AntHelper(nestedElementName, project, object);
        return antHelper;
    }
    
    public String getAntName() {
        return antName;
    }
    
    public boolean isTask() {
        return instantiatedType instanceof Task;
    }
    
    public boolean isDataType() {
        return instantiatedType instanceof DataType;
    }
    
    public boolean isDynamic() {
        return introspectionHelper.isDynamic();
    }
    
    public boolean isContainer() {
        return introspectionHelper.isContainer();
    }
    
    public Object getInstantiatedType() {
        return instantiatedType;
    }
    
    public String getBaseDirectory() {
    	Project project = provideProject();
    	return project.getBaseDir().getAbsolutePath();
    }
    
    public void execute() {
        if(isTask()) {
            Task task = (Task) instantiatedType;
            task.execute();
        } else {
            throw new AntHelperException("Ant type " + antName + " is not an executable task.");
        }
    }
    
    public String toString() {
        String result = "<" + antName;
        List<String> attributeNames = new ArrayList<String>(appliedAttributeMap.keySet());
        Collections.sort(attributeNames);
        for(String attributeName : attributeNames) {
            Object attributeValue = appliedAttributeMap.get(attributeName);
            result += " " + attributeName + "=\"" + attributeValue + "\"";
        }
        if(appliedText != null || appliedElements.size() > 0) {
            result += ">";
        }
        for(AntHelper subElement : appliedElements) {
            result += subElement.toString();
        }
        if(appliedText != null) {
            result += appliedText + "</" + antName + ">";
        } else if (appliedElements.size() > 0) {
            result += "</" + antName + ">";
        } else {
            result += "/>";
        }
        return result;
    }
    
}

