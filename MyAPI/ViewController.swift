//
//  ViewController.swift
//  MyAPI
//
//  Created by Chinedu Uche on 27/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func apiThree(_ sender: UIButton) {
        Task {
            do{
                await print( try VehicleAPI_Helper.fetch())
            } catch API_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("Please insert connect url")
            } catch let err {
                print(err)
            }
        }

    }
    @IBAction func apiTwo(_ sender: UIButton) {
        Task {
            do{
                await print( try BikeAPI_Helper.fetch())
            } catch API_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("Please insert connect url")
            } catch let err {
                print(err)
            }
        }
    }
    @IBAction func apiOne(_ sender: UIButton) {
        Task {
            do{
                await print( try JobAPI_Helper.fetch())
            } catch API_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("Please insert connect url")
            } catch let err {
                print(err)
            }
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

