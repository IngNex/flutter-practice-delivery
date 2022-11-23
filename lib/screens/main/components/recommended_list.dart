import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/product/product_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class RecommendedList extends StatelessWidget {
  List<Product> products = [
    Product(
      'assets/rose_tuyo.png',
      'Vino Rosé Tuyo',
      'Vino ligeramente gasificado.',
      80.33,
    ),
    Product(
      'assets/gran_rose.png',
      'Vino Rosé Gran',
      'Rojo cereza con ribetes violáceo.',
      60,
    ),
    Product('assets/vino_malbec_merlot.png', 'Vino Gran Malbec',
        'Rojo cereza cubierto con tonalidades frambuesa.', 70),
    Product(
        'assets/gran_tinto_fr.png',
        'Vino Gran Tinto',
        'En boca es fresco y de cuerpo medio, con un suave sabor mineral, taninos amables',
        80),
    Product(
        'assets/vino_vittoria_syrah.png',
        'Vino Vittoria Syrah',
        'Posee un producto color rojo violáceo. En nariz presenta delicadas notas florales como violetas.',
        60),
    Product(
        'assets/pisco_verde_italia.png',
        'Pisco Mosto Verde Italia',
        'Es el resultado de la interrupción de la fermentación del Mosto de Uva Italia.',
        90.33),
    Product(
        'assets/espumante_muscat_rosso.png',
        'Vittoria Muscat Rosso',
        'Espumante semi seco. Posee un atractivo color rosado. Con finas burbujas producto de la segunda fermentación (método Charmat).',
        52.33),
    Product(
        'assets/vino_vittoria_sauvignon_blanc.png',
        'Vino Vittoria Sauvignon',
        'Se caracteriza por tener un color amarillo pálido con tonalidades verdosas, aromas complejos y elegantes.',
        62.33),
    Product(
        'assets/pisco_la_botija_quebranta.png',
        'Pisco Botija Quebranta',
        'La fineza de este Pisco es el resultado de una rigurosa selección de las uvas y de una vinificación que combina tradición y alta tecnología.',
        72.33),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 8.0),
                  width: 4,
                  color: mediumYellow,
                ),
              ),
              Center(
                  child: Text(
                'Recomendar',
                style: TextStyle(
                    color: darkGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 4,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) => new ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ProductPage(product: products[index]))),
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                            colors: [
                              Colors.grey.withOpacity(0.3),
                              Colors.grey.withOpacity(0.7),
                            ],
                            center: Alignment(0, 0),
                            radius: 0.6,
                            focal: Alignment(0, 0),
                            focalRadius: 0.1),
                      ),
                      child: Hero(
                          tag: products[index].image,
                          child: Image.asset(products[index].image))),
                ),
              ),
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        ),
      ],
    );
  }
}
