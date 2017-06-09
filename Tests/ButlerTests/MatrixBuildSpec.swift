//
//  MatrixBuildSpec.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 6/9/17.
//

@testable import Butler
import Quick
import Nimble

class MatrixBuildSpec: QuickSpec {
    override func spec() {
        describe("matrix build") {
            let jsonFile: NSString = "MatrixBuild.json"
            var build: MatrixBuild! = nil

            beforeEach {
                let bundle = Bundle(for: type(of: self))
                let url = bundle.url(forResource: jsonFile.deletingPathExtension,
                                     withExtension: jsonFile.pathExtension,
                                     subdirectory: "JSON/Job")!
                let data = try! Data(contentsOf: url)
                let decoder = JSONDecoder()
                build = try! decoder.decode(MatrixBuild.self, from: data)
            }

            it("has class") {
                expect(build._class) == JavaClass.matrixBuild
            }
            it("has a number") {
                expect(build.number) == 13
            }
            it("has a url") {
                expect(build.url.absoluteString) == "http://jenkins.log-g.co/job/ButlerMatrix/13/"
            }
        }
    }
}
