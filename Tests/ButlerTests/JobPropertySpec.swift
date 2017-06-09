//
//  JobPropertySpec.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 6/9/17.
//

@testable import Butler
import Quick
import Nimble

class JobPropertySpec: QuickSpec {
    override func spec() {
        describe("job propoerty") {
            let jsonFile: NSString = "JobProperty.json"
            var property: JobProperty! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                property = try! decoder.decode(JobProperty.self, from: data)
            }

            it("has class") {
                expect(property._class) == JavaClass.buildDiscarderProperty
            }
        }
    }
}
