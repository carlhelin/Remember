//
//  SQLite.swift
//  Remember
//
//  Created by Carl Helin on 1/3/2023.
//

import Foundation
import SQLite

// set the path corresponding to application support
var path = NSSearchPathForDirectoriesInDomains(
    .applicationSupportDirectory, .userDomainMask, true
).first! + "/" + Bundle.main.bundleIdentifier!

// copyDatabaseIfNeeded(sourcePath: path)

func copyDatabaseIfNeeded(sourcePath: String) -> Bool {
    let documents = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    let destinationPath = documents + "/db.sqlite3"
    let exists = FileManager.default.fileExists(atPath: destinationPath)
    guard !exists else { return false }
    do {
        try FileManager.default.copyItem(atPath: sourcePath, toPath: destinationPath)
        return true
    } catch {
      print("error during file copy: \(error)")
        return false
    }
}

