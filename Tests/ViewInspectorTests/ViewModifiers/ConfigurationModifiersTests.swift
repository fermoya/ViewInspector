import XCTest
import SwiftUI
@testable import ViewInspector

// MARK: - ViewControlAttributesTests

final class ViewControlAttributesTests: XCTestCase {
    
    func testLabelsHidden() throws {
        let sut = EmptyView().labelsHidden()
        XCTAssertNoThrow(try sut.inspect().emptyView())
    }
    
    #if os(watchOS)
    func testDefaultWheelPickerItemHeight() throws {
        let sut = EmptyView().defaultWheelPickerItemHeight(5)
        XCTAssertNoThrow(try sut.inspect().emptyView())
    }
    #endif
    
    #if os(macOS)
    func testHorizontalRadioGroupLayout() throws {
        let sut = EmptyView().horizontalRadioGroupLayout()
        XCTAssertNoThrow(try sut.inspect().emptyView())
    }
    
    func testControlSize() throws {
        let sut = EmptyView().controlSize(.mini)
        XCTAssertNoThrow(try sut.inspect().emptyView())
    }
    #endif
}

// MARK: - StatusBarConfigurationTests

final class StatusBarConfigurationTests: XCTestCase {
    
    #if os(iOS)
    func testStatusBarHidden() throws {
        let sut = EmptyView().statusBar(hidden: false)
        XCTAssertNoThrow(try sut.inspect().emptyView())
    }
    #endif
}
