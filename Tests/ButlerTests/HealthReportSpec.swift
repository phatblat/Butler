//
//  HealthReportSpec.swift
//  Butler
//
//  Created by Ben Chatelain on 6/4/17.
//
//

@testable import Butler
import Quick
import Nimble
import Foundation

class HealthReportSpec: QuickSpec {
    override func spec() {
        describe("health report") {
            let jsonFile: NSString = "HealthReport.json"
            var report: HealthReport! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                report = try! decoder.decode(HealthReport.self, from: data)
            }

            it("has a description") {
                expect(report.description) == "Build stability: No recent builds failed."
            }
            it("has a score") {
                expect(report.score) == 100
            }
        }
    }
}
