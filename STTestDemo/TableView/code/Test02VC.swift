//
//  Test02VC.swift
//  STTestDemo
//
//  Created by IMAC on 2020/7/6.
//  Copyright © 2020 SmellTime. All rights reserved.
//  tableview使用代码 初始化的cell

import UIKit

class Test02VC: UIViewController {
    let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight), style: .plain)
    var datas = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "tableview使用代码 初始化的cell"

        for index in 0 ..< 50 {
            datas.append("index \(index)")
        }
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(Test02Cell.self, forCellReuseIdentifier: "Test02CellReuseIdentifier")

        tableView.rowHeight = 100
        view.addSubview(tableView)
    }
}

extension Test02VC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        datas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Test02CellReuseIdentifier") as? Test02Cell
        if cell == nil {
            cell = Test02Cell.init(style: .default, reuseIdentifier: "Test02CellReuseIdentifier")
        }
        cell!.aLabel.text = datas[indexPath.row]
        return cell!
    }


    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        print("将要显示 indexPath.row = \(indexPath.row)")
    }
}
