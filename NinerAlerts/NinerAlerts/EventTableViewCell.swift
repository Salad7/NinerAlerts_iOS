//
//  EventTableViewCell.swift
//  NinerAlerts
//
//  Created by cci-loaner on 1/26/18.
//  Copyright © 2018 cci-loaner. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var detail: UITextView!
    @IBOutlet weak var location: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
