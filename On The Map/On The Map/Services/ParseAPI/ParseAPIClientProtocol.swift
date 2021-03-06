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
    var studentLocations: [StudentInformation] { get set }

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

    /// Fetches the specific student location by the uniqueKey.
    /// - Parameters:
    ///     - uniqueKey: the unique key of the student information to be fetched.
    ///     - handler: the closure called when the request finishes, with the found value, or an error.
    func fetchStudentLocation(
        byUsingUniqueKey key: String,
        andCompletionHandler handler: @escaping (StudentInformation?, APIClient.RequestError?) -> Void
    )

    /// Creates a student location using the passed data.
    /// - Parameters:
    ///     - information: The information struct containing the location.
    ///     - completionHandler: The handler called with the result of the call.
    func createStudentLocation(
        _ information: StudentInformation,
        withCompletionHandler handler: @escaping (StudentInformation?, APIClient.RequestError?) -> Void
    )

    /// Updates a student location using the passed data.
    /// - Parameters:
    ///     - information: The information struct containing the location.
    ///     - completionHandler: The handler called with the result of the call.
    func updateStudentLocation(
        _ information: StudentInformation,
        withCompletionHandler handler: @escaping (StudentInformation?, APIClient.RequestError?) -> Void
    )

    /// Sorts the locations by the updated at property.
    func sortLocations()
}
