//
//  Test01Cell.swift
//  STTestDemo
//
//  Created by IMAC on 2020/7/6.
//  Copyright © 2020 SmellTime. All rights reserved.
//

import UIKit

class Test01Cell: UITableViewCell {
    @IBOutlet weak var aLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("初始化cell: \(self)")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
