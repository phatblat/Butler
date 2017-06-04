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
import SwiftyJSON

class FreeStyleProjectSpec: QuickSpec {
    override func spec() {
        describe("freestyle project job") {
            let jsonFile: NSString = "FreeStyleProject.json"
            var json: JSON! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self)) //.resourceURL!.appendingPathComponent("JSON/Job")
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                       withExtension: jsonFile.pathExtension,
                                    subdirectory: "JSON/Job")!
                let data = NSData(contentsOf: url)!
                json = JSON(data: data as Data)
            }

            it("has class") {
                expect(json["_class"]) == "hudson.model.FreeStyleProject"
            }
            it("has a url") {
                expect(json["url"]) == "http://mini.log-g.co/jenkins/job/whoami/"
            }
            it("is buildable") {
                expect(json["buildable"]) == true
            }
            it("is not concurrent") {
                expect(json["concurrentBuild"]) == false
            }
            it("has an empty description") {
                expect(json["description"]) == ""
            }
            it("has a name") {
                expect(json["name"]) == "whoami"
            }
            it("has a full name") {
                expect(json["fullName"]) == "whoami"
            }
            it("has a display name") {
                expect(json["displayName"]) == "whoami"
            }
            it("has a full display name") {
                expect(json["fullDisplayName"]) == "whoami"
            }
            it("has 2 builds") {
                expect(json["builds"].count) == 2
            }
            it("has a next build number") {
                expect(json["nextBuildNumber"]) == 3
            }
            it("has no scm") {
                expect(json["scm"]["_class"]) == "hudson.scm.NullSCM"
            }
            it("has no properties") {
                expect(json["property"]) == []
            }
            it("has no downstream projects") {
                expect(json["downstreamProjects"]) == []
            }
            it("has no uptream projects") {
                expect(json["upstreamProjects"]) == []
            }
            it("has a health report") {
                expect(json["healthReport"]).notTo(beNil())
                expect(json["healthReport"][0]["score"]) == 100
            }
            it("is not in the queue") {
                expect(json["inQueue"]) == false
            }
            it("has no queue item") {
                expect(json["queueItem"].string).to(beNil())
                expect(json["queueItem"].exists()) == true
                expect(json["queueItem"].isEmpty) == true
                expect(json["queueItem"].null) == NSNull()
                expect(json["queueItem"].type) == SwiftyJSON.Type.null
            }
            it("does not keep dependencies") {
                expect(json["keepDependencies"]) == false
            }
            it("has a last build") {
                expect(json["lastBuild"]["number"]) == 2
            }
            it("has a last complete build") {
                expect(json["lastCompletedBuild"]["number"]) == 2
            }
            it("has a last stable build") {
                expect(json["lastStableBuild"]["number"]) == 2
            }
            it("has a last successful build") {
                expect(json["lastSuccessfulBuild"]["number"]) == 2
            }
            it("does not have a last failed build") {
                expect(json["lastFailedBuild"]["number"].int).to(beNil())
            }
            it("does not have a last unstable build") {
                expect(json["lastUnstableBuild"]["number"].int).to(beNil())
            }
            it("does not have a last unsuccessful build") {
                expect(json["lastUnsuccessfulBuild"]["number"].int).to(beNil())
            }
        }
    }
}
