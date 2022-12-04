//  FactoryMethod.swift

import Foundation

// Protocol Product
protocol Product {
    func createProduct() -> String
}

// Create Product 1-st
class CreatebleProductFirst: Product {
    func createProduct() -> String {
        "Create a first product"
    }
}

// Create Product 2-nd
class CreatebleProductSecond: Product {
    func createProduct() -> String {
        "Create a second product"
    }
}

// Create Factory for create Procut
protocol Creator {
    func factoryMethod() -> Product
}

// Create First Method
class CreateProtuctFirst: Creator {
    func factoryMethod() -> Product {
        CreatebleProductFirst()
    }
}

// Create First Factory Method
class CreateFactoryFirst: Creator {
    func factoryMethod() -> Product {
        CreatebleProductFirst()
    }
}

// Create First Factory Method
class CreateFactorySecond: Creator {
    func factoryMethod() -> Product {
        CreatebleProductFirst()
    }
}

enum ProductType {
    case product1
    case product2
}

// Used
enum FactoryMethod {
    static func create(for productType: ProductType) -> Product {
        switch productType {
            case .product1: return CreateFactoryFirst().factoryMethod()
            case .product2: return CreateFactoryFirst().factoryMethod()
        }
    }
}
