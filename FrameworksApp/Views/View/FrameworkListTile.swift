//
//  FrameworkListTile.swift
//  FrameworksApp
//
//  Created by Jan Rydzewski on 08/05/2024.
//

import SwiftUI

struct FrameworkListTile: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(Color(.label))
        }
    }
}

#Preview {
    FrameworkListTile(framework: MockData.sampleFramework)
}
