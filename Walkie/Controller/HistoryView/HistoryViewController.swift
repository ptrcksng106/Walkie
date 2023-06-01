//
//  HistoryViewController.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 29/05/23.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
//        do {
//            entries = try context.fetch(fetchRequest)
//        } catch let error as NSError {
//            print("Could not fetch. \(error), \(error.userInfo)")
//        }

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
//        let entry = entries[indexPath.row]
//        
//        let carName = entry.value(forKey: "carName") as? String
//        let date = entry.value(forKey: "tripDate") as? Date
//        let stringDate = getStringDate(date: date!)
//        let distanceTravelled = entry.value(forKey: "distanceTravelled") as? Double ?? 0.0
//        let fuelUsed = entry.value(forKey: "fuelUsed") as? Double ?? 0.0
//                
//        cell.carNameLabel.text = carName
//        cell.dateLabel.text = stringDate
//        cell.distanceTravelledLabel.text = "\(distanceTravelled) Km"
//        cell.fuelUsedLabel.text = "\(fuelUsed) Liter"
        
        cell.textDate.text = "12345689"
        cell.textTime.text = "123"
        cell.textTimeStopWatch.text = "cobaa"
        cell.imagePet.image = UIImage(named: "iconHistoryy")
        
        return cell
    }
    
    func getStringDate(date:Date) -> String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        let month = dateFormatter.string(from: date)

        let day = calendar.component(.day, from: date)

        let time = "\(day) \(month) \(year)"

        return time
    }

}
