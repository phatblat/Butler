//
//  MavenModuleSetSpec.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 6/18/17.
//

@testable import Butler
import Quick
import Nimble
import Foundation

class MavenModuleSetSpec: QuickSpec {
    override func spec() {
        describe("maven module set") {
            let jsonFile: NSString = "MavenModuleSet.json"
            var job: MavenModuleSet! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                job = try! decoder.decode(MavenModuleSet.self, from: data)
            }

            it("has class") {
                expect(job._class) == JavaClass.mavenModuleSet
            }
            it("has actions") {
                expect(job.actions.count) == 4
            }
            it("is buildable") {
                expect(job.buildable) == true
            }
            it("has no builds") {
                expect(job.builds.count) == 0
            }
            it("has color") {
                expect(job.color) == "notbuilt"
            }
            it("is not concurrent") {
                expect(job.concurrentBuild) == false
            }
            it("has an empty description") {
                expect(job.description) == ""
            }
            it("has a display name") {
                expect(job.displayName) == "Maven"
            }
            it("has no display name or null") {
                expect(job.displayNameOrNull).to(beNil())
            }
            it("has no downstream projects") {
                expect(job.downstreamProjects.count) == 0
            }
            it("has no first build") {
                expect(job.firstBuild).to(beNil())
            }
            it("has a full display name") {
                expect(job.fullDisplayName) == "Job Types » Maven"
            }
            it("has a full name") {
                expect(job.fullName) == "Job Types/Maven"
            }
            it("has no health reports") {
                expect(job.healthReport.count) == 0
            }
            it("is not in queue") {
                expect(job.inQueue) == false
            }
            it("does not keep dependencies") {
                expect(job.keepDependencies) == false
            }
            it("has no last builds") {
                expect(job.lastBuild).to(beNil())
                expect(job.lastCompletedBuild).to(beNil())
                expect(job.lastFailedBuild).to(beNil())
                expect(job.lastStableBuild).to(beNil())
                expect(job.lastSuccessfulBuild).to(beNil())
                expect(job.lastUnstableBuild).to(beNil())
                expect(job.lastUnsuccessfulBuild).to(beNil())
            }
            it("has no modules") {
                expect(job.modules.count) == 0
            }
            it("has a name") {
                expect(job.name) == "Maven"
            }
            it("has a next build number") {
                expect(job.nextBuildNumber) == 1
            }
            it("has no properties") {
                expect(job.property.count) == 0
            }
            it("has no queue item") {
                expect(job.queueItem).to(beNil())
            }
            it("has no scm") {
                expect(job.scm["_class"]) == JavaClass.nullScm
            }
            it("has no upstream projects") {
                expect(job.upstreamProjects.count) == 0
            }
            it("has a url") {
                expect(job.url.absoluteString) == "http://jenkins.log-g.co/job/Job%20Types/job/Maven/"
            }
        }
    }
}
