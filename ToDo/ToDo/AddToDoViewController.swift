//
//  AddToDoViewController.swift
//  ToDo
//
//  Created by 石澤大輔 on 2020/09/26.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    決定ボタンの
    @IBAction func pushDecideButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
