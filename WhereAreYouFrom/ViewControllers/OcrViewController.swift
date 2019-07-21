//
//  OcrViewController.swift
//  WhereAreYouFrom
//
//  Created by M'haimdat omar on 20-07-2019.
//  Copyright © 2019 M'haimdat omar. All rights reserved.
//

import UIKit
import TesseractOCR
import MobileCoreServices
import SwiftOCR
import Firebase

let screenWidth = UIScreen.main.bounds.width

class OcrViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, G8TesseractDelegate {
    
    let vision = Vision.vision()
    var cities = [City]()
    var persistenceManager: PersistenceManager = PersistenceManager.shared
    
    let logo: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "logo_ocr").resized(newSize: CGSize(width: screenWidth - 40, height: (screenWidth - 40)/1.6 )))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let upload: BtnPleinLarge = {
        let button = BtnPleinLarge()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonToUpload(_:)), for: .touchUpInside)
        button.setTitle("Upload an image", for: .normal)
        let icon = UIImage(named: "upload")?.resized(newSize: CGSize(width: 50, height: 50))
        button.addRightImage(image: icon!, offset: 30)
        button.backgroundColor = #colorLiteral(red: 0.7573978901, green: 0.1516641974, blue: 0.1770879328, alpha: 1)
        button.layer.borderColor = #colorLiteral(red: 0.7573978901, green: 0.1516641974, blue: 0.1770879328, alpha: 1).cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        button.layer.shadowOffset = CGSize(width: 1, height: 5)
        button.layer.cornerRadius = 10
        button.layer.shadowRadius = 8
        button.layer.masksToBounds = true
        button.clipsToBounds = false
        button.contentHorizontalAlignment = .left
        button.layoutIfNeeded()
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
        button.titleEdgeInsets.left = 0
        
        return button
    }()
    
    let openCamera: BtnPleinLarge = {
        let button = BtnPleinLarge()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonToOpenCamera(_:)), for: .touchUpInside)
        button.setTitle("Take a picture", for: .normal)
        let icon = UIImage(named: "camera")?.resized(newSize: CGSize(width: 50, height: 50))
        button.addRightImage(image: icon!, offset: 30)
        button.backgroundColor = #colorLiteral(red: 0.5490196078, green: 0.1098039216, blue: 0.1215686275, alpha: 1)
        button.layer.borderColor = #colorLiteral(red: 0.5490196078, green: 0.1098039216, blue: 0.1215686275, alpha: 1).cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        button.layer.shadowOffset = CGSize(width: 1, height: 5)
        button.layer.cornerRadius = 10
        button.layer.shadowRadius = 8
        button.layer.masksToBounds = true
        button.clipsToBounds = false
        button.contentHorizontalAlignment = .left
        button.layoutIfNeeded()
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
        button.titleEdgeInsets.left = 0
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupTabBar()
        addSubviews()
        setupLayout()
        getCity()
    }
    
    func setupTabBar() {
        view.backgroundColor = UIColor.white
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Where Are You From ?"
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.barTintColor = .lightText
        self.setNeedsStatusBarAppearanceUpdate()
        self.navigationItem.largeTitleDisplayMode = .automatic
        self.navigationController?.navigationBar.barStyle = .default
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func addSubviews() {
        view.addSubview(logo)
        view.addSubview(upload)
        view.addSubview(openCamera)
    }
    
    func setupLayout() {
        
        logo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logo.topAnchor.constraint(equalTo: self.view.safeTopAnchor, constant: 40).isActive = true
        
        upload.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        upload.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        upload.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        upload.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        openCamera.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        openCamera.topAnchor.constraint(equalTo: upload.bottomAnchor, constant: 30).isActive = true
        openCamera.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        openCamera.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    func getCity() {
        let cities = persistenceManager.fetch(City.self)
        self.cities = cities.sorted(by: {$0.id < $1.id})
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        
        
        if let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            googleMlOCR(image: pickedImage) { (text) in
                if let text = text {
                    print("EDITED --> Google --> ## \(text)")
                    let last = String(text.suffix(2)).trimmingCharacters(in: .whitespaces)
                    if self.cities.contains(where: {$0.id == Int16(last)}) {
                        print(self.cities.first(where: {$0.id == Int16(last)})?.name ?? "??")
                        let vc = WhatCityViewController()
                        vc.city.text = self.cities.first(where: {$0.id == Int16(last)})?.name ?? "??"
                        vc.ocrImage.image = pickedImage
                         self.present(vc, animated: true)
                    } else {
                        let vc = WhatCityViewController()
                        vc.city.text = "Didn't find any city that matchs that licence plate"
                        vc.ocrImage.image = pickedImage
                        self.present(vc, animated: true)
                        print("EDITED --> Didn't find any city that matchs that licence plate")
                        print(last)
                    }
                }
            }
        } else if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            googleMlOCR(image: pickedImage) { (text) in
                if let text = text {
                    print("Google --> ## \(text)")
                    let last = String(text.suffix(2)).trimmingCharacters(in: .whitespaces)
                    if self.cities.contains(where: {$0.id == Int16(last)}) {
                        print(self.cities.first(where: {$0.id == Int16(last)})?.name ?? "??")
                        let vc = WhatCityViewController()
                        vc.city.text = self.cities.first(where: {$0.id == Int16(last)})?.name ?? "??"
                        vc.ocrImage.image = pickedImage
                        self.present(vc, animated: true)
                    } else {
                        let vc = WhatCityViewController()
                        vc.city.text = "Didn't find any city that matchs that licence plate"
                        vc.ocrImage.image = pickedImage
                        self.present(vc, animated: true)
                        print("Didn't find any city that matchs that licence plate")
                        print(last)
                    }
                }
            }
        }
        
    }
    
    func progressImageRecognition(for tesseract: G8Tesseract) {
        print("Progress: \(tesseract.progress)%")
    }
    
    @objc func buttonToUpload(_ sender: BtnPleinLarge) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    @objc func buttonToOpenCamera(_ sender: BtnPleinLarge) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func tesseractIOS(image: UIImage, completion: @escaping (String?)->()) {
        let scaledImage = image.scaledImage(1000) ?? image
        
        if let tesseract = G8Tesseract(language: "eng") {
            tesseract.delegate = self
            tesseract.engineMode = .tesseractCubeCombined
            tesseract.pageSegmentationMode = .auto
            tesseract.charWhitelist = "0123456789"
            tesseract.image = scaledImage
            tesseract.recognize()
            completion(tesseract.recognizedText)
        }
    }
    
    func swiftOCR(image: UIImage, completion: @escaping (String?)->()) {
        let swiftOCRInstance = SwiftOCR()
        
        swiftOCRInstance.recognize(image) { recognizedString in
            completion(recognizedString)
        }
    }
    
    func googleMlOCR(image: UIImage, completion: @escaping (String?)->()) {
        let textRecognizer = vision.onDeviceTextRecognizer()
        let image = VisionImage(image: image)
        
        textRecognizer.process(image) { result, error in
            if let error = error {
                completion(error as? String)
            } else {
                completion(result?.text)
            }
        }
    }
    
}
