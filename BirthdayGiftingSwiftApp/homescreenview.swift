//
//  homescreenview.swift
//  BirthdayGiftingSwiftApp
//
//  Created by Student1 on 07/03/2025.
//

import Foundation
import UIKit
class HomeScreenView: UIViewController {
  @IBOutlet weak var profileImageView1: UIImageView!
    @IBOutlet weak var nameLabel1: UILabel!
    @IBOutlet weak var daysLabel1: UILabel!
    @IBOutlet weak var profileImageView2: UIImageView!
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var daysLabel2: UILabel!
    @IBOutlet weak var profileImageView3: UIImageView!
    @IBOutlet weak var nameLabel3: UILabel!
    @IBOutlet weak var daysLabel3: UILabel!
    let users: [[String: Any]] = [
        ["image": "steven", "name": "Steven Yabann", "daysRemaining": 3],
        ["image": "Ethan", "name": "Ethan Bwibo", "daysRemaining": 5],
        ["image": "Victor", "name": "Victor Musembi", "daysRemaining": 7] ]
    @IBOutlet weak var welcomeLabel: UILabel!
    var loggedInUser: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let userName = loggedInUser {
            welcomeLabel.text = "Welcome, \(userName)!"
        } else {
            welcomeLabel.text = "Welcome"  }
        displayUsers()
    }
    func displayUsers() {
        let imageViews = [profileImageView1, profileImageView2, profileImageView3]
        let nameLabels = [nameLabel1, nameLabel2, nameLabel3]
        let daysLabels = [daysLabel1, daysLabel2, daysLabel3]
        for (index, user) in users.enumerated() {
            if let imageName = user["image"] as? String,
               let name = user["name"] as? String,
               let days = user["daysRemaining"] as? Int {
                imageViews[index]?.image = UIImage(named: imageName)
                nameLabels[index]?.text = name
                daysLabels[index]?.text = "In \(days) Days" } } }
}

