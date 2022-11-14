import 'package:flutter/material.dart';

class KategoriItem extends StatelessWidget {
  final String id;
  final String title;
  final String images;
  final String price;
  const KategoriItem(
      {Key? key,
      required this.id,
      required this.title,
      required this.images,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/chair', arguments: {
            'id': id,
            'title': title,
            'price': price,
          });
        },
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      color: Colors.white,
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.redAccent,
                      ),
                    ),
                  ]),
                ],
              ),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  image: AssetImage(images),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                //    SizedBox(),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          price,
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          size: 24.0,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
