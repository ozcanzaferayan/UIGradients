// https://github.com/Quick/Quick

import Quick
import Nimble
@testable import UIGradients

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("Gradients") {
            let gradient = GradientType.grade_grey
            it("name must print name") {
                expect(gradient.name) == "grade_grey"
            }
            context("color counts") {
                context("two colored") {
                    let gradient = GradientType.blu.gradientLayer
                    it("hex values must return 2"){
                        expect(gradient.colors?.count) == 2
                    }
                    it("locations must return 0 and 1") {
                        expect(gradient.locations) == [0.0,1.0]
                    }
                }
                context("three colored") {
                    let gradient = GradientType.lunada.gradientLayer
                    it("hex values must return 2"){
                        expect(gradient.colors?.count) == 3
                    }
                    it("locations must return 0.0, 0.5 1.0") {
                        expect(gradient.locations) == [0.0, 0.5, 1.0]
                    }
                }
                context("four colored") {
                    let gradient = GradientType.hydrogen.gradientLayer
                    it("hex values must return 2"){
                        expect(gradient.colors?.count) == 4
                    }
                    it("locations must return 0.0, 0.3, 0.6, 1.0") {
                        expect(gradient.locations) == [0.0, 0.3, 0.6, 1.0]
                    }
                }
            }
        }
    }
}
