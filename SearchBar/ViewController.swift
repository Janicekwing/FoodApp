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
    
    var foodArray = [Food]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func setUpFood(){
        foodArray.append(Food(name: "Hot Dog", type: FoodType(rawValue: "American")!, image: "<hotdog>"))
        foodArray.append(Food(name: "Steak Frites", type: FoodType(rawValue: "French")!, image: "<steakfrites>"))
    }
}

class Food {
    let name: String
    let type: FoodType
    let image: String
    
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
