import 'package:flutter/material.dart';
import 'package:flutter_rxdart/bloc/product_bloc.dart';
import 'package:flutter_rxdart/model/product/product_response.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    productBloc.getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produk')),
      body: StreamBuilder(
        stream: productBloc.subject.stream,
        builder: (context, AsyncSnapshot<ProductResponse> snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              itemCount: snapshot.data.data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 8 / 10,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image(
                            image: NetworkImage(
                              snapshot.data.data[index].imageUrl,
                            ),
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(snapshot.data.data[index].nama),
                        Text('Rp ${snapshot.data.data[index].harga}'),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
