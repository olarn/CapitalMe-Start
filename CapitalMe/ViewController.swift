//
//  ViewController.swift
//  CapitalMe
//
//  Created by Olarn U. on 5/20/2559 BE.
//  Copyright © 2559 Olarn U. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    // MARK: - Outlets

    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var lblCapitalName: UILabel!
    @IBOutlet var lblCountryCode: UILabel!
    @IBOutlet var lblCountryName: UILabel!
    @IBOutlet var lblLatLong: UILabel!
    @IBOutlet var lblPopulation: UILabel!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTouchOnView(sender: AnyObject) {
        self.searchBar.resignFirstResponder()
    }
    
    // MARK: - UI Search Bar Delegates Handler
    
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        searchBar.showsCancelButton = true
        return true
    }
    
    func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool {
        searchBar.showsCancelButton = false
        return true
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        self.searchCapitalCityDetail(searchBar.text!)
    }
    
    // MARK: - Search Capital Name
    
    private func searchCapitalCityDetail(cityName: String) {

    }
    
}

