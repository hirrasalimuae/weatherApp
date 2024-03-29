//
//  NetworkService.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

struct StandardNetworkService: NetworkService {
    private let urlSession: URLSession
    
    init(urlSession: URLSession) {
        self.urlSession = urlSession
    }
    
    func getData(from request: Request) async throws -> Data {
        do {
            let (data, response) = try await urlSession.data(for: request.createURLRequest())
            // TODO: - More response code handling
            guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
                throw NetworkError.invalidResponse
            }
            
            return data
        } catch {
            throw error//NetworkError.operationFailed
        }
    }
}
