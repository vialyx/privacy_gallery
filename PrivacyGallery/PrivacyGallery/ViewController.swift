//
//  ViewController.swift
//  PrivacyGallery
//
//  Created by Maksim Vialykh on 25/11/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBAction func photoLibraryDidTap(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
}

// MARK: - UIImagePickerControllerDelegate
extension ViewController: UIImagePickerControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("imagePickerControllerDidCancel")
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("imagePickerController didFinishPickingMediaWithInfo: \(info)")
        if let image: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            // Here you can manage image
            print("image size: \(image.size)")
        }
        dismiss(animated: true, completion: nil)
    }
    
}

// MARK: - UINavigationControllerDelegate
extension ViewController: UINavigationControllerDelegate {}
