//
//  ContentView.swift
//  popcorn
//
//  Created by User17 on 2020/9/27.
//

import SwiftUI
import UIKit
struct ContentView: View {
    @State private var guessNumber = 0
    @State private var showAlert = false
    @State private var  answer = Int.random(in: 0...999)
    
    @State private var answercut = 0
    @State private var guessNumbercut = 0
    @State private var A = 0
    @State private var B = 0
    @State private var times = 0
    @State private var ans1 = 0
    @State private var ans2 = 0
    @State private var ans3 = 0
    @State private var gus1 = 0
    @State private var gus2 = 0
    @State private var gus3 = 0
    var body: some View {
        VStack
        {
            Text("猜數字請輸入 １～９９９")
            TextField("輸入１到９９９", value: $guessNumber,formatter: NumberFormatter(), onCommit:  {
                showAlert = true
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                 
                 .padding()
            if times>6
            {
                Text("太遜啦")
                
            }
            else if  guessNumber>1000 {
                
                          Text("輸入太大啦")
                        
            }
            else if  guessNumber<1 {
        
                 Text("輸入太小啦")
                
            }
            else if A==3
            {
                Text("good job answer is \(guessNumber)")
                
            }
            else
            {
                Text("\(A)A\(B)B")
            }
            if times < 7
            {
                Text("以猜\(times)次 還剩下 \(6-times)次機會")
            }
            else
            {
                Text("沒機會了重開吧")
            }
            
            Button("重置新遊戲") {
                guessNumber = 0
                times=0
                answer = Int.random(in: 0...999)
            
            }
            Button("對答案") {
                    
                    times=times+1
                    A=0
                    B=0
                    //print("not run")
                    if answer<10
                    {

                        ans1=0
                        ans2=0
                        ans3=answer
                        
                    }
                    else if answer<100
                    {
                        answercut=answer
                        ans1=0

                        ans2=answercut%10
                        answercut=answercut/10
                        ans3=answercut%10
                        answercut=answercut/10
                        
                    }
                    else
                    {
                        answercut=answer
                        ans1=answercut%10
                        answercut=answercut/10
                        ans2=answercut%10
                        answercut=answercut/10
                        ans3=answercut%10
                        answercut=answercut/10
                    }
                    
                    if guessNumber<10
                    {
                        //print("not run")
                        gus1=0
                        gus2=0
                        gus3=guessNumber

                        
                    }
                    else if guessNumber<100
                    {
                        //print("not run2")
                        guessNumbercut=guessNumber
                        gus1=0


                        guessNumbercut=guessNumbercut/10
                        gus2=guessNumbercut%10
                        guessNumbercut=guessNumbercut/10
                        gus3=guessNumbercut%10
                        guessNumbercut=guessNumbercut/10
                        
                    }
                    else
                    {
                        //print("not run3")
                        guessNumbercut=guessNumber
                        gus1=guessNumbercut%10
                        guessNumbercut=guessNumbercut/10
                        gus2=guessNumbercut%10
                        guessNumbercut=guessNumbercut/10
                        gus3=guessNumbercut%10
                        guessNumbercut=guessNumbercut/10
                    }
                    
                    if ans1==gus1
                    {
                        A=A+1
                    }
                    else if ans1==gus2 || ans1==gus3
                    {
                        B=B+1
                    }
                 
                    
                    
                    if ans2==gus2
                    {
                        A=A+1
                    }
                    else if ans2==gus1 || ans2==gus3
                    {
                        B=B+1
                        
                    }
                    
                    if ans3==gus3
                    {
                        A=A+1
                    }
                    else if ans3==gus2 || ans3==gus1
                    {
                        B=B+1
                        
                    }
                    print("ans1 \(ans1)")
                    print("ans2 \(ans2)")
                    print("ans3 \(ans3)")
                    print("gus1 \(gus1)")
                    print("gus2 \(gus2)")
                    print("gus3 \(gus3)")
                  
                    
                   
                    
                    
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
