//
//  HomeViewController.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 09/05/23.
//

import UIKit
import UserNotifications

class HomeViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var reminderModels = [Reminder]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MainTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        
        
    }
    
    
    @IBAction func didTapAdd(_ sender: UIButton) {
        let view = AddViewController()
//        view.delegate = self
        view.completion = {title, date in
            DispatchQueue.main.async {
                self.navigationController?.popToRootViewController(animated: true)
                let new = Reminder(title: title, date: date, identifier: "id_\(title)")
                self.reminderModels.append(new)
                self.tableView.reloadData()
                
                let content = UNMutableNotificationContent()
                content.title = "Hey this is the time!"
                content.sound = .default
                content.body = title
                //"Let's walk with your dog!"
                
                let targetDate = date
                let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: targetDate), repeats: false)
                
                let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
                    if error != nil {
                        print("Something went wrong")
                    }
                })
            }
        }
        view.modalPresentationStyle = .formSheet
        view.modalTransitionStyle = .coverVertical
        self.present(view, animated: true)
    }
    
//    @IBAction func didTapTest(_ sender: UIButton) {
//
//        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { success, error in
//            if success {
//
//                self.scheduleTest()
//            } else if error != nil{
//                print("error occurr ed")
//            }
//        })
//    }
    
//    func scheduleTest() {
//
//        let content = UNMutableNotificationContent()
//        content.title = "Hey this is the time!"
//        content.sound = .default
//        content.body = "Let's walk with your dog!"
//
//        let targetDate = Date().addingTimeInterval(10)
//        let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: targetDate), repeats: false)
//
//        let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
//        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
//            if error != nil {
//                print("Something went wrong")
//            }
//        })
//    }
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminderModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        
        let date = reminderModels[indexPath.row].date
        
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a 'on' MMMM dd, yyyy"
        formatter.amSymbol = "AM"
        formatter.pmSymbol = "PM"
        
        cell.textTitle.text = reminderModels[indexPath.row].title

        cell.textDetailDate?.text = formatter.string(from: date)
        
        return cell
    }
}


