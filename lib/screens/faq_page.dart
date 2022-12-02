import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  List<Panel> panels = [
    Panel(
        '¿CÓMO PUEDO CAMBIAR MI DIRECCIÓN DE ENVÍO?',
        'De manera predeterminada, la última dirección de envío utilizada se guardará en su cuenta de la Tienda de muestra. Cuando esté pagando su pedido, se mostrará la dirección de envío predeterminada y tiene la opción de modificarla si es necesario.',
        false),
    Panel(
        '¿CUÁNTAS MUESTRAS GRATIS PUEDO CANJEAR?',
        'Debido a la cantidad limitada, la cuenta de cada miembro solo tiene derecho a 1 muestra gratuita única. Puede consultar hasta 4 muestras gratuitas en cada pago.',
        false),
    Panel(
        '¿CÓMO PUEDO SEGUIR MIS PEDIDOS Y PAGOS?',
        'De forma predeterminada, la última dirección de envío utilizada se guardará en su cuenta de la Tienda de muestras. Cuando esté pagando su pedido, se mostrará la dirección de envío predeterminada y tendrá la opción de modificarla si es necesario.',
        false),
    Panel(
        '¿CUÁNTO TIEMPO TARDARÁ EN LLEGAR MI PEDIDO DESPUÉS DE REALIZAR EL PAGO?',
        'De manera predeterminada, la última dirección de envío utilizada se guardará en su cuenta de la Tienda de muestra. Cuando esté pagando su pedido, se mostrará la dirección de envío predeterminada y tiene la opción de modificarla si es necesario.',
        false),
    Panel(
        '¿CÓMO ENVÍAN MIS PEDIDOS?',
        'De manera predeterminada, la última dirección de envío utilizada se guardará en su cuenta de la Tienda de muestra. Cuando esté pagando su pedido, se mostrará la dirección de envío predeterminada y tiene la opción de modificarla si es necesario.',
        false),
    Panel(
        '¿CÓMO REALIZO PAGOS UTILIZANDO YAPE? ¿COMO FUNCIONA?',
        'De manera predeterminada, la última dirección de envío utilizada se guardará en su cuenta de la Tienda de muestra. Cuando esté pagando su pedido, se mostrará la dirección de envío predeterminada y tiene la opción de modificarla si es necesario.',
        false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text(
          'Settings',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 24.0, right: 24.0, bottom: 16.0),
                child: Text(
                  'FAQ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              ...panels
                  .map((panel) => ExpansionTile(
                          title: Text(
                            panel.title,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                          children: [
                            Container(
                                padding: EdgeInsets.all(16.0),
                                color: Color(0xffFAF1E2),
                                child: Text(panel.content,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)))
                          ]))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class Panel {
  String title;
  String content;
  bool expanded;

  Panel(this.title, this.content, this.expanded);
}
