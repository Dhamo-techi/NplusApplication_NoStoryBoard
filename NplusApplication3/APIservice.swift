//
//  APIservice.swift
//  NplusApplication3
//
//  Created by MAC PRO on 28/05/24.
//

import Foundation

class networkManager {
    
    static let shared = networkManager()
    
    private let session: URLSession
    
    private init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 30
        session = URLSession(configuration: configuration)
    }
    
    func fetchData<T: Codable>(from url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Network error: \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
            guard let myresponse = response as? HTTPURLResponse, (200...299).contains(myresponse.statusCode) else {
                let statusCode = (response as? HTTPURLResponse)?.statusCode ?? -1
                print("HTTP error: \(statusCode)")
                let error = NSError(domain: "Network Error", code: statusCode, userInfo: nil)
                completion(.failure(error))
                return
            }
            guard let data = data else {
                print("No data received")
                let error = NSError(domain: "Network Error", code: -1, userInfo: nil)
                completion(.failure(error))
                return
            }
            
            // Log the raw response data
            if let json = String(data: data, encoding: .utf8) {
                print("Raw response data: \(json)")
            }

            do {
                let decodeObj = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodeObj))
            } catch {
                print("Decoding error: \(error.localizedDescription)")
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
