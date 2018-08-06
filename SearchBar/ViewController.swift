//
//  ViewController.swift
//  SearchBar
//
//  Created by Janice He on 8/4/18.
//  Copyright © 2018 Janice He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class Food {
    let name: String
    let type: FoodType
    
    
    init(name: String, type: FoodType, image: String){
        self.name = name
        self.type = type
        self.image = image
    }
}

enum FoodType: String {
    case french = "French"
    case american = "American"
}
