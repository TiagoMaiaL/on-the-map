//
//  ParseAPIClientProtocol.swift
//  On The Map
//
//  Created by Tiago Maia Lopes on 28/01/19.
//  Copyright © 2019 Tiago Maia Lopes. All rights reserved.
//

import Foundation

/// The protocol defining the main methods of the Parse API client.
protocol ParseAPIClientProtocol {

    // MARK: Properties

    /// The student locations fetched by the API client.
    var studentLocations: [StudentInformation]? { get }

    // MARK: Methods

    /// Fetches the most recent student locations.
    /// - Parameters:
    ///     - limit: The limit of locations to be fetched.
    ///     - pagesToSkip: The number of pages to be skipped.
    ///     - handler: The completion handler called when the request returns.
    /// - Returns: The fetched locations.
    func fetchStudentLocations(
        withLimit limit: Int,
        skippingPages pagesToSkip: Int,
        andUsingCompletionHandler handler: @escaping ([StudentInformation]?, APIClient.RequestError?) -> Void
    )
}