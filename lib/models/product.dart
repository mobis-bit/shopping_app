class Product {
  String productName;
  double productPrice;
  String productImg;
  bool isSelected;
  Product(
      {this.productName,
      this.isSelected = false,
      this.productPrice,
      this.productImg});

  void toggleDone() {
    isSelected = !isSelected;
  }
}
