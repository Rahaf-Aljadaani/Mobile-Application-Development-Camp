//Mine class
public class DelegationDemonstration {
    public static void main(String[] args){
        //Objects of Workers from outside the company
        SwiftDeveloper switDev = new SwiftDeveloper();
        UXDesigner designer = new UXDesigner();
        KotlinDeveloper kotlinDev = new KotlinDeveloper();
        //Objects of Workers from inside the company
        Employee james = new Employee(switDev,designer);
        Employee Rahaf = new Employee(kotlinDev,designer);
        //print there sentence
        james.writeCode();
        james.design();
        Rahaf.writeCode();
        Rahaf.design();
    }
}

//interface classes 
interface WhoCanCode {
    void writeCode();
}
interface WhoCanDesign {
    void design();
}

//Employee class that will be used as importent class
class Employee implements WhoCanCode, WhoCanDesign {
    WhoCanCode developer;
    WhoCanDesign designer;
    public Employee(WhoCanCode developer, WhoCanDesign designer){
        this.developer = developer;
        this.designer = designer;
    }
    @Override
    public void writeCode() {
        developer.writeCode();
    }
    @Override
    public void design() {
        designer.design();
    }
}

// classes of who will be work as part of our Employee class 
class SwiftDeveloper implements WhoCanCode {
    @Override
    public void writeCode() {
        System.out.println("I'm writing Swift Code");
    }
}

class UXDesigner implements  WhoCanDesign {
    @Override
    public void design() {
        System.out.println("I'm designing UX");
    }
}

class KotlinDeveloper  implements WhoCanCode{
    @Override
    public void writeCode() {
        System.out.println("I'm writing Kotlin Code");
    }
}
