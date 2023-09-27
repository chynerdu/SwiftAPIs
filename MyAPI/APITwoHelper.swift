//
//  APITwoHelper.swift
//  MyAPI
//
//  Created by Chinedu Uche on 27/09/2023.
//


import Foundation

class BikeAPI_Helper{
    static private let baseURL_String = "https://api.citybik.es/v2/networks"
    
    static public func fetch() async throws -> Any{
        guard
            let url = URL(string: baseURL_String)
        else {throw API_Errors.CANNOT_CONVERT_STRING_TO_URL}
        
        do{
            let (data, response) = try await URLSession.shared.data(from: url)
            
            //print(response)
            
            let jsonObject = try JSONSerialization.jsonObject(with: data)
        
            return jsonObject
        } catch {
            throw error
        }
    }
}
