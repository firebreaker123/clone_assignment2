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

final List<ProductImage> wishlistProducts = [
  jinjjampong,
  kahluaCoffee,
  filiteFresh,
  kimchiNoodle,
]; 

final List<ProductImage> scanHistoryProducts = [
  hotCheetosDillPickle,
  hotCheetosDillPickle,
];