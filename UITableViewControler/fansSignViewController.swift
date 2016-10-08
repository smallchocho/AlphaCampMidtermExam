//
//  fansSignViewController.swift
//  UITableViewControler
//
//  Created by Justin Huang on 2016/10/7.
//  Copyright © 2016年 Justin Huang. All rights reserved.
//

import UIKit

class fansSignViewController: UIViewController {
    

    @IBOutlet weak var fansSighTextField: UITextField!
    @IBOutlet weak var fansSighTextView: UITextView!
    @IBOutlet weak var errorNotice: UILabel!
    var signCount = 0
    @IBAction func updateSign(_ sender: UIButton) {
        if var fansSign = fansSighTextField.text,fansSighTextField.text != "" {
            if signCount == 0{
                errorNotice.text = ""
                fansSighTextView.text = fansSign + "\n"
                fansSighTextField.text = ""
                signCount = signCount + 1
                print("signCount:\(signCount)")
            }else if signCount < 3{
                errorNotice.text = ""
                fansSign = fansSign + "\n"
                fansSighTextView.text = fansSighTextView.text! + fansSign
                fansSighTextField.text = ""
                signCount = signCount + 1
                print("signCount:\(signCount)")
            }else if signCount >= 3{
                errorNotice.text = "不可輸入超過三次"
            }

        }else{
            errorNotice.text = "不可輸入空白或不輸入"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
