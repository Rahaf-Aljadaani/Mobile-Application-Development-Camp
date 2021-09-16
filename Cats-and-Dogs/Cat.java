
package dogandcat;


public class Cat {
     int age;
    String name;
    
    public Cat(String name,int age){
        this.age=age;
        this.name=name;
    }
    public void meow  (){
        System.out.println(name+": Meow ");
    }  
}
