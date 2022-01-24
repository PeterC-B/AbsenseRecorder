//
//  Student.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 24/01/2022.
//

import Foundation

class Student: Identifiable {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
        
    }
}
