import 'package:flutter/material.dart';
import 'package:swift_cart/screens/cart_product_data.dart';
import '../utiles/all_product_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  String? setDropDownValue;

  _getRequests() async {}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 32) / 2.5;
    final double itemWidth = size.width / 2;

    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        title: Text(
          "Swift Cart",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 25),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {

                  Navigator.of(context).pushNamed("cart_page");
              },
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: DropdownButton(

                      hint: Text("Select category..."),
                      value: setDropDownValue,
                      borderRadius: BorderRadius.circular(5),
                      onChanged: (val) {
                        setState(() {
                          setDropDownValue = val as String;
                        });
                      },
                      items: ProductData.allProductDataList
                          .map((e) => DropdownMenuItem(
                              value: e['categoryName'],
                              child: Text(e['categoryName'])))
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  setDropDownValue != null
                      ? ActionChip(
                          onPressed: () {
                            setState(() {
                              setDropDownValue = null;
                            });
                          },
                          avatar: Icon(Icons.close,size: 15,),
                          label: Text("Clear",style: TextStyle(fontSize: 12),))
                      : Container()
                ],
              ),
            ),
            Expanded(
                flex: 10,
                child: GridView.count(crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  childAspectRatio: (itemWidth / itemHeight),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,

                  shrinkWrap: true,
                  children: [
                   for(int i=0;i<ProductData.allProductDataList.length;i++)
                     ...ProductData.allProductDataList[i]['categoryProducts'].map(
                            (Map<String, dynamic> e) {
                          return
                           ( setDropDownValue ==
                                null ||
                                setDropDownValue == e['product_category'])
                                ?
                            GestureDetector(
                            onTap: () {
                              /* Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new ProductDetails()),)
                                                          .then((val)=>val?_getRequests():null);*/
                              Navigator.of(context)
                                  .pushNamed(
                                  "product_details",
                                  arguments: e);
                            },
                            child: Container(
                              height: 210,
                              width: 180,
                              margin: EdgeInsets.only(
                                  right: 10,
                                  bottom: 10),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors
                                            .black12,
                                        blurRadius: 2,
                                        spreadRadius: 1,
                                        offset: Offset(
                                            0, 4))
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius
                                      .circular(
                                      20)),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .start,
                                crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                                mainAxisSize:
                                MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 180,
                                    width: 180,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "${e['thumbnail']}")),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius
                                                .circular(
                                                20),
                                            topRight: Radius
                                                .circular(
                                                20))),
                                  ),
                                  Container(
                                    alignment: Alignment
                                        .topLeft,
                                    margin:
                                    EdgeInsets.only(
                                        left: 10,
                                        bottom: 5,
                                        top: 5),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "${e['product_name']}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment
                                        .topLeft,
                                    margin:
                                    EdgeInsets.only(
                                        left: 10,
                                        bottom: 5),
                                    child: Text(
                                      "\$ ${e['product_price']}",
                                      style: TextStyle(
                                          fontWeight:
                                          FontWeight
                                              .bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ): Container();
                        })
                  ],)
    ),
          ],
        ),
      ),
    );
  }
}
