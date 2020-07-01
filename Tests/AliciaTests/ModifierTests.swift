import Carbon
import XCTest

@testable import Alicia

final class ModifierTests: XCTestCase {
    func testModifierFlagsShift() {
        XCTAssertEqual(Modifier.flags(for: ["shift"]), UInt32(shiftKey))
    }

    func testModifierFlagsControl() {
        XCTAssertEqual(Modifier.flags(for: ["ctrl"]), UInt32(controlKey))
        XCTAssertEqual(Modifier.flags(for: ["control"]), UInt32(controlKey))
    }

    func testModifierFlagsOption() {
        XCTAssertEqual(Modifier.flags(for: ["alt"]), UInt32(optionKey))
        XCTAssertEqual(Modifier.flags(for: ["opt"]), UInt32(optionKey))
        XCTAssertEqual(Modifier.flags(for: ["option"]), UInt32(optionKey))
    }

    func testModifierFlagsCommand() {
        XCTAssertEqual(Modifier.flags(for: ["cmd"]), UInt32(cmdKey))
        XCTAssertEqual(Modifier.flags(for: ["command"]), UInt32(cmdKey))
    }

    func testModifierFlagsHyper() {
        XCTAssertEqual(Modifier.flags(for: ["hyper"]), UInt32(cmdKey | optionKey | shiftKey | controlKey))
    }

    func testModifierFlagsMultiple() {
        XCTAssertEqual(
            Modifier.flags(for: ["shift", "ctrl", "alt", "cmd"]),
            UInt32(shiftKey | controlKey | optionKey | cmdKey)
        )
    }

    func testModifierFlagsCaseInsensitivity() {
        XCTAssertEqual(
            Modifier.flags(for: ["shift", "CTRL", "AlT", "cMd"]),
            UInt32(shiftKey | controlKey | optionKey | cmdKey)
        )
    }
}
