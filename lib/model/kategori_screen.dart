import 'package:flutter/material.dart';
import 'package:furniture_shop/model/dummy_data.dart';
import 'package:furniture_shop/model/kategori_item.dart';

class KategoriScreen extends StatelessWidget {
  const KategoriScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 12 / 12),
      itemCount: dummyCategories.length,
      itemBuilder: (context, index) {
        final kategori = dummyCategories[index];
        print(kategori.title);
        return KategoriItem(
          id: kategori.id,
          title: kategori.title,
          images: kategori.images,
          price: kategori.price,
        );
      },
    );
  }
}
