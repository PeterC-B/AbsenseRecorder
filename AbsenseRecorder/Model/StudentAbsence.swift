//
//  StudentAbsence.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 03/02/2022.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student.example)
    #endif
}
