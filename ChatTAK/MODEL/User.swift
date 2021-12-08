//
//  User.swift
//  ChatTAK
//
//  Created by Mobark Alseif on 04/05/1443 AH.
//

import Foundation
import UIKit

class User {
    
    var name:String?
    var phone: String?
    var email: String?

}
extension User {
    
    static func getUser(dict: [String: Any]) -> User {
       
        let user = User()
        
        user.phone = dict["phone"] as? String
        user.name = dict["name"] as? String
        user.email = dict["email"] as? String
       
        return user
    }
    static func CreateUser(phone:String,name:String,email:String) -> [String: Any] {
       
        let newUser = ["phone":phone,
                       "name":name,
                       "email" :email
                    ] as [String : Any]
        
        return newUser
    }
}

