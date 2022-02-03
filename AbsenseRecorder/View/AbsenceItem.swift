//
//  AbsenceItem.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 03/02/2022.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack{
            Text("\(studentAbsence.student.forename)")
            Spacer()
            if studentAbsence.isAbsent {
                //For some reason the ticks wouldn't insert for me
                Button("No", action: { toggleAbsent() })
            }
            else {
                Button("Yes", action: { toggleAbsent() })
            }
            
        }
        
    }
    
    func toggleAbsent() {
        studentAbsence.isAbsent.toggle()
    }
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}
