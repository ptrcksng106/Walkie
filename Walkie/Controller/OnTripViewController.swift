//
//  OnTripViewController.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 27/05/23.
//

import UIKit

class OnTripViewController: UIViewController {
    
    
    @IBOutlet var textDuration: UILabel!
    @IBOutlet var textDistance: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    


    @IBAction func finishPressed(_ sender: Any) {
        finishTripAlert()
    }
    
    func finishTripAlert(){
        let alert = UIAlertController(
            title: "Finish?",
            message: "Are you sure you want to end the trip?",
            preferredStyle: .alert
        )

        alert.view.tintColor = UIColor(named: "MidnightBlue")

        //Yes Choice
        alert.addAction(UIAlertAction(
            title: "Finish",
            style: .default,
            handler: { action in
//                self.configFuelStatus()
//                self.saveTrip()
                self.dismiss(animated: true)
//                self.delegate?.finishPressed()
            })
        )
        
        //Cancel Choice
        alert.addAction(UIAlertAction(
            title: "Cancel",
            style: .destructive,
            handler: { action in
            })
        )
        
        present(alert, animated: true)
    }
}
