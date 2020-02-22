//
//  ContentView.swift
//  PosterKit
//
//  Created by Nien Lam on 2/6/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // State variables for toggling animation.
    @State var nbaAnimation = false
    @State var starAnimation = false
    @State var ballAnimation = false

    
    var body: some View {
        ZStack {
            // Background color.
            Color(red: 27/255, green: 138/255, blue: 210/255)
            
            // NBA Poster Image
            Image("nba")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 300)
                .frame(width: 60)
                .scaleEffect(nbaAnimation ? 1.5 : 1.0)
                .animation(Animation.easeInOut(duration: 1.0))
                .onTapGesture {
                    self.nbaAnimation.toggle()
            }
            
            // Title and subtitle.
            VStack(alignment: .center) {
            
                VStack {
                    //how to use customized font
                    Text("NBA ALL-STAR 2020")
                    .font(.custom("Helvetica-Light", size: 25))
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                    
                    //control-I, indents for you
                    Text("CHICAGO")
                        .font(.custom("Helvetica", size: 55))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
            
                    HStack (spacing: 25) {
                        
                        Image("redstar")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .rotationEffect(starAnimation ?.degrees(320) :
                                .degrees(0))
                            .animation(Animation.easeInOut(duration: 1.0))
                            .onTapGesture {
                                self.starAnimation.toggle()
                        }
                        
                        
                        Image("BlackStar")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .rotationEffect(starAnimation ?.degrees(320) :
                                .degrees(0))
                            .animation(Animation.easeInOut(duration: 1.0))
                            .onTapGesture {
                                self.starAnimation.toggle()
                        }
                       
                        
                        
                        Image("redstar")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .rotationEffect(starAnimation ?.degrees(320) :
                                .degrees(0))
                            .animation(Animation.easeInOut(duration: 1.0))
                            .onTapGesture {
                                self.starAnimation.toggle()
                        }
                        
                        Image("BlackStar")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .rotationEffect(starAnimation ?.degrees(320) :
                                .degrees(0))
                            .animation(Animation.easeInOut(duration: 1.0))
                            .onTapGesture {
                                self.starAnimation.toggle()
                            }
                        
                        
                        Image("redstar")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .rotationEffect(starAnimation ?.degrees(320) :
                                .degrees(0))
                            .animation(Animation.easeInOut(duration: 1.0))
                            .onTapGesture {
                                self.starAnimation.toggle()
                        }
                        
                                               
                    }
                   
                 
                }
            }
            .padding(.horizontal, 70)
            .padding(.top, 20)
            
            // Basketballs.
            VStack {
                Spacer()
                
                HStack(spacing: 20) {
                    Image("bball-1")
                        .resizable()
                        .frame(width:80, height:80)
                        .offset(x: 0, y:  ballAnimation ? -200 : 12.4)
                        .animation(Animation.easeInOut(duration: 1.0))
                        .onTapGesture {
                            self.ballAnimation.toggle()
                    }
                    
                    
                    Image("bball-1")
                        .resizable()
                        .frame(width:80, height:80)
                        .offset(x: 0, y:  ballAnimation ? -140 : 12.4)
                        .animation(Animation.easeInOut(duration: 1.0))
                        .onTapGesture {
                            self.ballAnimation.toggle()
                    }
                    
                    // Custom path drawing for equilateral triangle.
                    Image("bball-1")
                        .resizable()
                        .frame(width:80, height:80)
                        .offset(x: 0, y:  ballAnimation ? -170 : 12.4)
                        .animation(Animation.easeInOut(duration: 1.0))
                        .onTapGesture {
                            self.ballAnimation.toggle()
                    }
                }
                .padding(.bottom, 80)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
