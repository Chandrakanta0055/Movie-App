import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_movies/common/utils.dart';
import 'package:my_movies/modals/UpcomingModels.dart';

class MovieCardWidgets extends StatelessWidget {
  final Future<UpcomingMovieModel> future;
  final String headLineText;

  const MovieCardWidgets({super.key, required this.future, required this.headLineText});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: future, builder: (context,snapshot){
      var data =snapshot.data?.results;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headLineText,style: TextStyle(
            fontWeight: FontWeight.bold,

          ),
          ),
          SizedBox(height: 20,),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: data!.length,
                itemBuilder: (context,index)
                {
          return Container(
            padding: EdgeInsets.all(10) ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network("${imageUrl}${data[index].posterPath}"),
          
          );
                }),
        )
        ],
      );
    });
  }
}
