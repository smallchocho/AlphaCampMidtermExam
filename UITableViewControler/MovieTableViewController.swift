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
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurant.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantTableViewCell
        cell.nameLabel.text = restaurant[indexPath.row].restaurantName
        cell.thumbnailImageView.image = UIImage(named:"\(restaurant[indexPath.row].restaurantImage)")
        cell.typeLabel.text = restaurant[indexPath.row].restaurantType
        return cell
    }
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMovieDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! RestaurantDetailViewController
                destinationController.name = restaurant[indexPath.row].restaurantName
                destinationController.type = restaurant[indexPath.row].restaurantType
                destinationController.restaurantImage = restaurant[indexPath.row].restaurantImage
            }
        }
    }
}
