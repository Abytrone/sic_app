class ProductModel {
  final String id;
  final String name;
  final String amount;
  final String date;

  ProductModel({
    required this.id,
    required this.name,
    required this.amount,
    required this.date,
  });

  static List<ProductModel> product = <ProductModel>[
    ProductModel(
      id: 'PP534123413532',
      name: 'Education Plan',
      amount: '750.00',
      date: '20 April, 2020',
    ),
    ProductModel(
      id: 'PP234654323455',
      name: 'Keyman Assurance',
      amount: '140.00',
      date: '20 January, 2023',
    ),
    ProductModel(
      id: 'PP665345676534',
      name: 'Mortgage Protection Plan',
      amount: '240.00',
      date: '17 June, 2022',
    ),
  ];
}
