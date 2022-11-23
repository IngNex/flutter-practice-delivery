import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/shop/check_out_page.dart';
import 'package:flutter/material.dart';

import 'shop_product.dart';

class ShopBottomSheet extends StatefulWidget {
  @override
  _ShopBottomSheetState createState() => _ShopBottomSheetState();
}

class _ShopBottomSheetState extends State<ShopBottomSheet> {
  List<Product> products = [
    Product(
        'assets/semi_rose.png',
        'Vino Gran Rosé',
        'Color rosado pálido muy atractivo. En nariz predominan notas a cereza, fresa, melocotón. En boca, es frutado y con un dulzor agradable, con ligera acidez pero con persistencia en boca.',
        80.99),
    Product(
        'assets/pisco_la_botija.png',
        'Pisco La Botija Italia',
        'Es un pisco elaborado con uvas rigurosamente seleccionadas «aromáticas» el Italia. En nariz, se encuentran atractivos aromas a Muscat que se intensifican en boca dando una sensación de dulzor. Este pisco asocia fuerza y redondez. Un gran respeto en la destilación permite preservar la fineza obtenida en los largos meses de crecimiento y maduración de las uvas.',
        102.99),
    Product(
        'assets/Whisky-Johnnie-Walkerl.png',
        'Whisky JW Red Label',
        'Johnnie Walker Red Label se destaca por su carácter e intensidad, por sus notas especiadas que estallan con sabores vibrantes y ahumados. Es una mezcla que combina whiskies ligeros de la costa este escocesa y whiskies ahumados y oscuros de la costa oeste, creando una extraordinaria profundidad de sabor.',
        66.99),
    Product(
        'assets/vino_tinto_pais.png',
        'Vino Tinto País',
        'De color rubí intenso. En nariz presenta notas a compotas de frutas y vainilla. En boca es un vino dulce, agradable con taninos suaves, ideal para los que gustan de tintos ligeros. Deja en boca un largo y placentero final.',
        55.99),
    Product(
        'assets/Whisky-Something-Special.png',
        'Whisky Something',
        'se caracteriza por su aroma ligeramente ahumado y afrutado que crea un perfecto balance y equilibrio. Su sabor es suave, tiene notas de malta dulce y chocolate amargo, con un final seco y sensaciones de humo, cuero y especias.',
        152.99),
    Product(
        'assets/pisco_acholado.png',
        'Pisco Acholado',
        'Es un blend de dos variedades de uvas, la Italia que es una uva aromática y Quebranta que es una uva no aromática. En vista, limpio, transparente, incoloro y brillante. En nariz, es muy especial porque reflejan aromas herbáceos y frutales a la vez, como duraznos. En boca es la mezcla ideal, ya que combina la potencia del Italia y la extrema redondez del quebranta.',
        55.99),
  ];

  @override
  Widget build(BuildContext context) {
    Widget confirmButton = InkWell(
      onTap: () async {
        Navigator.of(context).pop();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => CheckOutPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        padding: EdgeInsets.symmetric(vertical: 20.0),
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom == 0
                ? 20
                : MediaQuery.of(context).padding.bottom),
        child: Center(
            child: new Text("Confirmar",
                style: const TextStyle(
                    color: const Color(0xfffefefe),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0))),
        decoration: BoxDecoration(
            gradient: mainButton,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.16),
                offset: Offset(0, 5),
                blurRadius: 10.0,
              )
            ],
            borderRadius: BorderRadius.circular(9.0)),
      ),
    );

    return Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.95),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25))),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Image.asset(
                  'assets/box.png',
                  height: 24,
                  width: 24.0,
                  fit: BoxFit.cover,
                ),
                onPressed: () {},
                iconSize: 48,
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (_, index) {
                    return Row(
                      children: <Widget>[
                        ShopProduct(
                          products[index],
                          onRemove: () {
                            setState(() {
                              products.remove(products[index]);
                            });
                          },
                        ),
                        index == 4
                            ? SizedBox()
                            : Container(
                                width: 2,
                                height: 200,
                                color: Color.fromARGB(132, 34, 0, 255))
                      ],
                    );
                  }),
            ),
            confirmButton
          ],
        ));
  }
}
