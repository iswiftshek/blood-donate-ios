//
//  ViewController.swift
//  Blood Donation iOS App
//
//  Created by Abhishek Sansanwal on 22/12/18.
//  Copyright © 2018 Abhishek Sansanwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BWWalkthroughViewControllerDelegate {
    
    // Creating variables.
    var gradientLayer: CAGradientLayer!

    @IBAction func helpButtonPressed(_ sender: Any) {
        // Get view controllers and build the walkthrough
        let stb = UIStoryboard(name: "Walkthrough", bundle: nil)
        let walkthrough = stb.instantiateViewController(withIdentifier: "container") as! BWWalkthroughViewController
        let page_zero = stb.instantiateViewController(withIdentifier: "container1") as! BWWalkthroughPageViewController
        let page_one = stb.instantiateViewController(withIdentifier: "container2")
        let page_two = stb.instantiateViewController(withIdentifier: "container3")
        
        
        
        // Attach the pages to the master
        walkthrough.delegate = self
        walkthrough.add(viewController:page_one)
        print("hehehehh")
        walkthrough.add(viewController:page_two)
        walkthrough.add(viewController:page_zero)
     
        //self.present(page_zero, animated: true, completion: nil)
        
        self.present(walkthrough, animated: true, completion: nil)
        
       // self.present(page_zero, animated: true, completion: nil)
        
        
        
    }
    
 /*   override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let userDefaults = UserDefaults.standard
        
        if !userDefaults.bool(forKey: "walkthroughPresented") {
            
            showWalkthrough()
            
            userDefaults.set(true, forKey: "walkthroughPresented")
            userDefaults.synchronize()
        }
    }*/
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       // Code to create a gradient if needed.
        /*gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.white.cgColor,UIColor.lightGray.cgColor]
        gradientLayer.locations = [0.0,0.9]
        self.view.layer.addSublayer(gradientLayer)*/
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func walkthroughCloseButtonPressed() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func walkthroughPageDidChange(_ pageNumber: Int) {
        print("Current Page \(pageNumber)")
    }
    
}

