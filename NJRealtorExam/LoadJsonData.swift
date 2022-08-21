//
//  LoadJsonData.swift
//  NJRealtorExam
//
//  Created by user on 8/1/21.
//

import Foundation

public class LoadJsonData {
    
   @Published var examItem = [ExamItem]()
    
    init(){
    load()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "njrealtorexam_21", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([ExamItem].self, from: data)
                self.examItem = dataFromJson
            } catch {
                print(error)
            }
            
            }
            
        }
        
    }
