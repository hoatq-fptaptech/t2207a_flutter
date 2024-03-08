import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:t2207a_flutter/model/product_list.dart';
import 'package:t2207a_flutter/screen/home/ui/popular_item.dart';

class Popular extends StatefulWidget{
 const Popular({Key? key}) : super(key: key);

 @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular>{
  late List<Product> products = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchProducts();
  }

  // call api get data
  Future<void> _fetchProducts() async{
    // try{
      // call API
      const url = "https://dummyjson.com/products?limit=12";
      Response response = await Dio().get(url);
      // convert to Model object
      ProductList list = ProductList.fromJson(response.data);
      setState(() {
        products = list.products!;
      });

    // }catch(e){
    //   print("Error: $e");
    // }
  }

  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Popular"),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: PopularItem(product: products[index]),
                );
              },
            ),
          )
        ],
      );
  }
}