//
//  ToDoViewController.swift
//  ToDo
//
//  Created by 石澤大輔 on 2020/09/21.
//

import UIKit

class ToDoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var toDoItem: UITableView!
    var addToDoItem: UIBarButtonItem!
    
    let ToDo = ["洗濯", "炊事", "課題"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "ToDo"
        self.view.backgroundColor = UIColor(hex: "F5F5F5")
        
//      delegateとdataSourceをViewに紐付け
        toDoItem.dataSource = self
        toDoItem.delegate = self
        
//      NavigationBarにボタン追加
        addToDoItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(segueAddToDoItemController))
        self.navigationItem.rightBarButtonItem = addToDoItem
    }
    
    
//    セルの数を取得
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return ToDo.count
    }
//    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let toDoCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "toDoCell", for: indexPath)

        toDoCell.textLabel!.text = ToDo[indexPath.row]
        return toDoCell
    }
    
    
    
    @objc func segueAddToDoItemController() {
        self.performSegue(withIdentifier: "toAddItem", sender: self)
    }
    
}

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let v = Int("000000" + hex, radix: 16) ?? 0
        let r = CGFloat(v / Int(powf(256, 2)) % 256) / 255
        let g = CGFloat(v / Int(powf(256, 1)) % 256) / 255
        let b = CGFloat(v / Int(powf(256, 0)) % 256) / 255
        self.init(red: r, green: g, blue: b, alpha: min(max(alpha, 0), 1))
    }
}
