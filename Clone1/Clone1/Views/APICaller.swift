//
//  APICaller.swift
//  Clone1
//
//  Created by 김우섭 on 10/5/23.
//

import Foundation

struct Constants {
    static let API_KEY = "555457584b8f600c41f7c43328b4224b"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
//                let result = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(result)
                let result = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(result.results))
            } catch {
                completion(.failure(error))
               print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getTrendingTvs(completion: @escaping (Result<[Tv], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingTvResponse.self, from: data)
                completion(.success(result.results))
                print(result)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getUpcomingMovie(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.API_KEY)&language=en-US&page=1") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil  else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                print(result.results)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getPopular(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/tv/popular?api_key=\(Constants.API_KEY)&language=en-US&page=1") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                print(result.results)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getTopRated(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/tv/top_rated?api_key=\(Constants.API_KEY)&language=en-US&page=1") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                print(result.results)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
}

// "https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1
// https://api.themoviedb.org/3/tv/popular?language=en-US&page=1
//https://api.themoviedb.org/3/tv/top_rated?language=en-US&page=1
