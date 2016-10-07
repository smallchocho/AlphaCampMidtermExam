//
//  RestarantTableViewController.swift
//  UITableViewControler
//
//  Created by Justin Huang on 2016/9/22.
//  Copyright © 2016年 Justin Huang. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurant.count
    }

    //依照提供的indexPath來賦予一個cell，這邊決定你的cell的大部分資訊
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantTableViewCell  //抓取閒置不用的cell放置到IndexPath位置上
        cell.nameLabel.text = restaurant[indexPath.row].restaurantName //提供值給nameLabel物件
        cell.thumbnailImageView.image = UIImage(named:"\(restaurant[indexPath.row].restaurantImage)")//提供圖片給thumbnailImageView物件
        cell.typeLabel.text = restaurant[indexPath.row].restaurantType

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    //設一個prepare函數來傳遞資訊給下一個View使用，
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //條件限定只有segue.identifier == "showRestaurantDetail"才能把資訊放入seque中
        if segue.identifier == "showMovieDetail"{
            //由tableView.indexPathForSelectedRow來取得選中的列
            if let indexPath = tableView.indexPathForSelectedRow{ //
                

                let destinationController = segue.destination as! RestaurantDetailViewController
                destinationController.name = restaurant[indexPath.row].restaurantName
                destinationController.type = restaurant[indexPath.row].restaurantType
                destinationController.restaurantImage = restaurant[indexPath.row].restaurantImage
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
}
