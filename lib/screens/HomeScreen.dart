import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_movies/common/utils.dart';
import 'package:my_movies/services/api_servises.dart';
import 'package:my_movies/wigets/movie_card_widgget.dart';

import '../modals/UpcomingModels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<UpcomingMovieModel> UpcomingFuture;
  ApiServises apiServises=ApiServises();

  @override
  void initState() {
    // TODO: implement initState
    UpcomingFuture= apiServises.getUpcomingMovies();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,// set the back ground color
        title: Image.asset("assets/img_1.png",
            height: 60,
            width: 120,),
        actions:[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: ()
              {},
              child: Icon(Icons.search,
                size: 30,
                color: Colors.white,
                      ),
            ),
          ),

          ClipRRect(

            borderRadius: BorderRadius.circular(6),
            child: Container(
              // margin: EdgeInsets.only(right: 20),
              color: Colors.blue,
              height: 27,
              width: 27,
            ),
          )

        ],

      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            // FutureBuilder(future: future, builder: builder)
            SizedBox(
              height:220 ,
              child: MovieCardWidgets(
              future : UpcomingFuture, headLineText : "Upcoming Movies"),
            )
            
          ],
        ),
      )
      ,
    );
  }
}
