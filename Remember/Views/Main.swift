//
//  Main.swift
//  Remember
//
//  Created by Carl Helin on 26/07/2022.
//

import SwiftUI

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.primary.edgesIgnoringSafeArea(.all)
            Button("Dismiss Modal") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}


struct Main: View {
    
    private var screenWidth = UIScreen.main.bounds.width
    private var screenLength = UIScreen.main.bounds.height
    
    @State private var offset: CGFloat = .zero
    
    //    STATES FOR FRONT OF THE BODY
    @State private var isActive : Bool = false
    @State private var isPresented = false
    @State private var isPresentedTra = false
    @State private var isPresentedPec = false
    @State private var isPresentedSho = false
    @State private var isPresentedBic = false
    @State private var isPresentedFor = false
    @State private var isPresentedUAbs = false
    @State private var isPresentedMAbs = false
    @State private var isPresentedLAbs = false
    @State private var isPresentedSAbs = false
    @State private var isPresentedQuads = false
    @State private var isPresentedCalv = false
    
    //    STATES FOR BACK OF THE BODY
    @State private var isPresentTra = false
    @State private var isPresentLTra = false
    @State private var isPresentLBac = false
    @State private var isPresentButt = false
    @State private var isPresentLats = false
    @State private var isPresentBSho = false
    @State private var isPresentTri = false
    @State private var isPresentHam = false
    @State private var isPresentBCal = false
    @State private var isPresentBFor = false
    
    var body: some View {
        
        ZStack {
            
            //            THIS GROUP IS FOR THE PARTS ON EACH SIDE OF THE UPPER BODY LINED UP FRONT VIEW
            Group {
                Image("muscle_man")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .clipped()
                
                
                //                RIGHT TRAP
                Button("     ") {
                    isPresentedTra.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/30)
                .fullScreenCover(isPresented: $isPresentedTra, content: UpperTraps.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/3.4, y: screenLength/4.2)
                
                
                //                LEFT TRAP
                Button("   ") {
                    isPresentedTra.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/30)
                .fullScreenCover(isPresented: $isPresentedTra, content: UpperTraps.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/5.5, y: screenLength/4.2)
                
                //                RIGHT SHOULDER
                Button("   ") {
                    isPresentedSho.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/30)
                .fullScreenCover(isPresented: $isPresentedSho, content: Shoulder.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/2.6, y: screenLength/3.8)
                
                //                LEFT SHOULDER
                Button("   ") {
                    isPresentedSho.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/30)
                .fullScreenCover(isPresented: $isPresentedSho, content: Shoulder.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/11, y: screenLength/3.8)
                
                
                //                RIGHT BICEPS
                Button("  ") {
                    isPresentedBic.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/16)
                .fullScreenCover(isPresented: $isPresentedBic, content: Biceps.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/2.45, y: screenLength/3.1)
                
                //                LEFT BICEPS
                Button("   ") {
                    isPresentedBic.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/16)
                .fullScreenCover(isPresented: $isPresentedBic, content: Biceps.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/14, y: screenLength/3.1)
                
                //                RIGHT UNDER ARM
                Button("   ") {
                    isPresentedFor.toggle()
                }
                .frame(width: screenWidth/11, height: screenLength/17)
                .fullScreenCover(isPresented: $isPresentedFor, content: Forearms.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/2.3, y: screenLength/2.6)
                
                //                LEFT UNDERARM
                Button("  ") {
                    isPresentedFor.toggle()
                }
                .frame(width: screenWidth/11, height: screenLength/17)
                .fullScreenCover(isPresented: $isPresentedFor, content: Forearms.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/19, y: screenLength/2.6)
                
            }
            
            //            THIS GROUP IS FOR THE CENTRALIZED PARTS OF THE UPPER BODY
            Group {
                //                PECTORAL MUSCLES
                Button("                    ") {
                    isPresentedPec.toggle()
                }
                .frame(width: screenWidth/4.3, height: screenLength/15, alignment: .center)
                .fullScreenCover(isPresented: $isPresentedPec, content: Pectoral.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/4.2, y: screenLength/3.5)
                
                //                UPPER ABS
                Button("   ") {
                    isPresentedUAbs.toggle()
                }
                .frame(width: screenWidth/8, height: screenLength/40)
                .fullScreenCover(isPresented: $isPresentedUAbs, content: UpperAbs.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/4.2, y: screenLength/3)
                
                //                MID ABS
                Button("   ") {
                    isPresentedMAbs.toggle()
                }
                .frame(width: screenWidth/8, height: screenLength/15)
                .fullScreenCover(isPresented: $isPresentedMAbs, content: MidAbs.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/4.2, y: screenLength/2.78)
                
                //                LOW ABS
                Button("   ") {
                    isPresentedLAbs.toggle()
                }
                .frame(width: screenWidth/8, height: screenLength/25)
                .fullScreenCover(isPresented: $isPresentedLAbs, content: LowAbs.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/4.2, y: screenLength/2.45)
                
                //                RIGHT SIDE ABS
                Button("   ") {
                    isPresentedSAbs.toggle()
                }
                .frame(width: screenWidth/25, height: screenLength/13)
                .fullScreenCover(isPresented: $isPresentedSAbs, content: SideAbs.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/3.1, y: screenLength/2.7)
                
                //                LEFT SIDE ABS
                Button("   ") {
                    isPresentedSAbs.toggle()
                }
                .frame(width: screenWidth/25, height: screenLength/13)
                .fullScreenCover(isPresented: $isPresentedSAbs, content: SideAbs.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/6.5, y: screenLength/2.7)
                
            }
            
            //            THIS GROUP IS FOR BOTH SIDE OF THE LOWER BODY
            Group {
                //                RIGHT UPPER QUAD
                Button("               ") {
                    isPresentedQuads.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/10.3)
                .fullScreenCover(isPresented: $isPresentedQuads, content: Quads.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/3.2, y: screenLength/2.08)
                
                //                LEFT UPPER QUAD
                Button("               ") {
                    isPresentedQuads.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/10.3)
                .fullScreenCover(isPresented: $isPresentedQuads, content: Quads.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/6.2, y: screenLength/2.08)
                
                
                //                RIGHT LOWER CALVE
                Button("               ") {
                    isPresentedCalv.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/7.6)
                .fullScreenCover(isPresented: $isPresentedCalv, content: Calves.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/3.2, y: screenLength/1.65)
                
                //                LEFT LOWER CALVE
                Button("               ") {
                    isPresentedCalv.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/7.6)
                .fullScreenCover(isPresented: $isPresentedCalv, content: Calves.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/6.3, y: screenLength/1.65)
            }
            
            //            THIS GROUP IS FOR THE PARTS ON EACH SIDE OF THE UPPER BODY LINED UP BACK VIEW
            Group {
                //                RIGHT TRAP
                Button("   ") {
                    isPresentTra.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/30)
                .fullScreenCover(isPresented: $isPresentTra, content: Traps.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.22, y: screenLength/4.2)
                
                //                LEFT TRAP
                Button("   ") {
                    isPresentTra.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/30)
                .fullScreenCover(isPresented: $isPresentTra, content: Traps.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.44, y: screenLength/4.2)
                
                //                RIGHT BACK SHOULDER
                Button("   ") {
                    isPresentBSho.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/30)
                .fullScreenCover(isPresented: $isPresentBSho, content: BackShoulder.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.10, y: screenLength/3.8)

                //                LEFT BACK SHOULDER
                Button("   ") {
                    isPresentBSho.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/30)
                .fullScreenCover(isPresented: $isPresentBSho, content: BackShoulder.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.66, y: screenLength/3.8)


                //                RIGHT TRICEPS
                Button("  ") {
                    isPresentTri.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/16)
                .fullScreenCover(isPresented: $isPresentTri, content: Triceps.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.09, y: screenLength/3.1)

                //                LEFT TRICEPS
                Button("   ") {
                    isPresentTri.toggle()
                }
                .frame(width: screenWidth/15, height: screenLength/16)
                .fullScreenCover(isPresented: $isPresentTri, content: Triceps.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.69, y: screenLength/3.1)

                //                RIGHT BACK UNDERARM
                Button("   ") {
                    isPresentBFor.toggle()
                }
                .frame(width: screenWidth/11, height: screenLength/17)
                .fullScreenCover(isPresented: $isPresentBFor, content: BackForearms.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.05, y: screenLength/2.6)

                //                LEFT BACK UNDERARM
                Button("  ") {
                    isPresentBFor.toggle()
                }
                .frame(width: screenWidth/11, height: screenLength/17)
                .fullScreenCover(isPresented: $isPresentBFor, content: BackForearms.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.78, y: screenLength/2.6)
                
                // TODO: Add costum shape for the lats since its bent on picture
//                //                RIGHT LATS
//                Button("   ") {
//                    isPresentedSAbs.toggle()
//                }
//                .frame(width: screenWidth/25, height: screenLength/13)
//                .foregroundColor(.purple)
//                .border(Color.purple, width: 5)
//                .fullScreenCover(isPresented: $isPresentedSAbs, content: SideAbs.init)
//                .buttonStyle(PlainButtonStyle())
//                .position(x: screenWidth/3.1, y: screenLength/2.7)
//
//                //                LEFT LATS
//                Button("   ") {
//                    isPresentedSAbs.toggle()
//                }
//                .frame(width: screenWidth/25, height: screenLength/13)
//                .foregroundColor(.purple)
//                .border(Color.purple, width: 5)
//                .fullScreenCover(isPresented: $isPresentedSAbs, content: SideAbs.init)
//                .buttonStyle(PlainButtonStyle())
//                .position(x: screenWidth/1.2, y: screenLength/2.7)
            }
            
            //            THIS GROUP IS FOR MIDDLE AND LEGS FOR THE BACK PART OF THE BODY
            Group {
                //                LOWER BACK
                Button("   ") {
                    isPresentLTra.toggle()
                }
                .frame(width: screenWidth/6, height: screenLength/15)
                .fullScreenCover(isPresented: $isPresentLTra, content: LowerTraps.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.32, y: screenLength/3.55)
                
                //                LOWER BACK
                Button("   ") {
                    isPresentLBac.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/19)
                .fullScreenCover(isPresented: $isPresentLBac, content: LowerBack.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.32, y: screenLength/2.7)
                
                //                BUTT
                Button("               ") {
                    isPresentButt.toggle()
                }
                .frame(width: screenWidth/5, height: screenLength/19)
                .fullScreenCover(isPresented: $isPresentButt, content: Butt.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.32, y: screenLength/2.35)
                
                //                RIGHT HAMSTRING
                Button("               ") {
                    isPresentHam.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/10.3)
                .fullScreenCover(isPresented: $isPresentHam, content: Hamstrings.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.2, y: screenLength/2.0)
                
                //                LEFT HAMSTRING
                Button("               ") {
                    isPresentHam.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/10.3)
                .fullScreenCover(isPresented: $isPresentHam, content: Hamstrings.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.47, y: screenLength/2.0)
                
                
                //                RIGHT BACK CALVE
                Button("               ") {
                    isPresentBCal.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/7.6)
                .fullScreenCover(isPresented: $isPresentBCal, content: BackCalves.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.2, y: screenLength/1.65)
                
                //                LEFT BACK CALVE
                Button("               ") {
                    isPresentBCal.toggle()
                }
                .frame(width: screenWidth/10, height: screenLength/7.6)
                .fullScreenCover(isPresented: $isPresentBCal, content: BackCalves.init)
                .buttonStyle(PlainButtonStyle())
                .position(x: screenWidth/1.47, y: screenLength/1.65)
            }
        }
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        return path
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
            .previewInterfaceOrientation(.portrait)
    }
}
