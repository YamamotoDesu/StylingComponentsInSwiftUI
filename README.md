# StylingComponentsInSwiftUI
https://movingparts.io/styling-components-in-swiftui

CustomButtonStyle
```swift
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
```

```swift
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
```
<img width="514" alt="スクリーンショット 2023-03-11 13 25 09" src="https://user-images.githubusercontent.com/47273077/224464721-79c8bdaa-dc07-4c3b-9a28-97b233eb284a.png">

