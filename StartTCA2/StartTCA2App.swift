//
//  StartTCA2App.swift
//  StartTCA
//
//  Created by Holden Hu on 2024/9/8.
//
import ComposableArchitecture
import SwiftUI

@main
struct StartTCA2App: App {
    static let store = Store(initialState: CounterFeature.State()) {
      CounterFeature()
        ._printChanges()
    }
    
    var body: some Scene {
      WindowGroup {
        CounterView(store: StartTCA2App.store)
      }
    }
}
