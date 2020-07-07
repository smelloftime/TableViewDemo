//
//  TestTableViewController.swift
//  STTestDemo
//
//  Created by IMAC on 2020/7/7.
//  Copyright © 2020 SmellTime. All rights reserved.
//

import UIKit
var datas = [String]()

class TestTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "xib 初始化UITableViewController"

        for index in 0 ..< 50 {
            datas.append("index \(index)")
        }
        tableView.rowHeight = 100

        tableView.register(UINib(nibName: "Test01Cell", bundle: nil), forCellReuseIdentifier: "Test01CellReuseIdentifier")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Test01CellReuseIdentifier", for: indexPath) as! Test01Cell
        cell.aLabel.text = datas[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        print("将要显示 indexPath.row = \(indexPath.row)")
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tableview \(tableView)")
    }
}
