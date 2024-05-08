//
//  FrameworkGridView.swift
//  FrameworksApp
//
//  Created by Jan Rydzewski on 08/05/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel: FrameworkGridViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) {
                        framework in
                                NavigationLink(value: framework) {
                            FrameworkListTile(framework: framework)
                        }
                        
                    }
                    
                }
                .navigationTitle("🍎 Frameworks")
                
                .padding()
                .navigationDestination(for: Framework.self) {
                    framework in FrameworkDetailsView(framework: framework)
                }
                
            }
            
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView(viewModel: FrameworkGridViewModel())
}
