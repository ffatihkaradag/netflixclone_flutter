import 'package:flutter/material.dart';
import 'package:netflix_clone/models/movie_model.dart';
import 'package:netflix_clone/widgets/circular_clipper.dart';
import 'package:netflix_clone/widgets/content_scroll.dart';

class MovieScreen extends StatefulWidget {
  final Movie movie;
  MovieScreen({this.movie});
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              //movie image
              Container(
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: Hero(
                  tag: widget.movie.imageUrl,
                  child: ClipShadowPath(
                    clipper: CircularClipper(),
                    shadow: Shadow(blurRadius: 20.0),
                    child: Image(
                      height: 400.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage(widget.movie.imageUrl),
                    ),
                  ),
                ),
              ),
              //top menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left: 30),
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                  Image(
                    image: AssetImage('assets/images/netflix_logo.png'),
                    height: 60.0,
                    width: 150.0,
                  ),
                  IconButton(
                    padding: EdgeInsets.only(left: 30),
                    onPressed: () => print('add to favorite'),
                    icon: Icon(Icons.favorite_border),
                    iconSize: 30,
                    color: Colors.black,
                  ),
                ],
              ),
              // play button
              Positioned.fill(
                bottom: 10.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RawMaterialButton(
                    padding: EdgeInsets.all(10.0),
                    elevation: 12.0,
                    onPressed: () => print('play video'),
                    shape: CircleBorder(),
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.play_arrow,
                      size: 60.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 20.0,
                child: IconButton(
                  onPressed: () => print('add to my list'),
                  icon: Icon(Icons.add),
                  iconSize: 40.0,
                  color: Colors.black,
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 20.0,
                child: IconButton(
                  onPressed: () => print('share '),
                  icon: Icon(Icons.share),
                  iconSize: 40.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.movie.title.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  widget.movie.categories,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  '⭐⭐⭐⭐⭐',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Text(
                          'Year',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          widget.movie.year.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Country',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          widget.movie.country.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Length',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '${widget.movie.length} min',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 120.0,
                  child: SingleChildScrollView(
                    child: Text(
                      widget.movie.description,
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ContentScroll(
            images: widget.movie.screenshots,
            title: 'Screenshots',
            imageHeight: 200.0,
            imageWidth: 250.0,
          ),
        ],
      ),
    );
  }
}
