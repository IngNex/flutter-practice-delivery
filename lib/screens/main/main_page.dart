import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/custom_background.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/category/category_list_page.dart';
import 'package:ecommerce_int2/screens/notifications_page.dart';
import 'package:ecommerce_int2/screens/profile_page.dart';
import 'package:ecommerce_int2/screens/search_page.dart';
import 'package:ecommerce_int2/screens/shop/check_out_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/custom_bottom_bar.dart';
import 'components/product_list.dart';
import 'components/tab_view.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

List<String> timelines = ['Vinos', 'Piscos', 'Whisky'];
String selectedTimeline = 'Vinos';

List<Product> products = [
  Product(
      'assets/semi_rose.png',
      'Vino Gran Rosé',
      'Color rosado pálido muy atractivo. En nariz predominan notas a cereza, fresa, melocotón. En boca, es frutado y con un dulzor agradable, con ligera acidez pero con persistencia en boca.',
      80.99),
  Product(
      'assets/vino_tinto_pais.png',
      'Vino Tinto País',
      'De color rubí intenso. En nariz presenta notas a compotas de frutas y vainilla. En boca es un vino dulce, agradable con taninos suaves, ideal para los que gustan de tintos ligeros. Deja en boca un largo y placentero final.',
      55.99),
  Product(
      'assets/seco_blanco.png',
      'Vino Gran Blanco Fina',
      'Nota de Cata: Tiene un color amarillo sumamente ligero con tonalidades  verdosas. En nariz, los aromas marcados a fruta blanca y manzana verde, muy herbáceo y mineral que se refleja en boca, lo que nos da un vino ligero, equilibrado y fácil de tomar.',
      82.99),
];

class _MainPageState extends State<MainPage>
    with TickerProviderStateMixin<MainPage> {
  late TabController tabController;
  late TabController bottomTabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    bottomTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Widget appBar = Container(
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => NotificationsPage())),
              icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SearchPage())),
              icon: SvgPicture.asset('assets/icons/search_icon.svg'))
        ],
      ),
    );

    Widget topHeader = Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedTimeline = timelines[0];
                    products = [
                      Product(
                          'assets/semi_rose.png',
                          'Vino Gran Rosé',
                          'Color rosado pálido muy atractivo. En nariz predominan notas a cereza, fresa, melocotón. En boca, es frutado y con un dulzor agradable, con ligera acidez pero con persistencia en boca.',
                          80.99),
                      Product(
                          'assets/vino_tinto_pais.png',
                          'Vino Tinto País',
                          'De color rubí intenso. En nariz presenta notas a compotas de frutas y vainilla. En boca es un vino dulce, agradable con taninos suaves, ideal para los que gustan de tintos ligeros. Deja en boca un largo y placentero final.',
                          55.99),
                      Product(
                          'assets/seco_blanco.png',
                          'Vino Gran Blanco Fina',
                          'Nota de Cata: Tiene un color amarillo sumamente ligero con tonalidades  verdosas. En nariz, los aromas marcados a fruta blanca y manzana verde, muy herbáceo y mineral que se refleja en boca, lo que nos da un vino ligero, equilibrado y fácil de tomar.',
                          82.99),
                    ];
                  });
                },
                child: Text(
                  timelines[0],
                  style: TextStyle(
                      fontSize: timelines[0] == selectedTimeline ? 20 : 14,
                      color: darkGrey),
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedTimeline = timelines[1];
                    products = [
                      Product(
                          'assets/pisco_la_botija.png',
                          'Pisco La Botija Italia',
                          'Es un pisco elaborado con uvas rigurosamente seleccionadas «aromáticas» el Italia. En nariz, se encuentran atractivos aromas a Muscat que se intensifican en boca dando una sensación de dulzor. Este pisco asocia fuerza y redondez. Un gran respeto en la destilación permite preservar la fineza obtenida en los largos meses de crecimiento y maduración de las uvas.',
                          102.99),
                      Product(
                          'assets/pisco_acholado.png',
                          'Pisco Acholado',
                          'Es un blend de dos variedades de uvas, la Italia que es una uva aromática y Quebranta que es una uva no aromática. En vista, limpio, transparente, incoloro y brillante. En nariz, es muy especial porque reflejan aromas herbáceos y frutales a la vez, como duraznos. En boca es la mezcla ideal, ya que combina la potencia del Italia y la extrema redondez del quebranta.',
                          55.99),
                      Product(
                          'assets/pisco_verde_quebranta.png',
                          'Pisco Verde Quebranta',
                          'Es el resultado de la interrupción de la fermentación del Mosto de Uva Quebranta. En vista, limpio, transparente, incoloro y brillante. En nariz, se encuentran aromas a frutos secos pero con una ligera nota mineral; en boca muy aterciopelado, dejando un placentero y largo final a frutas secas.',
                          152.99),
                    ];
                  });
                },
                child: Text(timelines[1],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: timelines[1] == selectedTimeline ? 20 : 14,
                        color: darkGrey)),
              ),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedTimeline = timelines[2];
                    products = [
                      Product(
                          'assets/Whisky-Johnnie-Walkerl.png',
                          'Whisky JW Red Label',
                          'Johnnie Walker Red Label se destaca por su carácter e intensidad, por sus notas especiadas que estallan con sabores vibrantes y ahumados. Es una mezcla que combina whiskies ligeros de la costa este escocesa y whiskies ahumados y oscuros de la costa oeste, creando una extraordinaria profundidad de sabor.',
                          66.99),
                      Product(
                          'assets/Black-label.png',
                          'Whisky JW Black Label',
                          'Creado usando sólo whiskies con un mínimo de 12 años de añejamiento de los 4 rincones de Escocia, Johnnie Walker Black Label tiene un inconfundible carácter profundo, suave y complejo.',
                          55.99),
                      Product(
                          'assets/Whisky-Something-Special.png',
                          'Whisky Something',
                          'se caracteriza por su aroma ligeramente ahumado y afrutado que crea un perfecto balance y equilibrio. Su sabor es suave, tiene notas de malta dulce y chocolate amargo, con un final seco y sensaciones de humo, cuero y especias.',
                          152.99),
                    ];
                  });
                },
                child: Text(timelines[2],
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: timelines[2] == selectedTimeline ? 20 : 14,
                        color: darkGrey)),
              ),
            ),
          ],
        ));

    Widget tabBar = TabBar(
      tabs: [
        Tab(text: 'Piscos'),
        Tab(text: 'Vinos'),
        Tab(text: 'Dodka'),
        Tab(text: 'Whisky'),
        Tab(text: 'Ron'),
      ],
      labelStyle: TextStyle(fontSize: 16.0),
      unselectedLabelStyle: TextStyle(
        fontSize: 14.0,
      ),
      labelColor: darkGrey,
      unselectedLabelColor: Color.fromRGBO(0, 0, 0, 0.5),
      isScrollable: true,
      controller: tabController,
    );

    return Scaffold(
      bottomNavigationBar: CustomBottomBar(controller: bottomTabController),
      body: CustomPaint(
        painter: MainBackground(),
        child: TabBarView(
          controller: bottomTabController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            SafeArea(
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  // These are the slivers that show up in the "outer" scroll view.
                  return <Widget>[
                    SliverToBoxAdapter(
                      child: appBar,
                    ),
                    SliverToBoxAdapter(
                      child: topHeader,
                    ),
                    SliverToBoxAdapter(
                      child: ProductList(
                        products: products,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: tabBar,
                    )
                  ];
                },
                body: TabView(
                  tabController: tabController,
                ),
              ),
            ),
            CategoryListPage(),
            CheckOutPage(),
            ProfilePage()
          ],
        ),
      ),
    );
  }
}
