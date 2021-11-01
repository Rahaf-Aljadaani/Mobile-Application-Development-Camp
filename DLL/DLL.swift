import Foundation

 public class DLNode {
    public var value: Int = 0
    public var next: DLNode?
    public var prev: DLNode?
    
    
    public init(_ value: Int, next: DLNode?, prev: DLNode?) {
        self.value = value
        self.next = next
        self.prev = prev
    }
}

public class DLList {
    public private(set) var head: DLNode?
    public private(set) var tail: DLNode?
    public private(set) var count: Int = 0
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public init(_ value: Int) {
        if let value = value {
            head = DLNode(value)
            tail = head
            count += 1
        }
    }
}


extension DLList {
    

    public func append(_ value: Int) {
    
     let newNode = DLNode(value, next: nil, prev: tail)
        if isEmpty {
        head?.prev = newNode
        head = newNode
            count += 1
            return
        }
       
        tail?.next = newNode
        //tail = newNode
        count += 1
    }

///////////////////////////////////////////////////

    
        public func traverse() -> [Int] {
        guard !isEmpty else { return [] }
        
        var temp = head
        var result: [Int] = []
        
        while let value = temp?.value {
            result.append(value)
            
            temp = temp?.next
        }
        
        return result
    }

///////////////////////////////////////////////////

    
        public func traverseBackwards() -> [Int] {
        guard !isEmpty else { return [] }
        
        var temp = tail
        var result: [Int] = []
        
        while let value = temp?.value {
            result.append(value)
            
            temp = temp?.prev
        }
        
        return result
    }

///////////////////////////////////////////////////

    
    public func pop() -> Int? {
        guard !isEmpty else { return nil }
        
        let temp = head
        head = temp?.next
        count -= 1
        
        if tail === temp {
            tail = nil
        }
        
        return temp?.value
    }
 

///////////////////////////////////////////////////

 
  public func shift()  {
        guard !isEmpty else { print("Empty");return  }
        
        var temp = head
        
        head = head?.next
        head?.next.prev = nil
      
       append(temp.value)
       
    }

///////////////////////////////////////////////////

   public func contains(_key:String) -> Bool {
        guard !isEmpty else { return false }
        
        var current = head
       
        
        while let value = temp?.value {
            if(value == key){
                return true
            }
            
            temp = temp?.next
        }
        
        return false
    }
    
 
 public func size() -> Int{
        var count_nodes : Int = 0
           while let value = temp?.value {
          count_nodes += 1
            
            temp = temp?.next
        }
        return count_nodes
    }
    
  

}
