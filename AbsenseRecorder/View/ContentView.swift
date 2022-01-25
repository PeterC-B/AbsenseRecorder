//
//  ContentView.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView{
            
            List(divisions, id: \.self.code){ division in
                DivisionItem(division: division)
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
            /*
            ForEach(divisions) { divisionExample in
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
             */
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
