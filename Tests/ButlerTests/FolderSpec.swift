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
                let data = NSData(contentsOf: url)!

                let json = try! JSONSerialization.jsonObject(with: data as Data, options: []) as! JSONDictionary
                project = Folder(json: json)
            }

            it("has class") {
                expect(project._class) == "com.cloudbees.hudson.plugins.folder.Folder"
            }
            it("has a url") {
                expect(project.url) == URL(string: "http://jenkins.log-g.co/job/Job%20Types/")
            }
        }
    }
}
