//
//  StatisticsView.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 02/02/2022.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    var body: some View {
        Text(state.divisions[0].code)
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
            .environmentObject(StateController())
    }
}
