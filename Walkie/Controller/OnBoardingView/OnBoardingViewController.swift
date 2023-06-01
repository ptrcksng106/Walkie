//
//  OnBoardingViewController.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 11/05/23.
//

import UIKit

class OnBoardingViewController: UIViewController {

    @IBAction func buttonStartAction(_ sender: UIButton) {
        
        let viewController = UINavigationController(rootViewController: StartViewController())
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.setHidesBackButton(true, animated: true)
        
        
    }


    @objc func buttonAction(sender: UIButton) {
        let viewController = UINavigationController(rootViewController: OnBoardingViewController())
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true, completion: nil)
    }

}
