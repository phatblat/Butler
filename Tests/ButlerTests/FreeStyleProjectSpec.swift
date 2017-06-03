//
//  FreeStyleProjectSpec.swift
//  Butler
//
//  Created by Ben Chatelain on 6/2/17.
//
//

@testable import Butler
import Quick
import Nimble
import SwiftyJSON

class FreeStyleProjectSpec: QuickSpec {
    override func spec() {
        describe("freestyle project job") {
            let jsonFile: NSString = "FreeStyleProject.json"
            var json: JSON! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self)) //.resourceURL!.appendingPathComponent("JSON/Job")
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                       withExtension: jsonFile.pathExtension,
                                    subdirectory: "JSON/Job")!
                let data = NSData(contentsOf: url)!
                json = JSON(data: data as Data)
            }

            it("is buildable") {
                expect(json["buildable"]) == true
            }
            it("is blue") {
                expect(json["color"]) == "blue"
            }
        }
    }
}
