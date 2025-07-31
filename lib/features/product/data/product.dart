class Product {
  final String productName;
  final String productDescription;
  final double productPrice;
  final int productLikes;
  final String productImage;

  const Product({
    this.productName = 'Produktname',
    this.productDescription = 'Produktbeschreibung',
    this.productPrice = 0.00,
    this.productLikes = 0,
    this.productImage = 'No Image',
  });

  String get name {
    return productName;
  }

  String get description {
    return productDescription;
  }

  double get price {
    return productPrice;
  }

  int get likes {
    return productLikes;
  }

  String get image {
    return productImage;
  }
}
