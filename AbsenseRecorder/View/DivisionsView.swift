//
//  ContentView.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 24/01/2022.
//

import SwiftUI

struct DivisionsView: View {
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView{
            
            List(state.divisions, id: \.self.code){ division in
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingIfAvailable(for: currentDate))) {
                    DivisionItem(division: division)
                }
                
            }
            .onAppear(perform: { state.saveToFile() })
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
        DivisionsView()
            .environmentObject(StateController())
    }
}
