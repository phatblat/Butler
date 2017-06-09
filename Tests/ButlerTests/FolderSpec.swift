//
//  FolderSpec.swift
//  Butler
//
//  Created by Ben Chatelain on 6/4/17.
//
//

@testable import Butler
import Quick
import Nimble

class FolderSpec: QuickSpec {
    override func spec() {
        describe("folder") {
            let jsonFile: NSString = "Folder.json"
            var project: Folder! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                project = try! decoder.decode(Folder.self, from: data)
            }

            it("has class") {
                expect(project._class) == JavaClass.folder
            }
            it("has a url") {
                expect(project.url) == URL(string: "http://jenkins.log-g.co/job/Job%20Types/")
            }
            it("has an empty description") {
                expect(project.description).to(beNil())
            }
            it("has a name") {
                expect(project.name) == "Job Types"
            }
            it("has a full name") {
                expect(project.fullName) == "Job Types"
            }
            it("has a display name") {
                expect(project.displayName) == "Job Types"
            }
            it("has a display name or null?") {
                expect(project.displayNameOrNull).to(beNil())
            }
            it("has a full display name") {
                expect(project.fullDisplayName) == "Job Types"
            }
            it("has 8 jobs") {
                expect(project.jobs.count) == 8
            }
            it("has no health reports") {
                expect(project.healthReport).notTo(beNil())
                expect(project.healthReport.count) == 0
            }
            it("has a primary view") {
                expect(project.primaryView["name"]) == "All"
            }
            it("has a view") {
                expect(project.views).notTo(beNil())
                expect(project.views.count) == 1
            }
            it("has actions") {
                expect(project.actions).notTo(beNil())
                expect(project.actions.count) == 2
                expect(project.actions.last!["_class"]) == "com.cloudbees.plugins.credentials.ViewCredentialsAction"
            }
        }
    }
}
