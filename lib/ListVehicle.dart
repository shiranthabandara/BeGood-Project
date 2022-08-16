import 'dart:convert';
import 'dart:math';
import 'package:begood/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListVehicle extends StatefulWidget {
  @override
  _ListVehicleState createState() => _ListVehicleState();
}

class _ListVehicleState extends State<ListVehicle> {
  late List data;

  Future<List> getData() async {
    final response = await http.get(
      Uri.parse("http://localhost:9191/vehicleDetails"),
    );
    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainBlueColor,
        title: const Text('Vehicle Details'),
        actions: [],
      ),
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ItemList(
                  list: snapshot.data ?? [],
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;

  const ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 100.3,
                  child: Card(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            list[index]['vnum'].toString(),
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
