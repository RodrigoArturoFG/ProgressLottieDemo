//
//  ProgressView.swift
//  ProgressLottieDemo
//
//  Created by Fernández González Rodrigo Arturo on 09/09/24.
//

import SwiftUI

struct AddProgressView: View {
    @State private var inProgress = false
    @State private var screenSize = CGSizeZero
    @State private var blurRadius = CGFloat(integerLiteral: 0)
    @State private var animationName = Constants.greenLoading

    
    var body: some View {
            GeometryReader { geometry in
                NavigationStack {
                    ZStack {
                        VStack {
                            
                            Button("Dots Circle") {
                                blurRadius = CGFloat(integerLiteral: 20)
                                animationName = Constants.greenLoading
                                inProgress.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    withAnimation {
                                        blurRadius = CGFloat(integerLiteral: 0)
                                        inProgress.toggle()
                                    }
                                }
                            }
                            .buttonStyle(.bordered)
                            
                            Button("3 Lines") {
                                blurRadius = CGFloat(integerLiteral: 20)
                                animationName = Constants.threeLines
                                inProgress.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    withAnimation {
                                        blurRadius = CGFloat(integerLiteral: 0)
                                        inProgress.toggle()
                                    }
                                }
                            }
                            .buttonStyle(.bordered)
                            
                            Button("Circle Animation") {
                                blurRadius = CGFloat(integerLiteral: 20)
                                animationName = Constants.circleAnimation
                                inProgress.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    withAnimation {
                                        blurRadius = CGFloat(integerLiteral: 0)
                                        inProgress.toggle()
                                    }
                                }
                            }
                            .buttonStyle(.bordered)
                            
                            Button("Circle Animation 2") {
                                blurRadius = CGFloat(integerLiteral: 20)
                                animationName = Constants.circleAnimationTwo
                                inProgress.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    withAnimation {
                                        blurRadius = CGFloat(integerLiteral: 0)
                                        inProgress.toggle()
                                    }
                                }
                            }
                            .buttonStyle(.bordered)
                            
                            Button("Loading Animation") {
                                blurRadius = CGFloat(integerLiteral: 20)
                                animationName = Constants.LoadingAnimation
                                inProgress.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    withAnimation {
                                        blurRadius = CGFloat(integerLiteral: 0)
                                        inProgress.toggle()
                                    }
                                }
                            }
                            .buttonStyle(.bordered)
                            
                            Button("Loading Animation 2") {
                                blurRadius = CGFloat(integerLiteral: 20)
                                animationName = Constants.LoadingAnimationTwo
                                inProgress.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    withAnimation {
                                        blurRadius = CGFloat(integerLiteral: 0)
                                        inProgress.toggle()
                                    }
                                }
                            }
                            .buttonStyle(.bordered)
                            
                            Button("Loading Animation 3") {
                                blurRadius = CGFloat(integerLiteral: 20)
                                animationName = Constants.LoadingAnimationThree
                                inProgress.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    withAnimation {
                                        blurRadius = CGFloat(integerLiteral: 0)
                                        inProgress.toggle()
                                    }
                                }
                            }
                            .buttonStyle(.bordered)
                            
                            Button("Circle Loading Animation") {
                                blurRadius = CGFloat(integerLiteral: 20)
                                animationName = Constants.CircleLoadingAnimation
                                inProgress.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    withAnimation {
                                        blurRadius = CGFloat(integerLiteral: 0)
                                        inProgress.toggle()
                                    }
                                }
                            }
                            .buttonStyle(.bordered)
                            
                            Spacer()
                            
                        }
                        
                        if inProgress {
                            LottieView(name: animationName, loopMode: .loop, animationSpeed: 2)
                                .scaleEffect(0.5)
                                //.frame(width: 50, height: 50, alignment: .center)
                                //.allowsHitTesting(false)
                        }

                    }
                    //.frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                    .disabled(inProgress)
                    .navigationTitle("Custom Progress")

                }

            }
        
        
    }
}

struct SimpleView_Previews: PreviewProvider {
    static var previews: some View {
        AddProgressView()
    }
}

