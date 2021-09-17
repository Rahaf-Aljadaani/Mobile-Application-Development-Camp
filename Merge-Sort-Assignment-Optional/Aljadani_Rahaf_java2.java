//Main class
class Main {
    public static void main(String[] args){
    int array []= {1,4,6,3,5,8};
      System.out.println("Array befor sort "); 
      
      for ( int i = 0 ; i < array.length; i++ )  
         System.out.print(array[i]+" "); 
         
        mergeSort(array , array.length);
        
       System.out.println("\nArray after sort "); 
         for ( int i = 0 ; i < array.length; i++ )  
         System.out.print(array[i]+" "); 
   }  


public static void mergeSort(int[] a, int n) {
    if (n < 2) {
        return;
    }
    int mid = n / 2;
    int[] l = new int[mid];
    int[] r = new int[n - mid];

    for (int i = 0; i < mid; i++) {
        l[i] = a[i];
    }
    for (int i = mid; i < n; i++) {
        r[i - mid] = a[i];
    }
    mergeSort(l, mid);
    mergeSort(r, n - mid);

    merge(a, l, r, mid, n - mid);
}

public static void merge( int[] a, int[] l, int[] r, int left, int right) {
 
    int i = 0, j = 0, k = 0;
    while (i < left && j < right) {
        if (l[i] <= r[j]) {
            a[k++] = l[i++];
        }
        else {
            a[k++] = r[j++];
        }
    }
    while (i < left) {
        a[k++] = l[i++];
    }
    while (j < right) {
        a[k++] = r[j++];
    }
}
  }