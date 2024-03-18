//
//  StandardDataParser.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

final class StandardDataParser: DataParser {
    private let decoder: JSONDecoder
    
    init(decoder: JSONDecoder) {
        self.decoder = decoder
    }
    
    func decode<Response: Decodable>(_ data: Data) throws -> Response {
        do {
            return try decoder.decode(Response.self, from: data)
        } catch {
            throw error//NetworkError.failedDecode
        }
    }
}
