//
//  Constants.swift
//  Chat2Chat
//
//  Created by Ben Lapidge on 14/12/2022.
//

import Foundation

struct K {
    let appName = "Chat2Chat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
    
    
}
