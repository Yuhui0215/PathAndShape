//  TailFin.swift
//  PathAndShape

import Foundation
import SwiftUI

struct TailFin: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 310, y: 330))
            path.addQuadCurve(to: CGPoint(x: 298, y: 304), control: CGPoint(x: 305, y: 310))
            path.addQuadCurve(to: CGPoint(x: 304, y: 285), control: CGPoint(x: 305, y: 300))
            path.addQuadCurve(to: CGPoint(x: 328, y: 286), control: CGPoint(x: 315, y: 302))
            path.addQuadCurve(to: CGPoint(x: 342, y: 302), control: CGPoint(x: 320, y: 305))
            path.addQuadCurve(to: CGPoint(x: 342, y: 335), control: CGPoint(x: 340, y: 315))
            path.addQuadCurve(to: CGPoint(x: 352, y: 339), control: CGPoint(x: 347, y: 340))
            path.addQuadCurve(to: CGPoint(x: 354, y: 374), control: CGPoint(x: 350, y: 350))
            path.closeSubpath()
        }
    }
}

struct TailFin_Previews: PreviewProvider {
    static var previews: some View {
        TailFin()
    }
}
