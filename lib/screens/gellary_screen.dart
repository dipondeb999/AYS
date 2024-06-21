import 'package:flutter/material.dart';
import 'package:test7/data/gellary_item.dart';

class GellaryScreen extends StatefulWidget {
  const GellaryScreen({super.key});

  @override
  State<GellaryScreen> createState() => _GellaryScreenState();
}

class _GellaryScreenState extends State<GellaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('গ্যালারি',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(imageItems[index]),
                fit: BoxFit.cover,
                ),
              ),
           );
        }
        ),
      ),
    );
  }
}
