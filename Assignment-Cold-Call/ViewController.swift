//
//  ViewController.swift
//  randomname
//
//  Created by administrator on 29/09/2021.
//

import UIKit

class ViewController: UIViewController {
 var names: [String] = ["Rahaf","kiven","Danny","Ashish"]//....
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBOutlet weak var place: UILabel!
    @IBAction func boutton(_ sender: Any) {
        place.text = names[Int.random(in: 0..<4)]
        
    }
}

