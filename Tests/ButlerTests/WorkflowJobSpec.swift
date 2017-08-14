//
//  WorkflowJobSpec.swift
//  Butler
//
//  Created by Ben Chatelain on 8/13/17.
//
//

@testable import Butler
import Quick
import Nimble
import Foundation

class WorkflowJobSpec: QuickSpec {
    override func spec() {
        describe("workflow job") {
            let jsonFile: NSString = "WorkflowJob2.json"
            var project: WorkflowJob! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                project = try! decoder.decode(WorkflowJob.self, from: data)
            }

            it("has class") {
                expect(project._class) == JavaClass.workflowJob
            }
            it("has actions") {
                expect(project.actions).notTo(beNil())
                expect(project.actions.count) == 6
                expect(project.actions.last!["_class"]) == JavaClass.viewCredentialsAction
            }
            it("is buildable") {
                expect(project.buildable) == true
            }
            it("has no builds") {
                expect(project.builds).notTo(beNil())
                expect(project.builds.count) == 0
            }
            it("has a color") {
                expect(project.color) == "notbuilt"
            }
            it("is concurrent") {
                expect(project.concurrentBuild) == true
            }
            it("has an empty description") {
                expect(project.description).to(beNil())
            }
            it("has a display name") {
                expect(project.displayName) == "Pipeline"
            }
            it("has no display name or null") {
                expect(project.displayNameOrNull).to(beNil())
            }
            it("has no first build") {
                expect(project.firstBuild).to(beNil())
            }
            it("has a full display name") {
                expect(project.fullDisplayName) == "Job Types » Pipeline"
            }
            it("has a full name") {
                expect(project.fullName) == "Job Types/Pipeline"
            }
            it("has no health reports") {
                expect(project.healthReport).notTo(beNil())
                expect(project.healthReport.count) == 0
            }
            it("is not in queue") {
                expect(project.inQueue) == false
            }
            it("does not keep dependencies") {
                expect(project.keepDependencies) == false
            }
            it("has no last build") {
                expect(project.lastBuild).to(beNil())
            }
            it("has no last completed build") {
                expect(project.lastCompletedBuild).to(beNil())
            }
            it("has no last failed build") {
                expect(project.lastFailedBuild).to(beNil())
            }
            it("has no last stable build") {
                expect(project.lastStableBuild).to(beNil())
            }
            it("has no last successful build") {
                expect(project.lastSuccessfulBuild).to(beNil())
            }
            it("has no last unstable build") {
                expect(project.lastUnstableBuild).to(beNil())
            }
            it("has no last unsuccessful build") {
                expect(project.lastUnsuccessfulBuild).to(beNil())
            }
            it("has a name") {
                expect(project.name) == "Pipeline"
            }
            it("has a next build number") {
                expect(project.nextBuildNumber) == 1
            }
            it("has no properties") {
                expect(project.property).notTo(beNil())
                expect(project.property.count) == 0
            }
            it("has no queue item") {
                expect(project.queueItem).to(beNil())
            }
            it("has a url") {
                expect(project.url) == URL(string: "http://jenkins.log-g.co/job/Job%20Types/job/Pipeline/")
            }
        }
    }
}
