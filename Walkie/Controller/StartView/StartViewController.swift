//
//  StartViewController.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 11/05/23.
//

import UIKit

class StartViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet var inputName: UITextField!
    @IBOutlet var image: UIButton!
    var dogName: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.image.layer.borderWidth = 1
        self.image.layer.borderColor = UIColor.black.cgColor
        self.image.layer.masksToBounds = false
        self.image.layer.cornerRadius = image.frame.size.height/2
        self.image.clipsToBounds = true
        self.image.imageView?.contentMode = .scaleAspectFit
        
        
    }
    
    @IBAction func uploadImageViewButton(_ sender: Any) {
        
        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a source", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in
            
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .camera
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
//            self.showImagePicker
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action:UIAlertAction) in
            
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .photoLibrary
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
        
    }
    
    
    @IBAction func btnSaveClicked(_ sender: Any) {
        
        dogName = inputName.text ?? ""
        
        let viewController = UINavigationController(rootViewController: TabBarController())
        viewController.modalPresentationStyle = .fullScreen
//        viewController.present(HomeViewController(), animated: true)
//        viewController.present(HomeViewController(), animated: true)
        present(viewController, animated: true, completion: nil)
        
    }
    
//    func showImagePicker(seleceted)
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        image.setImage(info[.originalImage] as? UIImage, for: .normal)
        
        
//        image.imageEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
        dismiss(animated: true, completion: nil)
    }
}
