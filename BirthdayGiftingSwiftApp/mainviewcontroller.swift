//
//  mainviewcontroller.swift
//  BirthdayGiftingSwiftApp
//
//  Created by Student1 on 07/03/2025.
//

import Foundation
import UIKit
class MainViewController: UIViewController {
    @IBOutlet var loginTapped: UIButton!
    @IBOutlet var signupTapped: UIButton!
    override func viewDidLoad() { super.viewDidLoad() }
    @IBAction func loginTapped(_ sender: UIButton) { performSegue(withIdentifier: "goToLogin", sender: self) }
    @IBAction func signupTapped(_ sender: UIButton)
    { performSegue(withIdentifier: "goToSignUp", sender: self) } }
