# FlipAnimation

With this function you can make any View to flip with a 3d rotation, and use it to create an illusion of a two side effect View.

### Example

```swift
    import SwiftUI
    import FlipAnimation

    struct ContentView: View {
        
        // The side that we want to be shown
        @State private var frontSide = true
        
        var body: some View {
            VStack {
                if frontSide {
                    Text("Hello, World!")
                } else {
                    Text("Back Side Hello, World!")
                    // IMPORTANT: It's important to rotate the back side view 180 degrees
                    .rotation3DEffect(Angle(degrees: 180), axis: (x: 0, y: 1, z: 0))
                }
            }
            .frame(width: 300, height: 250)
            .background(Color.blue)
            .cornerRadius(30)
            .onTapGesture {
                self.frontSide.toggle()
            }
            // The func that flips the view
                .flip(frontSideVisible: frontSide, duration: 2.0)
        }
    }
```
