import 'produk.dart';
import 'kategori.dart';

List<Category> dummyCategories = [
  // ignore: prefer_const_constructors
  Category(
      id: "id_stylish",
      title: "Stylish Chair",
      images: "kursi.png",
      price: "\$ 170"),
  Category(
      id: "id_modern",
      title: "Modern Table",
      images: "kursi_pink.png",
      price: "\$ 75"),
  Category(
      id: "id_wooden",
      title: "Wooden Console",
      images: "kursi_coklat.png",
      price: "\$ 240"),
  Category(
      id: "id_brown",
      title: "Brown Armchair",
      images: "kursi_ijo.png",
      price: "\$ 210"),
];
//perintah untuk load image dari network, ketika tdk keluar flutter run -d chrome --web-renderer html

List<Produk> dummy_produk = [
  Produk(
    id: DateTime.now().toString(),
    title: "Stylish Chair",
    category: "id_stylish",
    price: "\$ 170",
    imgAssets: "kursi.png",
  ),
  Produk(
    id: DateTime.now().toString(),
    title: "Modern Table",
    category: "id_modern",
    price: "\$ 75",
    imgAssets: "kursi_pink.png",
  ),
  Produk(
    id: DateTime.now().toString(),
    title: "Wooden Console",
    category: "id_wooden",
    price: "\$ 240",
    imgAssets: "kursi_coklat.png",
  ),
  Produk(
    id: DateTime.now().toString(),
    title: "Brown Armchair",
    category: "id_brown",
    price: "\$ 210",
    imgAssets: "kursi_ijo.png",
  ),
];
