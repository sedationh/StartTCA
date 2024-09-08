//
//  AppFeatureTests.swift
//  StartTCA2Tests
//
//  Created by Holden Hu on 2024/9/8.
//

import ComposableArchitecture
import XCTest

@testable import StartTCA2

final class AppFeatureTests: XCTestCase {
  func testIncrementInFirstTab() async {
    let store = await TestStore(initialState: AppFeature.State()) {
      AppFeature()
    }

    await store.send(\.tab1.incrementButtonTapped) {
      $0.tab1.count = 1
    }
  }
}
