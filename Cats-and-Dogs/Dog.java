
package dogandcat;


public class Dog {
    int age;
    String name;
    
      public Dog(String name,int age){
        this.age=age;
        this.name=name;
    }
    
    public void bark (){
        System.out.println(name+": Woof ");
    }
}
