import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/product/components/product_card.dart';
import 'package:flutter/material.dart';

class MoreProducts extends StatelessWidget {
  final List<Product> products = [
    Product(
        'assets/semi_rose.png',
        'Vino Gran Rosé',
        'Color rosado pálido muy atractivo. En nariz predominan notas a cereza, fresa, melocotón. En boca, es frutado y con un dulzor agradable, con ligera acidez pero con persistencia en boca.',
        80.99),
    Product(
        'assets/vino_tinto_pais.png',
        'Vino  Tinto País',
        'De color rubí intenso. En nariz presenta notas a compotas de frutas y vainilla. En boca es un vino dulce, agradable con taninos suaves, ideal para los que gustan de tintos ligeros. Deja en boca un largo y placentero final.',
        55.99),
    Product(
        'assets/seco_blanco.png',
        'Vino Blanco Fina',
        'Nota de Cata: Tiene un color amarillo sumamente ligero con tonalidades  verdosas. En nariz, los aromas marcados a fruta blanca y manzana verde, muy herbáceo y mineral que se refleja en boca, lo que nos da un vino ligero, equilibrado y fácil de tomar.',
        82.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 24.0, bottom: 8.0),
          child: Text(
            'Mas productos',
            style: TextStyle(color: Colors.white, shadows: shadow),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 250,
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (_, index) {
              return Padding(

                  ///calculates the left and right margins
                  ///to be even with the screen margin
                  padding: index == 0
                      ? EdgeInsets.only(left: 24.0, right: 8.0)
                      : index == 4
                          ? EdgeInsets.only(right: 24.0, left: 8.0)
                          : EdgeInsets.symmetric(horizontal: 8.0),
                  child: ProductCard(products[index]));
            },
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
