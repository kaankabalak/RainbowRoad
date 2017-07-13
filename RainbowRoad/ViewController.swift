//
//  ViewController.swift
//  RainbowRoad
//
//  Created by Kaan Kabalak on 7/7/17.
//  Copyright © 2017 Kaan Kabalak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var colors = [UIColor.red, UIColor.orange, UIColor.yellow,
                  UIColor.green, UIColor.blue, UIColor.purple]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.rowHeight = 120
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
}
