//
//  DataParser.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

/// An object that parses the result of a network call.
protocol DataParser {
    /**
     Decodes a data object.
     
     - Returns: An object conforming to Decodable.
     - Parameter data: The Data object to decode.
     - Throws: `NetworkError.failedDecode` if unable to decode the object.
     */
    func decode<Response: Decodable>(_ data: Data) throws -> Response
}
