class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.productStock = 0,
    this.price = 0,
    this.rating = 0.0,
  });

  String title;
  int productStock;
  int price;
  double rating;
  String imagePath;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'User interface Design',
      productStock: 24,
      price: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'User interface Design',
      productStock: 22,
      price: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'User interface Design',
      productStock: 24,
      price: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'User interface Design',
      productStock: 22,
      price: 18,
      rating: 4.6,
    ),
  ];

  static List<Category> productList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'X makeup',
      productStock: 12,
      price: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Y Sun Cream',
      productStock: 28,
      price: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Z Solution',
      productStock: 12,
      price: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'T Shampoo',
      productStock: 28,
      price: 208,
      rating: 4.9,
    ),
  ];
}
