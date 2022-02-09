//
//  StateController.swift
//  AbsenseRecorder
//
//  Created by Compton-Burnett, Peter (PGW) on 02/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        //divisions = Division.examples
        loadFromFile()
    }
    
    func loadFromFile() {
        /*
        //Get url to the file you want to load from
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent("divisions.json")
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
         */
        if let loaded: [Division] = FileManager.default.load(from: "divisions.json") {
            divisions = loaded
        }
    }
    
    func saveToFile() {
        /*
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            //Take encoded json objects and convert them in to string
            if let json = String(data: encoded, encoding: .utf8) {
                //Create the file path
                let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
                let userPath = paths[0]
                let url = userPath.appendingPathComponent("divisions.json")
                do {
                    //Write the json string to that file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            } else {
                print("Unable to form json string")
            }
        }
         */
        FileManager.default.save(to: "divisions.json", object: divisions)
    }
}
