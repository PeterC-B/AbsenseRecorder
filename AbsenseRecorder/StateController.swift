//
//  StateController.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 02/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
