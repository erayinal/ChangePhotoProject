//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Eray İnal on 4.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CatsLabel: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    
    var isSelected = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ChangeClicked(_ sender: Any) {
        
        isSelected.toggle()
        
        changesImages()
        
        
    }
    
    func changesImages(){
        let imageName = isSelected ? "IMG_3255" : "IMG_3382"
        if let image = UIImage(named: imageName) {
            imageView1.image = image
        } else {
            print("Image with name \(imageName) not found.")
        }
    }
    

}

