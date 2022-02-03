//
//  RootTabView.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 02/02/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text ("Statistics")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
