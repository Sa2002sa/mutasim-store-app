import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:store_app/widgets/the_pics_in_grid_View_cache_pic.dart';

class the_gridview extends StatelessWidget {
  const the_gridview({super.key});
  final imageUrl = 'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/advice/maps-satellite-images/satellite-image-of-globe.jpg';

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 8,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {



          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
            //  borderOnForeground: true,

            child: Image.asset('assets/Nike mens Air Force.jpg',),
            ),
          );
        });
  }
}
