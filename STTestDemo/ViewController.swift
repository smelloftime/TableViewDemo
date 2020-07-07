//
//  ViewController.swift
//  STTestDemo
//
//  Created by IMAC on 2020/6/13.
//  Copyright © 2020 SmellTime. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func xibBtnClick(_ sender: Any) {
        let vc = Test02VC()
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func codeBtnClick(_ sender: Any) {
        let vc = Test01VC()
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func xibTableviewControllerBtnClick(_ sender: Any) {
        let vc = TestTableViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

class STCellTool: NSObject {
    
    override init() {
        super.init()
        
    }
}
