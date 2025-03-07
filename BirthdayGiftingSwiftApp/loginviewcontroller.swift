//
//  loginviewcontroller.swift
//  BirthdayGiftingSwiftApp
//
//  Created by Student1 on 07/03/2025.
//

import UIKit
class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    let users = [
        ["email": "Ianwambaire@gmail.com", "password": "Ian123", "name": "Ian"],
        ["email": "john@gmail.com", "password": "john123", "name": "john"] ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func loginButtonTapped(_ sender: UIButton){
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        if email.isEmpty || password.isEmpty {
            showAlert(message: "Please enter both email and password")
            return
        }
        if let user = users.first(where: { $0["email"] == email && $0["password"] == password })
    
        { print("Login successful! User: \(user["name"] ?? "Unknown")")
            navigateToHomeScreen(userName: user["name"] ?? "Guest") } else { showAlert(message: "Invalid email or password") } }
    func showAlert(message: String) { let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true) }
    func navigateToHomeScreen(userName: String) { if let homeVC = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeScreenView { homeVC.loggedInUser = userName
        if let navController = navigationController {
            navController .setViewControllers([homeVC], animated: true)
            
        }else{
            present(homeVC, animated: true,completion: nil)
        }
         } } }
