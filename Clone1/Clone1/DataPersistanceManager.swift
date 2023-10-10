//
//  DataPersistanceManager.swift
//  Clone1
//
//  Created by 김우섭 on 10/9/23.
//

import Foundation
import UIKit
import CoreData

class DataPersistanceManager {
    
    enum DatabasError: Error {
        case failedToSaved
        case failedToFetchData
        case failedToDeleteData
    }
        
    static let shared = DataPersistanceManager()
    
    // 코어데이터 저장 메서드
    func downloadTitleWith(model: Title, completion: @escaping (Result<Void, Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let conetext = appDelegate.persistentContainer.viewContext
        
        let item = TitleItem(context: conetext)
        
        item.original_title = model.original_title
        item.id = Int64(model.id)
        item.original_name = model.original_name
        item.overview = model.overview
        item.media_type = model.media_type
        item.poster_path = model.poster_path
        item.release_date = model.release_date
        item.vote_count = Int64(model.vote_count)
        item.vote_average = model.vote_average
        
        do {
            try conetext.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabasError.failedToSaved))
        }
    }
    // 코어데이터 조회 메서드
    func fetchingTitlesFromDataBase(completion: @escaping (Result<[TitleItem], Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let conetext = appDelegate.persistentContainer.viewContext
        
        let request: NSFetchRequest<TitleItem>
        
        request = TitleItem.fetchRequest()
        
        do {
            let titles = try conetext.fetch(request)
            completion(.success(titles))
        } catch {
            print(error.localizedDescription)
            completion(.failure(DatabasError.failedToFetchData))
        }
    }
    // 코어데이터 삭제 메서드
    func deletTitleWith(model: TitleItem, completion: @escaping (Result<Void, Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let conetext = appDelegate.persistentContainer.viewContext
        
        conetext.delete(model)
        
        do {
            try conetext.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabasError.failedToDeleteData))
        }
        
    }
}
