//
//  FrameworkDetailsView.swift
//  FrameworksApp
//
//  Created by Jan Rydzewski on 08/05/2024.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkListTile(framework: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link("Learn More", destination: URL(string: framework.urlString)!)
                .buttonStyle(.bordered)
                .controlSize(.large)
                .tint(.red)

        }
    }
}


#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework)
}
