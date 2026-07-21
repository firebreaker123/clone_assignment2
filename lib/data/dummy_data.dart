class ProductImage {
  ProductImage({required this.imageName, required this.productName, this.paddingNum = 0, required this.heartState, this.date = "No date"});

  final String imageName;
  final String productName;
  final int paddingNum;
  bool heartState;
  final String date;
}

final jinjjampong = ProductImage(
  imageName: "../assets/img/jinjjampong.jpg",
  productName: "Jinjjampong",
  heartState: true,
  date: "02.07.2026",
);

final kahluaCoffee = ProductImage(
  imageName: "../assets/img/kahluaCoffee.webp",
  productName: "KAHLUA COFFEE LIQUEUR",
  heartState: true,
  date: "02.07.2026",
);

final filiteFresh = ProductImage(
  imageName: "../assets/img/filiteFresh.webp",
  productName: "Filite Fresh",
  heartState: true,
  date: "02.07.2026",
);

final kimchiNoodle = ProductImage(
  imageName: "../assets/img/kimchiNoodle.webp",
  productName: "Kimchi Bowl Noodles",
  heartState: true,
  date: "02.07.2026",
);

final hotCheetosDillPickle = ProductImage(
  imageName: "../assets/img/hotCheetosDillPickle.jpg",
  productName: "Hot Cheetos Dill Pickle",
  heartState: false,
  date: "03.12.1995",
);

final yeolRamen = ProductImage(
  imageName: "../assets/img/yeolRamen.jpg",
  productName: "Yeol Ramen",
  heartState: false,
  date: "01.31.1883",
);

final pasquierCremeBrulee = ProductImage(
  imageName: "../assets/img/pasquierCremeBrulee.jpg",
  productName: "Pasquier Creme Brulee",
  heartState: false,
  date: "11.23.2005",
);

final daboRaspberryJam = ProductImage(
  imageName: "../assets/img/daboRaspberryJam.jpg",
  productName: "Dabo Raspberry Jam",
  heartState: false,
  date: "05.17.1102",
);

final heliosStrawberryJam = ProductImage(
  imageName: "../assets/img/heliosStrawberryJam.webp",
  productName: "Helios Strawberry Jam",
  heartState: false,
  date: "10.16.2094",
);

final comboCondiments = ProductImage(
  imageName: "../assets/img/comboCondiments.webp",
  productName: "Combo Condiments",
  heartState: true,
  date: "11.11.1111",
);

final List<ProductImage> wishlistProducts = [
  jinjjampong,
  kahluaCoffee,
  filiteFresh,
  kimchiNoodle,
]; 

final List<ProductImage> scanHistoryProducts = [
  hotCheetosDillPickle,
  hotCheetosDillPickle,
  kimchiNoodle,
];

final List<ProductImage> recentlyViewedProducts = [
  jinjjampong,
  yeolRamen,
  kimchiNoodle,
  pasquierCremeBrulee,
  daboRaspberryJam,
  heliosStrawberryJam,
  comboCondiments,
];
