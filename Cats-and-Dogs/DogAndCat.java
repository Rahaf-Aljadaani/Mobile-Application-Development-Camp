
package dogandcat;

import java.util.Random;


public class DogAndCat {
//Rahaf Aljadani
   
    public static void main(String[] args) {
       Random x = new Random();
       Cat cats[] = new Cat[5];
       cats[0] = new Cat("Lili",x.nextInt(10));
       cats[1] = new Cat("Patchy",x.nextInt(10));
       cats[2] = new Cat("Furball",x.nextInt(10));
       cats[3] = new Cat("Snowball",x.nextInt(10));
       cats[4] = new Cat("tom",x.nextInt(10));
       
       Dog dogs[] = new Dog[5];
       dogs[0] = new Dog ("Rufus",x.nextInt(10));
       dogs[1] = new Dog ("Fred",x.nextInt(10));
       dogs[2] = new Dog ("Spot",x.nextInt(10));
       dogs[3] = new Dog ("Ruf",x.nextInt(10));
       dogs[4] = new Dog ("xxx",x.nextInt(10));
       
       
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                if(cats[i].age > dogs[j].age)
                 cats[i].meow(); 
                else
                   dogs[j].bark();
            }
                    
        }

    }
    
}
