//
//  Sequence+Async.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation

extension Sequence {
    func asyncForEach(
        _ operation: (Element) async throws -> Void
    ) async rethrows {
        for element in self {
            try await operation(element)
        }
    }
    
//    func asyncReduce<Result>(into initialResult: Result, _ updateAccumulatingResult: (_ partialResult: inout Result, Self.Element) async throws -> ()) async rethrows -> Result {
//        for element in self {
//        try await updateAccumulatingResult(initialResult)
//        return initialResult
//    }
}
