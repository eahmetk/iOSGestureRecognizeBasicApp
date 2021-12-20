//
//  ViewController.swift
//  iOSGestureRecognizeBasicApp
//
//  Created by Ahmet on 20.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isJames=true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Kullanıcı tıklayabilsin mi?
        imageView.isUserInteractionEnabled=true
        let gestureRecognize=UITapGestureRecognizer(target:self,action:#selector(changePic))
        imageView.addGestureRecognizer(gestureRecognize)
        
    }
    @objc func changePic(){
        
        if isJames==true {
        imageView.image=UIImage(named:"wayne")
            myLabel.text="Wayne"
            isJames=false
    } else {
            imageView.image=UIImage(named:"thomas")
            myLabel.text="Thomas"
            isJames=true
        }
        
    }


}

