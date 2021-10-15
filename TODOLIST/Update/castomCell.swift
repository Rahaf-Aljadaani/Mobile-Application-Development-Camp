//
//  castomCell.swift
//  dolist
//
//  Created by administrator on 15/10/2021.
//

import UIKit

class castomCell: UITableViewCell {

    @IBOutlet weak var upText: UILabel!
    @IBOutlet weak var rightText: UILabel!
    @IBOutlet weak var dateLibel: UILabel!
    
    override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
       }

       override func setSelected(_ selected: Bool, animated: Bool) {
           super.setSelected(selected, animated: animated)

           // Configure the view for the selected state
       }
}
