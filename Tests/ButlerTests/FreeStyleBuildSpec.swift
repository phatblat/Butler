//
//  FreeStyleBuildSpec.swift
//  Butler
//
//  Created by Ben Chatelain on 6/4/17.
//
//

@testable import Butler
import Quick
import Nimble
import Foundation

class FreeStyleBuildSpec: QuickSpec {
    override func spec() {
        describe("freestyle build") {
            let jsonFile: NSString = "FreeStyleBuild.json"
            var build: FreeStyleBuild! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                build = try! decoder.decode(FreeStyleBuild.self, from: data)
            }

            it("has class") {
                expect(build._class) == JavaClass.freestyleBuild
            }
            it("has a number") {
                expect(build.number) == 2
            }
            it("has a url") {
                expect(build.url.absoluteString) == "http://mini.log-g.co/jenkins/job/whoami/2/"
                expect(build.url) == URL(string: "http://mini.log-g.co/jenkins/job/whoami/2/")
            }
        }
    }
}
