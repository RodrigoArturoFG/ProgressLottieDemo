//
//  ProgressView.swift
//  ProgressLottieDemo
//
//  Created by Fernández González Rodrigo Arturo on 09/09/24.
//

import SwiftUI

struct AddProgressView: View {
    @State private var inProgress = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Button("Start Process") {
                        inProgress.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            withAnimation {
                                inProgress.toggle()
                            }
                        }
                    }
                    .buttonStyle(.bordered)
                    Spacer()
                }
                .disabled(inProgress)
                if inProgress {
                    LottieView(name: Constants.greenLoading, loopMode: .loop, animationSpeed: 2)
                        .scaleEffect(0.5)
                        //.frame(width: 50, height: 50, alignment: .center)
                        //.allowsHitTesting(false)
                }
            }
            .navigationTitle("Custom Progress")
        }
    }
}

struct SimpleView_Previews: PreviewProvider {
    static var previews: some View {
        AddProgressView()
    }
}
