//
//  NewPlaceViewController.swift
//  MyPlaces
//
//  Created by Лев Ильин on 26.03.2020.
//  Copyright © 2020 LevIlin. All rights reserved.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView() //скрытие линовки
  }
    
//MARK: - Table View delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let actionSheet = UIAlertController(title: nil,
                                                message: nil,
                                                preferredStyle: .actionSheet)
            let camera = UIAlertAction(title: "Camera", style: .default) { (_) in
                self.chooseImagePicker(source: .camera)
            }
            let photo = UIAlertAction(title: "Photo", style: .default) { (_) in
                self.chooseImagePicker(source: .photoLibrary)
            }
            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            
            actionSheet.addAction(camera)
            actionSheet.addAction(photo)
            actionSheet.addAction(cancel)
            
            present(actionSheet, animated: true)
            
    } else {
            view.endEditing(true)
        }
    }
    
}
//MARK: - Text field delegate

extension NewPlaceViewController: UITextFieldDelegate {
    
    //скрываем клавиатуру по нажатию на кнопку Done
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//MARK: - work with iimage

extension NewPlaceViewController {
    func chooseImagePicker(source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            present(imagePicker, animated: true)
            
            
        }
    }
}
