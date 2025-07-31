class Product {
  final String productName;
  final String productShortInfo;
  final String productLongInfo;
  final double productPrice;
  final int productLikes;
  final String productImage;
  final String _currency = '₳';

  const Product({
    this.productName = 'Produktname',
    this.productShortInfo = 'Kurzbeschreibung',
    this.productLongInfo = 'Produktbeschreibung',
    this.productPrice = 0.00,
    this.productLikes = 0,
    this.productImage = 'No Image',
  });

  String get name {
    return productName;
  }

  String get shortInfo {
    return productShortInfo;
  }

  String get longInfo {
    return productLongInfo;
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

  String get currency {
    return _currency;
  }
}
