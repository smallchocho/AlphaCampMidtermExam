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
    @IBOutlet weak var fansSignButton: UIButton!
    
    @IBOutlet weak var fansSignLabel: UILabel!
    @IBOutlet weak var errorNotice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
