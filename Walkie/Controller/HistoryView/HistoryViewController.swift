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
        tableView.rowHeight = 85
        
//        do {
//            entries = try context.fetch(fetchRequest)
//        } catch let error as NSError {
//            print("Could not fetch. \(error), \(error.userInfo)")
//        }

        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.textDate.text = "textDatee"
        cell.textTime.text = "textTime ini loh"
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
