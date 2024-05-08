//
//  FrameworksAppApp.swift
//  FrameworksApp
//
//  Created by Jan Rydzewski on 08/05/2024.
//

import SwiftUI

@main
struct FrameworksAppApp: App {
    var body: some Scene {
        WindowGroup {
            FrameworkGridView(viewModel: FrameworkGridViewModel())
        }
    }
}
