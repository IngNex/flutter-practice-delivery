import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBottomSheet extends StatefulWidget {
  final Product product;

  const RatingBottomSheet({super.key, required this.product});

  @override
  _RatingBottomSheetState createState() => _RatingBottomSheetState();
}

class _RatingBottomSheetState extends State<RatingBottomSheet> {
  double rating = 0.0;
  List<int> ratings = [4, 3, 5, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.9),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(24), topLeft: Radius.circular(24))),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 92,
                width: 92,
                decoration: BoxDecoration(
                    color: yellow,
                    shape: BoxShape.circle,
                    boxShadow: shadow,
                    border: Border.all(width: 8.0, color: Colors.white)),
                child: Image.asset(widget.product.image),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 72.0, vertical: 16.0),
                child: Text(
                  widget.product.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    '4.2',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                Column(
                  children: <Widget>[
                    RatingBar(
//                      borderColor: Color(0xffFF8993),
//                      fillColor: Color(0xffFF8993),
                      ignoreGestures: true,
                      itemSize: 20,
                      allowHalfRating: true,
                      initialRating: 4,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      ratingWidget: RatingWidget(
                        empty: Icon(Icons.favorite_border,
                            color: Color(0xffFF8993), size: 20),
                        full: Icon(
                          Icons.favorite,
                          color: Color(0xffFF8993),
                          size: 20,
                        ),
                        half: SizedBox(),
                      ),
                      onRatingUpdate: (value) {
                        setState(() {
                          rating = value;
                        });
                        print(value);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text('from 25 people'),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Align(
                alignment: Alignment(-1, 0), child: Text('Reseñas recientes')),
          ),
          Column(
            children: <Widget>[
              ...ratings
                  .map((val) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              maxRadius: 14,
                              backgroundImage: AssetImage('assets/user.png'),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Jorge Gates',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '9 am, Via iOS',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10.0),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: RatingBar(
                                    ignoreGestures: true,
                                    itemSize: 20,
                                    allowHalfRating: true,
                                    initialRating: val.toDouble(),
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    ratingWidget: RatingWidget(
                                      empty: Icon(Icons.favorite_border,
                                          color: Color(0xffFF8993), size: 20),
                                      full: Icon(
                                        Icons.favorite,
                                        color: Color(0xffFF8993),
                                        size: 20,
                                      ),
                                      half: SizedBox(),
                                    ),
                                    onRatingUpdate: (value) {
                                      setState(() {
                                        rating = value;
                                      });
                                      print(value);
                                    },
                                  ),
                                ),
                                Text(
                                  '¡Si como esperaba! ... estoy muy Feliz',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '21 Like',
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10.0),
                                      ),
                                      Text(
                                        '1 Comentario',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.0),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )))
                  .toList()
            ],
          )
        ],
      ),
    );
  }
}
