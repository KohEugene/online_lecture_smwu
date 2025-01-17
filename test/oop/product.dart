class Product {

  String name;
  String company;
  int count = 0;
  int price = 5000;

  //Product(this.name, this.company);
  //Product({required this.name, required this.company});
  Product({
    required this.name,
    required this.company,
    this.count = 0,
    this.price = 1000
  });

  void sale() {
    count++;
  }

  @override
  String toString() {
    return 'Product{name: $name, company: $company, count: $count, price: $price}';
  }
}