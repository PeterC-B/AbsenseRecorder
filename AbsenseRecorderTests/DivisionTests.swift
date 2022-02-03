//
//  DivisionTests.swift
//  AbsenseRecorderTests
//
//  Created by Compton-Burnett, Peter (PGW) on 03/02/2022.
//

import XCTest
@testable import AbsenseRecorder

class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        //Arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let dateTomorrow = Date(timeIntervalSinceNow: 100000000000000000000)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        //Act
        let actual = division.getAbsence(for: dateLaterToday)
        
        //Assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
        
        
    }
    
    func testCreateAbsenceOrGetExistingDate() throws {
        //Arrange
        let division = Division(code: "Test2Div")
        let dateToday = Date()
        //Act
        let result = division.createAbsenceOrGetExistingIfAvailable(for: dateToday)
        
        //Assert
        XCTAssertEqual(result.takenOn, dateToday)
    }


}
