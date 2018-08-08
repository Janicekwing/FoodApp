//
//  ViewController.swift
//  SearchBar
//
//  Created by Janice He on 8/4/18.
//  Copyright © 2018 Janice He. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var foodArray = [Food]()
    var currentFoodArray = [Food]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpFood()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func setUpFood(){
        foodArray.append(Food(name: "Hot Dog", type: .american, image: "hotdog"))
        foodArray.append(Food(name: "Steak Frites", type: .french, image: "steakfrites"))
        foodArray.append(Food(name: "Baguette", type: .french, image: "baguette"))
        foodArray.append(Food(name: "Pizza", type: .american, image: "pizza"))
        
        currentFoodArray = foodArray
    }
    
    private func setUpSearchBar(){
        searchBar.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentFoodArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableCell else {
                return UITableViewCell()
        }
        cell.dishName.text = currentFoodArray[indexPath.row].name
        cell.foodType.text = currentFoodArray[indexPath.row].type.rawValue
        cell.foodImage.image = UIImage(named:foodArray[indexPath.row].image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else{
            currentFoodArray = foodArray
            return
        }
        currentFoodArray.filter({ (Food) -> Bool in
        Food.name.lowercased().contains(searchText.lowercased())
        })
    }
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int){
        
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
