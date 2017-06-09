//
//  MatrixProjectSpec.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 6/9/17.
//

@testable import Butler
import Quick
import Nimble

class MatrixProjectSpec: QuickSpec {
    override func spec() {
        describe("matrix project") {
            let jsonFile: NSString = "MatrixProject.json"
            var job: MatrixProject! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                job = try! decoder.decode(MatrixProject.self, from: data)
            }

            it("has class") {
                expect(job._class) == "hudson.matrix.MatrixProject"
            }
            it("has active configurations") {
                expect(job.activeConfigurations.count) == 2
                expect(job.activeConfigurations.first!.color) == "blue"
            }
            it("is buildable") {
                expect(job.buildable) == true
            }
            it("has some builds") {
                expect(job.builds.count) == 13
            }
            it("is blue") {
                expect(job.color) == "blue"
            }
            it("is not concurrent") {
                expect(job.concurrentBuild) == false
            }
            it("has a description") {
                expect(job.description) == "Swift bindings for the Jenkins API. Multi-configuration build testing all distribution methods."
            }
            it("has a display name") {
                expect(job.displayName) == "ButlerMatrix"
            }
            it("has no display name or null") {
                expect(job.displayNameOrNull).to(beNil())
            }
            it("has no downstream projects") {
                expect(job.downstreamProjects.count) == 0
            }
            it("has a first build") {
                expect(job.firstBuild).toNot(beNil())
            }
            it("has a full display name") {
                expect(job.fullDisplayName) == "ButlerMatrix"
            }
            it("has a full name") {
                expect(job.fullName) == "ButlerMatrix"
            }
            it("has a health report") {
                expect(job.healthReport).notTo(beNil())
                expect(job.healthReport.count) == 1
                expect(job.healthReport.first!.description) == "Build stability: 3 out of the last 5 builds failed."
                expect(job.healthReport.first!.score) == 40
            }
            it("is not in queue") {
                expect(job.inQueue) == false
            }
            it("does not keep dependencies") {
                expect(job.keepDependencies) == false
            }
            it("has no downstream projects") {
                expect(job.downstreamProjects) == []
            }
            it("has a last build") {
                expect(job.lastBuild!.number) == 13
                expect(job.lastBuild!.url.absoluteString) == "http://jenkins.log-g.co/job/ButlerMatrix/13/"
            }
            it("has a last complete build") {
                expect(job.lastCompletedBuild!.number) == 13
                expect(job.lastCompletedBuild!.url.absoluteString) == "http://jenkins.log-g.co/job/ButlerMatrix/13/"
            }
            it("has a last stable build") {
                expect(job.lastStableBuild!.number) == 13
                expect(job.lastStableBuild!.url.absoluteString) == "http://jenkins.log-g.co/job/ButlerMatrix/13/"
            }
            it("has a last successful build") {
                expect(job.lastSuccessfulBuild!.number) == 13
                expect(job.lastSuccessfulBuild!.url.absoluteString) == "http://jenkins.log-g.co/job/ButlerMatrix/13/"
            }
            it("does not have a last failed build") {
                expect(job.lastFailedBuild!.number) == 12
                expect(job.lastFailedBuild!.url.absoluteString) == "http://jenkins.log-g.co/job/ButlerMatrix/12/"
            }
            it("does not have a last unstable build") {
                expect(job.lastUnstableBuild).to(beNil())
            }
            it("does not have a last unsuccessful build") {
                expect(job.lastUnsuccessfulBuild!.number) == 12
                expect(job.lastUnsuccessfulBuild!.url.absoluteString) == "http://jenkins.log-g.co/job/ButlerMatrix/12/"
            }
            it("has a name") {
                expect(job.name) == "ButlerMatrix"
            }
            it("has a next build number") {
                expect(job.nextBuildNumber) == 14
            }
            it("has properties") {
                expect(job.property.count) == 2
            }
            it("has no queue item") {
                expect(job.queueItem).to(beNil())
            }
//            it("has no scm") {
//                expect(job.scm["_class"]) == "hudson.scm.NullSCM"
//            }
            it("has no upstream projects") {
                expect(job.upstreamProjects) == []
            }
            it("has a url") {
                expect(job.url) == URL(string: "http://jenkins.log-g.co/job/ButlerMatrix/")
            }
        }
    }
}
