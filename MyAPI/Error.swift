//
//  Error.swift
//  MyAPI
//
//  Created by Chinedu Uche on 27/09/2023.
//

import Foundation
enum API_Errors: Error {
    case CANNOT_PARSE_DATA_INTO_JSON
    case CANNOT_CONVERT_STRING_TO_URL
}
