//
//  Constants.swift
//  MySNSApp
//
//  Created by 박연배 on 2021/07/10.
//

import Firebase

let COLLECTION_USERS = Firestore.firestore().collection("users")
let COLLECTION_FOLLOWER = Firestore.firestore().collection("follower")
let COLLECTION_FOLLOWING = Firestore.firestore().collection("following")