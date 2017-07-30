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
import Foundation

class ExternalJobSpec: QuickSpec {
    override func spec() {
        describe("external job") {
            let jsonFile: NSString = "ExternalJob.json"
            var job: ExternalJob! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                job = try! decoder.decode(ExternalJob.self, from: data)
            }

            it("has class") {
                expect(job._class) == JavaClass.externalJob
            }
            it("has a url") {
                expect(job.url) == URL(string: "http://jenkins.log-g.co/job/Job%20Types/job/External%20Job/")
            }
            it("is buildable") {
                expect(job.buildable) == false
            }
            it("is notbuilt color") {
                expect(job.color) == "notbuilt"
            }
            it("has an empty description") {
                expect(job.description) == ""
            }
            it("has a name") {
                expect(job.name) == "External Job"
            }
            it("has a full name") {
                expect(job.fullName) == "Job Types/External Job"
            }
            it("has a display name") {
                expect(job.displayName) == "External Job"
            }
            it("has a display name or nil") {
                expect(job.displayNameOrNull).to(beNil())
            }
            it("has a full display name") {
                expect(job.fullDisplayName) == "Job Types » External Job"
            }
            it("has no builds") {
                expect(job.builds.count) == 0
            }
            it("has a next build number") {
                expect(job.nextBuildNumber) == 1
            }
            it("has no properties") {
                expect(job.property) == []
            }
            it("has a health report") {
                expect(job.healthReport).notTo(beNil())
                expect(job.healthReport) == []
            }
            it("has no queue item") {
                expect(job.queueItem).to(beNil())
            }
            it("does not keep dependencies") {
                expect(job.keepDependencies) == false
            }
            it("has no last build") {
                expect(job.lastBuild).to(beNil())
            }
            it("has no last complete build") {
                expect(job.lastCompletedBuild).to(beNil())
            }
            it("has no last stable build") {
                expect(job.lastStableBuild).to(beNil())
            }
            it("has no last successful build") {
                expect(job.lastSuccessfulBuild).to(beNil())
            }
            it("does not have a last failed build") {
                expect(job.lastFailedBuild).to(beNil())
            }
            it("does not have a last unstable build") {
                expect(job.lastUnstableBuild).to(beNil())
            }
            it("does not have a last unsuccessful build") {
                expect(job.lastUnsuccessfulBuild).to(beNil())
            }
            it("has some actions") {
                expect(job.actions.count) == 3
                expect(job.actions.last!["_class"]) == "com.cloudbees.plugins.credentials.ViewCredentialsAction"
            }
        }
    }
}
