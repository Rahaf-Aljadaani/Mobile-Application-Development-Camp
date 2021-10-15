//
//  ViewController.swift
//  dolist
//
//  Created by administrator on 15/10/2021.
//

import UIKit
import CoreData
class ViewController: UIViewController , UITableViewDataSource{
  
    @IBOutlet weak var tabelView: UITableView!
    var items : [Database] = []
    
    
    //page 2
    
    @IBOutlet weak var tiatel: UITextField!
    @IBOutlet weak var details: UITextField!
    @IBOutlet weak var dateInfo: UIDatePicker!
    
    @IBOutlet weak var labeltext: UILabel!
    
    //,,,,,,,,,
    
    override func viewDidLoad() {
        super.viewDidLoad()

      tabelView.dataSource = self
        readItem();

        
    
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
   // Do any additional setup after loading the view.
   view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    //MARK:- table view staff
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count  // returning the number  of elements in  data array
    }

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! castomCell
    let task = items[indexPath.row] as! Database
    cell.upText.text = task.tital
    cell.rightText.text = task.text
  //  cell.dateLibel.text = items[indexPath.row].date as! String
      return cell
  }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .none
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark

        }
    }
    //MARK:-
    
    @IBAction func addItems(_ sender: Any) {
        if let x = tiatel.text{
            creatItem(name: x)
        }
    }
  
    
    // MARK: - coreData part
 
    func getContext () -> NSManagedObjectContext? {
        let delegat = UIApplication.shared.delegate as! AppDelegate
        return delegat.persistentContainer.viewContext
    }
    
    
    func creatItem (name: String){
        guard let context = getContext() else {
                   return
               }
               
               // Add age values for given name
               // Just to have an entity with multiple attributes
               let item = Database.init(context: context)
               item.tital = name
     //   item.date = name
        item.text = name
               
               do {
                   try context.save()
                   print("Save successful")
                   items.append(item)
     
                    tabelView.reloadData()
               } catch {
                   print("Save Error: \(error)")
               }
        /*
        let context = getContext()
        let item = Database.init(context: context)
        item.text = name
        do {
            try context.save()
            
        } catch {
            print(error)
        }*/
    }
    /*  func updateItem (newName: String){
        
       let context  = getContext()
        let requast = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Database")
        do{
            let resalt = try context.fetch(requast)
            let item = resalt as! Database
         //   item.name = newName
            try context.save()
        }
        catch{
            
            print(error)
        }
    }*/
    
    func readItem (){
        
        guard let context =  getContext() else {
             return
         }
         
         let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Database")
         do {
             let result = try context.fetch(request)
            items = result as! [Database]
                tabelView.reloadData()
         } catch {
             print("Read Error:\(error)")
         }
        
    }
    
  /*  func deletItem (){
        let context  = getContext()
        let requast = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Database")
        do{
            let resalt = try context.fetch(requast)
            let item = resalt as! Database
        //    item.name = ""
            
        }
        catch{
            print(error)
        }
        func readAllData(){
            do {
                let itemList = try context.fetch(Database.fetchRequest())
            }
            catch {
                print("Error")
            }
        }
    }*/
    
}

