//
//  Errors.swift
//  PantengMovie
//
//  Created by DIMAS DAFFA ERNANDA on 09/03/26.
//

import Foundation

enum APIConfigError: Error, LocalizedError {
    case fileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(underlyingError: Error)

    var errorDescription: String? {
        switch self {
        case .fileNotFound:
            return "APIConfig file not found."
        case .dataLoadingFailed(let error):
            return "Failed to load APIConfig data: \(error.localizedDescription)"
        case .decodingFailed(let error):
            return "Failed to decode APIConfig data: \(error.localizedDescription)"
        }
    }
}

enum NetworkError: Error, LocalizedError {
    case badURLResponse(underlyingError: Error)
    case missingConfig
    case urlBuildFailed

    var errorDescription: String? {
        switch self {
        case .badURLResponse(underlyingError: let error):
            return "Failed to parse URL response: \(error.localizedDescription)"
        case .missingConfig:
            return "APIConfig is missing."
        case .urlBuildFailed:
            return "Failed to build URL."
        }
    }
}
