import java.util.*;   

//Main class
class Main {
    public static void main(String[] args){
 
      String text, 
      reverse = "";  
      Scanner input = new Scanner(System.in);   
      
      System.out.println("Enter the String for check:"); 
      
      text = input.nextLine();   
        
      for ( int i = text.length() - 1; i >= 0; i-- )  
         reverse = reverse + text.charAt(i);  
         
      if (text.equals(reverse))  
         System.out.println(text +" is a palindrome");  
      else  
         System.out.println(text +" is not a palindrome");   
   }  
}
