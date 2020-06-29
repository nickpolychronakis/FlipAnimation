import SwiftUI

@available(iOS 13.0, *)
extension View {
    
    /// It flips the view with a 3d animation
    /// - Parameters:
    ///   - frontSideVisible: True if the front side of the view is visible
    ///   - duration: The duration we want the animation to take place. Default 1.0 sec
    /// - Returns: It returns the same view with some modifiers attached
    public func flip(frontSideVisible: Bool, duration: Double = 1.0) -> some View {
        return self
            .animation(Animation.linear(duration: 0.01).delay(duration/2.0))
            .rotation3DEffect(Angle(degrees: frontSideVisible ? 0.0 : 180), axis: (x: 0, y: 1, z: 0))
            .animation(Animation.easeInOut(duration: duration))
    }
}
