import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rappiappg8/widgets/welcome_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CarouselSlider(
          items: [
            WelcomeWidget(
              title: "¡Cualquier lugar!",
              description:
                  "Pide un Rappi. Te llevamos todo, en minutos, a cualquier lugar.",
              imagePath: "assets/images/mapas.png",
              color: Colors.red,
            ),
            WelcomeWidget(
              title: "¡Pide lo que quieras!",
              description:
                  "Rappi te ofrece la mejor selección para que pidas comida, supermercados, licores, conveniencia, farmacias, flores, y mucho más en minutos. Con más de 200,000 restaurantes y tiendas de conveniencia en más de 300 ciudades en Latinoamérica, con Rappi disfruta.",
              imagePath: "assets/images/shop.png",
              color: Colors.cyan,
            ),
            WelcomeWidget(
              title: "Paga con tarjeta",
              description:
                  "Hasta 15 dias de gratis. Para tus primeros pedidos en Restaurantes pagando con tarjeta.",
              imagePath: "assets/images/card.png",
              color: Colors.orange,
              showButton: true,
            ),
          ],
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            autoPlay: true,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            autoPlayCurve: Curves.easeInCubic,
            initialPage: 1,
          ),
        ),
      ),
    );
  }
}
