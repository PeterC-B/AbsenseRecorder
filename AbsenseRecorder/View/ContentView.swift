//
//  ContentView.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            ForEach(Division.examples) { divisionExample in
                Text("")
                Text("\(divisionExample.code) Division:")
                    .font(.title)
                ForEach(divisionExample.students) { student in
                    Text("")
                    Text(student.forename)
                    Text(student.surname)
                    Text(student.birthday, style: .time)
                    Text("")
                    
                }
                Text("")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
