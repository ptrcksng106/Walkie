//
//  SplashScreenViewController.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 09/05/23.
//

import UIKit

class SplashScreenViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

      
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            
            self.navigationController?.pushViewController(OnBoardingViewController(), animated: true)
        }
        
    }
    
    func addAnimation() {
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
