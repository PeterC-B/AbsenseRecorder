//
//  AbsenceView.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 02/02/2022.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    var body: some View {
        Text("Absence View - \(division.code)")
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0])
    }
}
