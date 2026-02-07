//
//  ToDo.swift
//  XP-App
//
//  Created by Matt Harpur on 2/7/26.
//

import Foundation

public struct Todo: Identifiable, Codable {
    public let id: UUID
    public var title: String
    public var isCompleted: Bool = false
    
}
