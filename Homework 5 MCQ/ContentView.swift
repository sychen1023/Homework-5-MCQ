//
//  ContentView.swift
//  Homework 5 MCQ
//
//  Created by 陳宣燁 on 2025/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var questions: [Question] = []
    @State private var score: Int = 0
    @State private var combo: Int = 0
    @State private var index: Int = 0 // 目前第幾題
    @State private var stage: String = "start" // "start", "quiz", "answer", "end"
    
    @State private var selectedAnswer: String = ""
    @State private var userIsCorrect: Bool = false
        
    var body: some View {
        GeometryReader { geometry in
            ZStack (alignment: .center) {
                Image("background")
                    .resizable()
                    .scaledToFill()
                VStack {
                    if stage == "start" {
                        Start
                    } else if stage == "quiz" || stage == "answer" {
                        Quiz
                    } else {
                        End
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
        }
        .ignoresSafeArea()
    }
    
    var Start: some View {
        VStack(spacing: 32) {
            Image(QuestionBank.randomElement()!.picture)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 320)
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 14, style: .continuous)
                        .stroke(.white.opacity(0.7), lineWidth: 5)
                )
                .shadow(color: .black.opacity(0.4), radius: 12, x: 0, y: 8)
                .shadow(color: .white.opacity(0.15), radius: 2, x: 0, y: 0)
            
            Text("世界名畫大考驗")
                .font(.largeTitle.weight(.bold))
                .foregroundStyle(.white)
                .shadow(radius: 4)
            
            Button("開始遊戲") {
                start()
            }
            .font(.title.weight(.semibold))
            .foregroundColor(.black)
            .padding(.horizontal, 24)
            .padding(.vertical, 14)
            .glassEffect()
        }
        .padding(.horizontal)
    }
    
    var Quiz: some View {
        let question = questions[index]
        return VStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Text("第 \(index + 1) 題")
                    Spacer()
                    Text("總分：\(score)")
                }
                .font(.headline)
                .foregroundStyle(.white)
                .padding(.horizontal, 4)
                
                VStack(alignment: .center) {
                    Image(question.picture)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .overlay(
                            RoundedRectangle(cornerRadius: 16, style: .continuous)
                                .stroke(.white.opacity(0.8), lineWidth: 3)
                        )
                        .shadow(color: .black.opacity(0.35), radius: 16, x: 0, y: 10)
                        .padding(.bottom, 4)
                }
                .frame(maxWidth: .infinity, maxHeight: 320)
                
                Text(question.description)
                    .font(.title2.weight(.semibold))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack(alignment: .leading, spacing: 16) {
                    if stage == "quiz" {
                        ForEach(question.choices.shuffled()) { choice in
                            Button(action: {
                                selectedAnswer = choice.description
                                if choice.is_correct {
                                    correct()
                                } else {
                                    wrong()
                                }
                                stage = "answer"
                            }) {
                                HStack(alignment: .center, spacing: 12) {
                                    Text(choice.description)
                                        .font(.title3.weight(.semibold))
                                        .foregroundStyle(.primary)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 14)
                                .contentShape(Rectangle())
                            }
                            .buttonStyle(.plain)
                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 14, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 14, style: .continuous)
                                    .strokeBorder(.white.opacity(0.35), lineWidth: 1)
                            )
                            .shadow(color: .black.opacity(0.25), radius: 8, x: 0, y: 6)
                        }
                    } else {
                        ScrollView {
                            VStack(alignment: .leading, spacing: 12) {
                                if userIsCorrect {
                                    HStack(spacing: 10) {
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundStyle(.green)
                                            .font(.system(size: 30, weight: .bold))
                                        Text("恭喜你答對了")
                                            .font(.title3.weight(.bold))
                                            .foregroundStyle(.white)
                                    }
                                } else {
                                    HStack(spacing: 10) {
                                        Image(systemName: "xmark.octagon.fill")
                                            .foregroundStyle(.red)
                                            .font(.system(size: 30, weight: .bold))
                                        Text("你答錯了")
                                            .font(.title3.weight(.bold))
                                            .foregroundStyle(.white)
                                    }
                                    
                                    Text("你的選擇：\(selectedAnswer)")
                                        .font(.body)
                                        .foregroundStyle(.black.opacity(0.9))
                                        .multilineTextAlignment(.leading)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                                ForEach(question.choices) { choice in
                                    if choice.is_correct {
                                        Text("正確答案：\(choice.description)")
                                            .font(.headline)
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("解釋：")
                                        .font(.headline)
                                        .foregroundStyle(.black)
                                    
                                    Text(question.explanation)
                                        .font(.body)
                                        .foregroundStyle(.black.opacity(0.95))
                                        .multilineTextAlignment(.leading)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.trailing, 2)
                                }
                            }
                            .padding(16)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .stroke(.white.opacity(0.3), lineWidth: 1)
                            )
                        }
                        .scrollIndicators(.visible)
                        
                        HStack {
                            Button("重新開始") {
                                stage = "start"
                            }
                            .font(.title3.weight(.semibold))
                            .foregroundStyle(.black)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .glassEffect(.clear)
                            Spacer()
                            if index < 9 {
                                Button("下一題") {
                                    index += 1
                                    stage = "quiz"
                                }
                                .font(.title3.weight(.semibold))
                                .foregroundStyle(.black)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 12)
                                .glassEffect(.clear)
                            } else {
                                Button("查看結果") {
                                    stage = "end"
                                }
                                .font(.title3.weight(.semibold))
                                .foregroundStyle(.black)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 12)
                                .glassEffect(.clear)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 16) // 避免貼邊
            Spacer()
        }
        .padding(.top, 80)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    var End: some View {
        VStack(spacing: 80) {
            Text("總分：\(score)")
                .font(.largeTitle.weight(.bold))
                .foregroundStyle(.white)
                .shadow(radius: 4)
            
            Button("再玩一次") {
                stage = "start"
            }
            .font(.title.weight(.semibold))
            .foregroundStyle(.black)
            .padding(.horizontal, 24)
            .padding(.vertical, 14)
            .glassEffect(.clear)
        }
        .padding(.horizontal)
        .padding(.top, 300)
    }
    
    private func start() {
        questions = Array(QuestionBank.shuffled().prefix(10))
        score = 0
        combo = 0
        index = 0
        selectedAnswer = ""
        userIsCorrect = false
        stage = "quiz"
    }
    
    private func correct() {
        userIsCorrect = true
        combo += 1
        if combo > 2 {
            score += 30
        } else {
            score += 10
        }
    }
    
    private func wrong() {
        userIsCorrect = false
        if combo > 2 {
            score -= 20
        }
        combo = 0
    }
}

#Preview {
    ContentView()
}
