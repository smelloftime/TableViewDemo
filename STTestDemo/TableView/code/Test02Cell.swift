//
//  Test02Cell.swift
//  STTestDemo
//
//  Created by IMAC on 2020/7/6.
//  Copyright © 2020 SmellTime. All rights reserved.
//

import UIKit

class Test02Cell: UITableViewCell {
    var aLabel = UILabel(frame: CGRect(x: 15, y: 10, width: 300, height: 20))
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(aLabel)
        print("cell初始化:reuseIdentifier \(reuseIdentifier ?? "没有配置")")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
