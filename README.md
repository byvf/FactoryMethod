# FactoryMethod
Factory Method  (Examples)

## Simple Example 
### Code Implementation
``` swift
enum FactoryMethod {
    static func create(for productType: ProductType) -> Product {
        switch productType {
            case .product1: return CreateFactoryFirst().factoryMethod()
            case .product2: return CreateFactoryFirst().factoryMethod()
        }
    }
}
```
