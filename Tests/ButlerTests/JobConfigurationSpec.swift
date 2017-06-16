//
//  JobConfigurationSpec.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 6/9/17.
//

@testable import Butler
import Quick
import Nimble
import Foundation

class JobConfigurationSpec: QuickSpec {
    override func spec() {
        describe("job configuration") {
            let jsonFile: NSString = "JobConfiguration.json"
            var report: JobConfiguration! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                report = try! decoder.decode(JobConfiguration.self, from: data)
            }

            it("has a color") {
                expect(report.color) == "blue"
            }
            it("has a name") {
                expect(report.name) == "GRADLE_TASK=cocoapods,label=node1"
            }
            it("has a url") {
                expect(report.url.absoluteString) == "http://jenkins.log-g.co/job/ButlerMatrix/GRADLE_TASK=cocoapods,label=node1/"
            }
        }
    }
}
