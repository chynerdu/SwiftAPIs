//
//  APIThreeHelper.swift
//  MyAPI
//
//  Created by Chinedu Uche on 27/09/2023.
//



import Foundation


class VehicleAPI_Helper{
    static private let baseURL_String = "https://parallelum.com.br/fipe/api/v1/carros/marcas"
    
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
