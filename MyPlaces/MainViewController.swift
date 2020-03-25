//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Лев Ильин on 25.03.2020.
//  Copyright © 2020 LevIlin. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    let restaurantNames = ["Burger King",
                           "Каравелла",
                           "Ширван",
                           "MacDonald's",
                           "Охотничий рай",
                           "Вилка",
                           "Ронни",
                           "У Гуссейна",
                           "Туран"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])

        return cell
    }
    

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
