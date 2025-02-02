//
//  main.swift
//  GuessingTerminal
//
//  Created by 戴国瑞 on 2024/10/9.
//

import Foundation

print("Hello, this is a number guessing game.")
print("Please tell me the range of the number you want to guess, from 0 to your number")

print("欢迎来到猜数字游戏！")
print("我已经想好了一个 1 到 100 之间的数字，请猜猜看吧。")

// let input = readLine(), let your_num = Int(input)
        
let targetNumber = Int.random(in: 1...100)
var attempts = 0

while true {
    print("请输入你的猜测（1-100）: ", terminator: "")
    guard let input = readLine(), let guess = Int(input) else {
        print("⚠️ 输入无效，请输入一个整数。")
        continue
    }
    attempts += 1
    
    guard guess >= 1, guess <= 100 else {
        print("⚠️ 数字必须在 1 到 100 之间！")
        continue
    }
    
    if guess < targetNumber {
        print("⬆️ 猜小了！")
    } else if guess > targetNumber {
        print("⬇️ 猜大了！")
    } else {
        print("🎉 恭喜！你用了 \(attempts) 次猜对了！")
        break
    }
}
