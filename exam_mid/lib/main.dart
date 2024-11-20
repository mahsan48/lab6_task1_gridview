import 'package:flutter/material.dart';

class ResponsiveGridPage extends StatelessWidget {
  final List<String> imageUrls = [
    // Replace these with local asset paths or online URLs
    'https://as2.ftcdn.net/v2/jpg/06/11/06/73/1000_F_611'
        '067367_IE2McTzcKDk9WPehVlqgVJbA2dkRik3n.jpg',
    'https://as1.ftcdn.net/v2/jpg/08/14/27/60/100'
        '0_F_814276024_kJPzKJ9geW9OpEkovozzSghA6qX8X1RT.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 150).floor();

    return Scaffold(


      appBar: AppBar(
        elevation:0,
        title: Text('hd image of the nature'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: imageUrls.length,

        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ResponsiveGridPage(),debugShowCheckedModeBanner: false));
}
