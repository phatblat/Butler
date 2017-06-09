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

class FreeStyleProjectSpec: QuickSpec {
    override func spec() {
        describe("freestyle project job") {
            let jsonFile: NSString = "FreeStyleProject.json"
            var project: FreeStyleProject! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                       withExtension: jsonFile.pathExtension,
                                    subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                project = try! decoder.decode(FreeStyleProject.self, from: data)
            }

            it("has class") {
                expect(project._class) == "hudson.model.FreeStyleProject"
            }
            it("has a url") {
                expect(project.url) == URL(string: "http://mini.log-g.co/jenkins/job/whoami/")
            }
            it("is buildable") {
                expect(project.buildable) == true
            }
            it("is blue") {
                expect(project.color) == "blue"
            }
            it("is not concurrent") {
                expect(project.concurrentBuild) == false
            }
            it("has an empty description") {
                expect(project.description) == ""
            }
            it("has a name") {
                expect(project.name) == "whoami"
            }
            it("has a full name") {
                expect(project.fullName) == "whoami"
            }
            it("has a display name") {
                expect(project.displayName) == "whoami"
            }
            it("has a full display name") {
                expect(project.fullDisplayName) == "whoami"
            }
            it("has 2 builds") {
                expect(project.builds.count) == 2
            }
            it("has a next build number") {
                expect(project.nextBuildNumber) == 3
            }
            it("has no scm") {
                expect(project.scm["_class"]) == "hudson.scm.NullSCM"
            }
            it("has no properties") {
                expect(project.property) == []
            }
            it("has no downstream projects") {
                expect(project.downstreamProjects) == []
            }
            it("has no uptream projects") {
                expect(project.upstreamProjects) == []
            }
            it("has a health report") {
                expect(project.healthReport).notTo(beNil())
                let healthReport = project.healthReport.first!
                expect(healthReport.description) == "Build stability: No recent builds failed."
                expect(healthReport.score) == 100
            }
            it("is not in the queue") {
                expect(project.inQueue) == false
            }
            it("has no queue item") {
                expect(project.queueItem).to(beNil())
            }
            it("does not keep dependencies") {
                expect(project.keepDependencies) == false
            }
            it("has a last build") {
                expect(project.lastBuild.number) == 2
                expect(project.lastBuild.url.absoluteString) == "http://mini.log-g.co/jenkins/job/whoami/2/"
            }
            it("has a last complete build") {
                expect(project.lastCompletedBuild.number) == 2
                expect(project.lastCompletedBuild.url.absoluteString) == "http://mini.log-g.co/jenkins/job/whoami/2/"
            }
            it("has a last stable build") {
                expect(project.lastStableBuild.number) == 2
                expect(project.lastStableBuild.url.absoluteString) == "http://mini.log-g.co/jenkins/job/whoami/2/"
            }
            it("has a last successful build") {
                expect(project.lastSuccessfulBuild.number) == 2
                expect(project.lastSuccessfulBuild.url.absoluteString) == "http://mini.log-g.co/jenkins/job/whoami/2/"
            }
            it("does not have a last failed build") {
                expect(project.lastFailedBuild).to(beNil())
            }
            it("does not have a last unstable build") {
                expect(project.lastUnstableBuild).to(beNil())
            }
            it("does not have a last unsuccessful build") {
                expect(project.lastUnsuccessfulBuild).to(beNil())
            }
        }
    }
}
