import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

List<String> imagenes = [
  "https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/farmacia/farma.jpg",
  'https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/farmacia/farmacia.jpg',
];

Widget swiperHome() {
  return Container(
    width: double.infinity,
    height: 150.0,
    child: Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          imagenes[index],
          fit: BoxFit.cover,
        );
      },
      itemCount: imagenes.length,
      viewportFraction: 0.8,
      scale: 0.9,
      pagination: const SwiperPagination(),
      control: const SwiperControl(),
    ),
  );
}
