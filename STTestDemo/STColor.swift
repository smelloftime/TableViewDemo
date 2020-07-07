//
//  STColor.swift
//  STTestDemo
//
//  Created by IMAC on 2020/6/13.
//  Copyright © 2020 SmellTime. All rights reserved.
//

import UIKit

class STColor: UIColor {
    @objc class var W1: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor { (aCollection) -> UIColor in
                if aCollection.userInterfaceStyle == .dark {
                    return .white
                } else {
                    return .blue
                }
            }
        } else {
            return .blue
        }
    }
}
