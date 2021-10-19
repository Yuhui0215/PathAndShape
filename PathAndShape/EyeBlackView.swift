//
//  EyeBlackView.swift
//  PathAndShape
//
//  Created by User08 on 2021/10/19.
//

import Foundation
import SwiftUI

struct EyeBlackView:Shape{
    func path(in rect: CGRect) -> Path {
        Path(ellipseIn: CGRect(x: 54.9*2, y: 38.0*2, width: 4.0*2, height: 6.0*2))// black part
    }
}

struct Eyeblack_Previews: PreviewProvider {
    static var previews: some View {
        EyeBlackView()
    }
}
