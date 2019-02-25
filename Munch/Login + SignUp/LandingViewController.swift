//
//  LandingViewController.swift
//  Munch
//
//  Created by Sean Lissner on 01.11.18.
//

import UIKit

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Helvetica Neue", size: 18)!], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Helvetica Neue", size: 18)!], for: .selected)
        // Do any additional setup after loading the view. 
        
        imgTommy.layer.borderWidth = 1.0
        imgTommy.layer.masksToBounds = false
        imgTommy.layer.borderColor = UIColor.white.cgColor
        imgTommy.layer.cornerRadius = imgTommy.frame.size.width / 2
        imgTommy.clipsToBounds = true
        
        btnLogin.layer.cornerRadius = 23
        btnCreateAnAccount.layer.cornerRadius = 23
        btnGuest.layer.cornerRadius = 23
        
    }
    
    @IBOutlet var imgTommy: UIImageView!
    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var btnCreateAnAccount: UIButton!
    @IBOutlet var btnGuest: UIButton!
    
    
    @IBAction func goToLogin(_ sender: Any) {
        performSegue(withIdentifier: "landingToLogin", sender: (Any).self)
    }
    
    @IBAction func goToNewAccount(_ sender: Any) {
        performSegue(withIdentifier: "launchToCreateAccount", sender: (Any).self)
    }
    
    @IBAction func continueAsGuest(_ sender: Any) {
        performSegue(withIdentifier: "continueAsGuest", sender: (Any).self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let destinationVC = segue.destination as? BrowseViewController {
            destinationVC.isGuest = true
        }
    }
}
