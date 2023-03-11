//
//  ContentView.swift
//  StylingComponentsInSwiftUI
//
//  Created by 山本響 on 2023/03/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Button(role: .destructive) {
                // Delete
            } label: {
                Label("Delete", systemImage: "trash")
            }
            Button("Cancel", role: .cancel) {
                // Cancel Deletion
            }
        }
        .buttonStyle(CustomButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            configuration.label
            Spacer()
        }
        .padding(EdgeInsets(top: 12, leading: 24, bottom: 12, trailing: 24))
        .font(.system(.title2, design: .rounded).bold())
        .padding(EdgeInsets(top: 12, leading: 24, bottom: 12, trailing: 24))
        .foregroundColor(.yellow)
        .background {
            Capsule()
                .stroke(.yellow, lineWidth: 2)
        }
    }
}
