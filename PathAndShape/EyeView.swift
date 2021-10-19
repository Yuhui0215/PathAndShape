//
//  EyeView.swift
//  PathAndShape
//
//  Created by User08 on 2021/10/19.
//

import Foundation
import SwiftUI

struct EyeView: Shape{
    func path(in rect: CGRect) -> Path {
        
        Path(ellipseIn: CGRect(x: 53.0*2, y: 36.4*2, width: 15.2*2, height: 10.4*2)) //white part
        //x: 53.0*2, y: 36.4*2, width: 15.2*2, height: 10.4*2
    }
}

struct Eye_Previews: PreviewProvider {
    static var previews: some View {
        EyeView()
    }
}
