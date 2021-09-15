


public class Main {
	public static void main(String[] args) {
	    
	    String message = "Welcome to my first Java program";
	    String [] m = message.split(" ");
	    for (int i =0; i<m.length; i+=2) 
		System.out.print(m[i]+" ");
		
		message = message.toLowerCase();

		message=message.replaceAll("([a,e,o,u,i])", "");
		
		System.out.print("\n"+message);
		
		
	}
}
