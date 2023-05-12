//
//  ViewController.swift
//  LearniOS2
//
//  Created by Rohit Kumar on 11/10/22.
//

import UIKit

class Fruit {
    var name: String!
    var taste: String?
}

class ViewController: UIViewController {
    
    let names = ["Vanshika", "Aniket", "Deepanshu", "Gaurav", "Rohit", nil]
    let fruitNames = ["Guava", "Grapes", "Apple", "Mango", "Cherry"]
    
    enum FruitType: String {
        case guava = "Guava"
        case grape = "Grape"
        case apple = "Apple"
        case mango = "Mango"
        case cherry = "Cherry"
    }
    
    var fruit: Fruit?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let filteredArray =  names.filter({$0!.starts(with: "V")})
//        print("Filtered Array: \(filteredArray)")
//        let mappedArray =  names.map { element in
//            return "$-\(element)"
//        }
//        print("Mapped Array: \(mappedArray)")
        
//        print("Original Array: \(names)")
//        let compactedMap = names.compactMap({$0})
//        print("Compacted Map: \(compactedMap)")
        
//        understandOptional()
        swiftCollectionType()
        
        downloadImage {  [unowned self] image in
            self.tabBarItem.image = image
        }
    }
    
    func understandOptional() {
        if let fruitValue = fruit {
            if let taste = fruitValue.taste {
                print("Taste: \(taste)")
            }
        } else {
            return
        }
        
        guard let fruitValue = fruit else {
            return
        }
        
        print("Fuit's taste: \(fruit?.taste ?? "No taste available")")
    }


}

// TableView Datasource and Delegate
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // Datasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "DummyTableViewCell", for: indexPath) as! DummyTableViewCell
        
        let datasource = indexPath.section == 0 ? names : fruitNames
        tableViewCell.nameLabel.text = datasource[indexPath.row]
        
        
        return tableViewCell;
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Person" : "Fruit"
    }
    
    // Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected index path: \(indexPath.section): \(indexPath.row)")
    }
    
}

// Network Calls
extension ViewController {
    
    func downloadImage(completionHandler: (_ image: UIImage) -> Void) {
        // Code to download image
        // Return the handler
        completionHandler(UIImage())
    }
}


// Utility
extension ViewController {
    
    func openFile(path: String) {
        
        defer {
            // Close the file
        }
        
        do {
            // try -- Try to open the file
        }
        catch {
            // Handle any exception
        }
        
       
    }
    
    func useSwitchCase() {
        let fruitType = FruitType.mango
        
        
        
        switch fruitType {
        case .guava:
            print("Type: \(fruitType.rawValue)")
        case .grape:
            print("Type: \(fruitType.rawValue)")
        case .apple:
            print("Type: \(fruitType.rawValue)")
        case .mango:
            print("Type: \(fruitType.rawValue)")
        case .cherry:
            print("Type: \(fruitType.rawValue)")
        }
    }
    
    func swiftCollectionType() {
        // Array and Dictionary
        
        // Dictionary -- Key-Value Pair (JSON)
        
        let names = ["Rohit": 32, "Suresh": 34, "Hema": 26, "Ram": 12, "Amit": "34"] as [String : Any]
        
        for name in names {
            if let value = name.value as? Int {
                print(value)
            } else if let value = name.value as? String {
                print(value)
            }
            
        }
    }
}


