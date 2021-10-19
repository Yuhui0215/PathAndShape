import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
            .resizable()
            .scaledToFill()
            .frame(width: 500, height: 800)
            .ignoresSafeArea()
            
            Text("魚仔好吃嗎？")
                .bold()
                .font(.title)
                .offset(x: 0, y:-290)
            
            
            ZStack {
                //tail fin
                TailFinView_right()
                TailFinView_right_border()
                    
                TailFinView_left()
                TailFinView_left_border()
                
                
                Path { path in
                    //tail
                    path.move(to: CGPoint(x: 347, y: 706))
                    path.addCurve(to: CGPoint(x: 345, y: 515), control1: CGPoint(x: 420, y: 695), control2:     CGPoint(x: 470, y: 600))
                    path.addCurve(to: CGPoint(x: 362, y: 652), control1: CGPoint(x: 395, y: 575), control2:     CGPoint(x: 428, y: 630))
                    path.closeSubpath()
                }
                .fill(Color(red:85/255 , green:85/255 , blue:85/255))
                
                //tail_border
                Path { path in
                    path.move(to: CGPoint(x: 347, y: 706))
                    path.addCurve(to: CGPoint(x: 345, y: 515), control1: CGPoint(x: 420, y: 695), control2:     CGPoint(x: 470, y: 600))
                    path.addCurve(to: CGPoint(x: 362, y: 652), control1: CGPoint(x: 395, y: 575), control2:     CGPoint(x: 428, y: 630))
                    path.closeSubpath()
                }
                .stroke()
                
                //shadow of butt
                Path(roundedRect: CGRect(x: 50, y: 272, width: 140, height: 80), cornerRadius: 100)
                    .frame(width: 200, height: 100)
                    .foregroundColor(Color(red:60/255 , green:60/255 , blue:60/255))
            }
                
                
            ZStack {
                Path { path in
                    //left_wing
                    path.move(to: CGPoint(x: 165, y: 562))
                    path.addQuadCurve(to: CGPoint(x: 155, y: 692), control: CGPoint(x: 112, y: 606))
                    path.addQuadCurve(to: CGPoint(x: 155, y: 692), control: CGPoint(x: 112, y: 606))
                    path.addQuadCurve(to: CGPoint(x: 150, y: 655), control: CGPoint(x: 149, y: 678))
                    path.addQuadCurve(to: CGPoint(x: 162, y: 673), control: CGPoint(x: 162, y: 665))
                    path.addQuadCurve(to: CGPoint(x: 172, y: 660), control: CGPoint(x: 163, y: 625))
                    path.addQuadCurve(to: CGPoint(x: 180, y: 565), control: CGPoint(x: 190, y: 625))
                    path.addQuadCurve(to: CGPoint(x: 165, y: 562), control: CGPoint(x: 170, y: 560))
                    path.closeSubpath()
                    //right_wing
                    path.move(to: CGPoint(x: 315, y: 570))
                    path.addCurve(to: CGPoint(x: 372, y: 647), control1: CGPoint(x: 305, y: 505), control2:     CGPoint(x: 380, y: 590))
                    path.addQuadCurve(to: CGPoint(x: 355, y: 625), control: CGPoint(x: 368, y: 630))
                    path.closeSubpath()
                }
                .fill(Color(red:85/255 , green:85/255 , blue:85/255))
                
                Path { path in
                    path.move(to: CGPoint(x: 165, y: 562))
                    path.addQuadCurve(to: CGPoint(x: 155, y: 692), control: CGPoint(x: 112, y: 606))
                    path.addQuadCurve(to: CGPoint(x: 155, y: 692), control: CGPoint(x: 112, y: 606))
                    path.addQuadCurve(to: CGPoint(x: 150, y: 655), control: CGPoint(x: 149, y: 678))
                    path.addQuadCurve(to: CGPoint(x: 162, y: 673), control: CGPoint(x: 162, y: 665))
                    path.addQuadCurve(to: CGPoint(x: 172, y: 660), control: CGPoint(x: 163, y: 625))
                    path.addQuadCurve(to: CGPoint(x: 180, y: 565), control: CGPoint(x: 190, y: 625))
                    path.addQuadCurve(to: CGPoint(x: 165, y: 562), control: CGPoint(x: 170, y: 560))
                    path.closeSubpath()
        
                    path.move(to: CGPoint(x: 315, y: 570))
                    path.addCurve(to: CGPoint(x: 372, y: 647), control1: CGPoint(x: 305, y: 505), control2:     CGPoint(x: 380, y: 590))
                    path.addQuadCurve(to: CGPoint(x: 355, y: 625), control: CGPoint(x: 368, y: 630))
                    path.closeSubpath()
                }
                .stroke()
                
                
                Path { path in
                    //body
                    path.move(to: CGPoint(x: 180, y: 565))
                    //left side
                    path.addQuadCurve(to: CGPoint(x: 175, y: 645), control: CGPoint(x: 170, y: 600))
                    //left foot
                    path.addQuadCurve(to: CGPoint(x: 192, y: 707), control: CGPoint(x: 163, y: 690))
                    path.addLine(to: CGPoint(x: 200, y: 706))
                    //left hand
                    path.addQuadCurve(to: CGPoint(x: 225, y: 675), control: CGPoint(x: 235, y: 718))
                    //chest
                    path.addQuadCurve(to: CGPoint(x: 249, y: 674), control: CGPoint(x: 235, y: 680))
                    //right hand
                    path.addQuadCurve(to: CGPoint(x: 295, y: 690), control: CGPoint(x: 241, y: 740))
                    //right foot
                    path.addQuadCurve(to: CGPoint(x: 347, y: 706), control: CGPoint(x: 305, y: 720))
                    //right side
                    path.addQuadCurve(to: CGPoint(x: 307, y: 560), control: CGPoint(x: 392, y: 645))
                    //neck
                    path.addLine(to: CGPoint(x: 298, y: 531))
                    path.closeSubpath()
                }
                .fill(Color(red:85/255 , green:85/255 , blue:85/255))
                
                Path { path in
                    //body
                    path.move(to: CGPoint(x: 180, y: 565))
                    //left side
                    path.addQuadCurve(to: CGPoint(x: 175, y: 645), control: CGPoint(x: 170, y: 600))
                    //left foot
                    path.addQuadCurve(to: CGPoint(x: 192, y: 707), control: CGPoint(x: 163, y: 690))
                    path.addLine(to: CGPoint(x: 200, y: 706))
                    //left hand
                    path.addQuadCurve(to: CGPoint(x: 225, y: 675), control: CGPoint(x: 235, y: 718))
                    //chest
                    path.addQuadCurve(to: CGPoint(x: 249, y: 674), control: CGPoint(x: 235, y: 680))
                    //right hand
                    path.addQuadCurve(to: CGPoint(x: 295, y: 690), control: CGPoint(x: 241, y: 740))
                    //butt
                    //right foot
                    path.addQuadCurve(to: CGPoint(x: 347, y: 706), control: CGPoint(x: 305, y: 720))
                    //right side
                    path.addQuadCurve(to: CGPoint(x: 307, y: 560), control: CGPoint(x: 392, y: 645))
                    //neck
                    path.addLine(to: CGPoint(x: 298, y: 531))
                    path.closeSubpath()
                    
                    path.move(to: CGPoint(x: 200, y: 706))
                    path.addQuadCurve(to: CGPoint(x: 185, y: 645), control: CGPoint(x: 175, y: 685))
                    
                    path.move(to: CGPoint(x: 225, y: 675))
                    path.addQuadCurve(to: CGPoint(x: 193, y: 630), control: CGPoint(x: 200, y: 660))
                    
                    path.move(to: CGPoint(x: 249, y: 674))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 618), control: CGPoint(x: 260, y: 640))
                    
                    path.move(to: CGPoint(x: 295, y: 690))
                    path.addQuadCurve(to: CGPoint(x: 300, y: 627), control: CGPoint(x: 301, y: 640))
                    
                    path.move(to: CGPoint(x: 298, y: 660))
                    path.addQuadCurve(to: CGPoint(x: 320, y: 642), control: CGPoint(x: 305, y: 650))
                }
                .stroke()
                
                
                Path { path in
                    //left_ear
                    path.move(to: CGPoint(x: 162, y: 480))
                    path.addQuadCurve(to: CGPoint(x: 97, y: 494), control: CGPoint(x: 120, y: 457))
                    path.addQuadCurve(to: CGPoint(x: 148, y: 500), control: CGPoint(x: 123, y: 512))
                    path.closeSubpath()
                    //right_ear
                    path.move(to: CGPoint(x: 279, y: 459))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 387), control: CGPoint(x: 305, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 454), control: CGPoint(x: 250, y: 420))
                    path.closeSubpath()
                
                    //horn_left
                    path.move(to: CGPoint(x: 182, y: 465))
                    path.addCurve(to: CGPoint(x: 176, y: 469), control1: CGPoint(x: 182, y: 447), control2:     CGPoint(x: 163, y: 460))
                    path.closeSubpath()
                    //horn_right
                    path.move(to: CGPoint(x: 240, y: 451))
                    path.addCurve(to: CGPoint(x: 230, y: 451), control1: CGPoint(x: 243, y: 434), control2:     CGPoint(x: 219, y: 437))
                    path.closeSubpath()
                
                
                    //something beside left face
                    //top
                    path.move(to: CGPoint(x: 144, y: 511))
                    path.addCurve(to: CGPoint(x: 143, y: 532), control1: CGPoint(x: 126, y: 530), control2:   CGPoint(x: 136, y: 535))
                    path.closeSubpath()
                    //bottom
                    path.move(to: CGPoint(x: 144, y: 535))
                    path.addCurve(to: CGPoint(x: 150, y: 556), control1: CGPoint(x: 136, y: 552), control2:  CGPoint(x: 140, y: 560))
                    path.closeSubpath()
                
                    //something beside right face
                    //top
                    path.move(to: CGPoint(x: 301, y: 474))
                    path.addCurve(to: CGPoint(x: 309, y: 492), control1: CGPoint(x: 320, y: 477), control2:     CGPoint(x: 330, y: 490))
                    path.closeSubpath()
                    //bottom
                    path.move(to: CGPoint(x: 311, y: 495))
                    path.addCurve(to: CGPoint(x: 313, y: 514), control1: CGPoint(x: 330, y: 495), control2:     CGPoint(x: 335, y: 515))
                    path.closeSubpath()
                }
                .fill(Color(red:85/255 , green:85/255 , blue:85/255))
                
                Path { path in
                    //left_ear
                    path.move(to: CGPoint(x: 162, y: 480))
                    //top
                    path.addQuadCurve(to: CGPoint(x: 97, y: 494), control: CGPoint(x: 120, y: 457))
                    //bottom
                    path.addQuadCurve(to: CGPoint(x: 148, y: 500), control: CGPoint(x: 123, y: 512))
                    path.closeSubpath()
                
                    //right_ear
                    path.move(to: CGPoint(x: 279, y: 459))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 387), control: CGPoint(x: 305, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 454), control: CGPoint(x: 250, y: 420))
                    path.closeSubpath()
                
                    //horn_left
                    path.move(to: CGPoint(x: 182, y: 465))
                    path.addCurve(to: CGPoint(x: 176, y: 469), control1: CGPoint(x: 182, y: 447), control2:     CGPoint(x: 163, y: 460))
                    path.closeSubpath()
                    //horn_right
                    path.move(to: CGPoint(x: 240, y: 451))
                    path.addCurve(to: CGPoint(x: 230, y: 451), control1: CGPoint(x: 243, y: 434), control2:     CGPoint(x: 219, y: 437))
                    path.closeSubpath()
                
                    //something beside left face
                    //top
                    path.move(to: CGPoint(x: 144, y: 511))
                    path.addCurve(to: CGPoint(x: 143, y: 532), control1: CGPoint(x: 126, y: 530), control2:   CGPoint(x: 136, y: 535))
                    path.closeSubpath()
                    //bottom
                    path.move(to: CGPoint(x: 144, y: 535))
                    path.addCurve(to: CGPoint(x: 150, y: 556), control1: CGPoint(x: 136, y: 552), control2:  CGPoint(x: 140, y: 560))
                    path.closeSubpath()
                
                    //something beside right face
                    //top
                    path.move(to: CGPoint(x: 301, y: 474))
                    path.addCurve(to: CGPoint(x: 309, y: 492), control1: CGPoint(x: 320, y: 477), control2:     CGPoint(x: 330, y: 490))
                    path.closeSubpath()
                    //bottom
                    path.move(to: CGPoint(x: 311, y: 495))
                    path.addCurve(to: CGPoint(x: 313, y: 514), control1: CGPoint(x: 330, y: 495), control2:     CGPoint(x: 335, y: 515))
                    path.closeSubpath()
                }
                .stroke()
                
                
                Path { path in
                    //face
                    path.move(to: CGPoint(x: 204, y: 455))
                    //top left
                    path.addQuadCurve(to: CGPoint(x: 148, y: 551), control: CGPoint(x: 127, y: 484))
                    //bottom left
                    path.addQuadCurve(to: CGPoint(x: 240, y: 555), control: CGPoint(x: 160, y: 575))
                    //bottom right
                    path.addQuadCurve(to: CGPoint(x: 313, y: 510), control: CGPoint(x: 305, y: 540))
                    //top right
                    path.addQuadCurve(to: CGPoint(x: 204, y: 455), control: CGPoint(x: 307, y: 438))
                    path.closeSubpath()
                }
                .fill(Color(red:85/255 , green:85/255 , blue:85/255))
                
                Path { path in
                    //face
                    path.move(to: CGPoint(x: 204, y: 455))
                    //top left
                    path.addQuadCurve(to: CGPoint(x: 148, y: 551), control: CGPoint(x: 127, y: 484))
                    //bottom left
                    path.addQuadCurve(to: CGPoint(x: 240, y: 555), control: CGPoint(x: 160, y: 575))
                    //bottom right
                    path.addQuadCurve(to: CGPoint(x: 313, y: 510), control: CGPoint(x: 305, y: 540))
                    //top right
                    path.addQuadCurve(to: CGPoint(x: 204, y: 455), control: CGPoint(x: 307, y: 438))
                    path.closeSubpath()
                }
                .stroke()
                
                
                Path { path in
                    //left eye
                    path.move(to: CGPoint(x: 165, y: 486))
                    path.addCurve(to: CGPoint(x: 185, y: 519), control1: CGPoint(x: 145, y: 500), control2:  CGPoint(x: 142, y: 536))
                    path.addCurve(to: CGPoint(x: 165, y: 486), control1: CGPoint(x: 220, y: 510), control2:     CGPoint(x: 185, y: 480))
                    //right eye
                    path.move(to: CGPoint(x: 260, y: 460))
                    path.addCurve(to: CGPoint(x: 265, y: 498), control1: CGPoint(x: 230, y: 470), control2:     CGPoint(x: 218, y: 517))
                    path.addCurve(to: CGPoint(x: 260, y: 460), control1: CGPoint(x: 302, y: 490), control2:     CGPoint(x: 285, y: 460))
                }
                .fill(Color(red:255/255 , green:255/255 , blue:204/255))
                
                Path { path in
                    //mouth
                    path.move(to: CGPoint(x: 160, y: 537))
                    path.addQuadCurve(to: CGPoint(x: 227, y: 528), control: CGPoint(x: 180, y: 540))
                    path.addQuadCurve(to: CGPoint(x: 294, y: 502), control: CGPoint(x: 280, y: 523))
                    path.addCurve(to: CGPoint(x: 227, y: 532), control1: CGPoint(x: 293, y: 530), control2:     CGPoint(x: 285, y: 518))
                    path.addCurve(to: CGPoint(x: 160, y: 537), control1: CGPoint(x: 180, y: 537), control2:     CGPoint(x: 170, y: 553))
                }
                .fill(Color(red:255/255 , green:160/255 , blue:196/255))
            }
            
            ZStack {
                Path { path in
                    //fish_tail_right
                    path.move(to: CGPoint(x: 190, y: 600))
                    path.addQuadCurve(to: CGPoint(x: 203, y: 635), control: CGPoint(x: 195, y: 620))
                    path.addQuadCurve(to: CGPoint(x: 195, y: 565), control: CGPoint(x: 207, y: 585))
                    path.closeSubpath()
                }
                .fill(Color(red:171/255 , green:196/255 , blue:240/255))
                
                Path { path in
                    //fish_tail_left
                    path.move(to: CGPoint(x: 190, y: 600))
                    path.addQuadCurve(to: CGPoint(x: 187, y: 637), control: CGPoint(x: 185, y: 620))
                    path.addQuadCurve(to: CGPoint(x: 180, y: 573), control: CGPoint(x: 171, y: 590))
                    path.closeSubpath()
                }
                .fill(Color(red:171/255 , green:196/255 , blue:240/255))
                
                
                Path { path in
                    //fish_body
                    path.move(to: CGPoint(x: 170, y: 537))
                    path.addQuadCurve(to: CGPoint(x: 227, y: 528), control: CGPoint(x: 180, y: 539))
                    path.addQuadCurve(to: CGPoint(x: 190, y: 600), control: CGPoint(x: 200, y: 540))
                    path.addQuadCurve(to: CGPoint(x: 170, y: 537), control: CGPoint(x: 165, y: 545))
                }
                .fill(Color(red:78/255 , green:126/255 , blue:209/255))
            }
            
            
            //瞳孔
            Path(roundedRect: CGRect(x: 145, y: 476, width: 16, height: 27), cornerRadius: 3)
                .rotationEffect(.degrees(-13))
            Path(roundedRect: CGRect(x: 226, y: 473, width: 16, height: 27), cornerRadius: 3)//226
                .rotationEffect(.degrees(-13))
            //反光
            Path(roundedRect: CGRect(x: 145, y: 481, width: 11.5, height: 9), cornerRadius: 2)//145
                .rotationEffect(.degrees(-13))
                .foregroundColor(.white)
            Path(roundedRect: CGRect(x: 226, y: 479, width: 11.5, height: 9), cornerRadius: 2)//226
                .rotationEffect(.degrees(-13))
                .foregroundColor(.white)
            
            Friend()
                .offset(x: 16, y:78)
                .rotationEffect(.degrees(-13))
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TailFinView_right: View {
    var body: some View {
        TailFin()
            .fill(Color(red:181/255 , green:20/255 , blue:20/255)) //181/20/20
            .offset(x: 50, y:200)
    }
}

struct TailFinView_right_border: View {
    var body: some View {
        TailFin()
            .offset(x: 50, y:200)
            .stroke()
    }
}

struct TailFinView_left: View {
    var body: some View {
        TailFin()
            .fill(Color(red:85/255 , green:85/255 , blue:85/255))
            .rotationEffect(.degrees(-97))
            .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
            .offset(x: 182, y:77)
    }
}

struct TailFinView_left_border: View {
    var body: some View {
        TailFin()
            .stroke()
            .rotationEffect(.degrees(-97))
            .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
            .offset(x: 182, y:77)
    }
}
