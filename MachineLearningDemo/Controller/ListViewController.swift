//
//  ListViewController.swift
//  MachineLearningDemo
//
//  Created by Mohammed Aslam on 01/02/18.
//  Copyright © 2018 Oottru. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    // Data model: These strings will be the data for the table view cells
    let animals: [String] = ["Image", "Text", "AreaCoverage","RealTimeObject","Food"]
    let cellReuseIdentifier = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        // Register the table view cell class and its reuse id
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
            
        tableView.delegate = self
        tableView.dataSource = self
    }
        
        // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }
        
        // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
            
        // set the text from the data model
        cell.textLabel?.text = self.animals[indexPath.row]
            
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        //Choose your custom row height
        return 70.0;
    }
        // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("You tapped cell number \(indexPath.row).")
        if(indexPath.row == 0)
        {
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "ImageRecognizerVC") as! ImageRecognizerVC
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        if(indexPath.row == 1)
        {
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "TextRecognizerVC") as! TextRecognizerVC
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        if(indexPath.row == 2)
        {
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "AreaRecognizerVC") as! AreaRecognizerVC
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        if(indexPath.row == 3)
        {
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "LiveRecognizerVC") as! LiveRecognizerVC
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        if(indexPath.row == 4)
        {
            let foodViewController = self.storyboard?.instantiateViewController(withIdentifier: "FoodRecognizerVC") as! FoodRecognizerVC
            self.navigationController?.pushViewController(foodViewController, animated: true)
                
        }

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
