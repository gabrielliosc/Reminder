//
//  String+Ext.swift
//  Reminder
//
//  Created by Gabi on 18/12/24.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
