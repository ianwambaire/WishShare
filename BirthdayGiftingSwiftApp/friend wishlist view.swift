//
//  homescreenview.swift
//  BirthdayGiftingSwiftApp
//
//  Created by Student1 on 07/03/2025.
//

import Foundation
import UIKit
class FriendWishlist: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    let users: [[String: Any]] = [
        ["image": "steven", "name": "Steven Yabann"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        displayUsers()
    }
    func displayUsers() {
        let imageViews = [profileImage]
        let nameLabels = [nameLabel]
        for (index, user) in users.enumerated() {
            if let imageName = user["image"] as? String,
               let name = user["name"] as? String{
                imageViews[index]?.image = UIImage(named: imageName)
                nameLabels[index]?.text = name
            }
        }
    }
    
    
}
