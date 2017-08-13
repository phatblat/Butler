//
//  OrganizationFolderSpec.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 6/9/17.
//

@testable import Butler
import Quick
import Nimble
import Foundation

class OrganizationFolderSpec: QuickSpec {
    override func spec() {
        describe("matrix project") {
            let jsonFile: NSString = "OrganizationFolder.json"
            var job: OrganizationFolder! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                job = try! decoder.decode(OrganizationFolder.self, from: data)
            }

            it("has class") {
                expect(job._class) == JavaClass.organizationFolder
            }
            it("has no description") {
                expect(job.description).to(beNil())
            }
            it("has a display name") {
                expect(job.displayName) == "GitHub Organization"
            }
            it("has no display name or null") {
                expect(job.displayNameOrNull).to(beNil())
            }
            it("has a full display name") {
                expect(job.fullDisplayName) == "Job Types » GitHub Organization"
            }
            it("has a full name") {
                expect(job.fullName) == "Job Types/GitHub Organization"
            }
            it("has no health reports") {
                expect(job.healthReport).toNot(beNil())
                expect(job.healthReport.count) == 0
            }
            it("has no jobs") {
                expect(job.jobs).toNot(beNil())
                expect(job.jobs.count) == 0
            }
            it("has a name") {
                expect(job.name) == "GitHub Organization"
            }
            it("has a primary view") {
                expect(job.primaryView).toNot(beNil())
                expect(job.primaryView["_class"]) == JavaClass.organizationFolderEmptyView.rawValue
            }
            it("has a url") {
                expect(job.url) == URL(string: "http://jenkins.log-g.co/job/Job%20Types/job/GitHub%20Organization/")
            }
            it("has some views") {
                expect(job.views).toNot(beNil())
                expect(job.views.count) == 1
            }
        }
    }
}
