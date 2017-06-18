//
//  MavenModuleSetSpec.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 6/18/17.
//

@testable import Butler
import Quick
import Nimble
import Foundation

class MavenModuleSetSpec: QuickSpec {
    override func spec() {
        describe("maven module set") {
            let jsonFile: NSString = "MavenModuleSet.json"
            var job: MavenModuleSet! = nil

            beforeEach {}
            it("is true") {
                expect(true) == true
            }
        }
    }
}
