import 'package:flutter/material.dart';
import 'package:movieapp_200327/model/Media.dart';

class MediaListItem extends StatelessWidget {
  final Media media;

  MediaListItem(this.media);

  @override
  Widget build(BuildContext context) {
    return  new Card(
      child:new Column(
        children: <Widget>[
          new Container(
            child: new Stack(
              children: <Widget>[
            new FadeInImage.assetNetwork(
            placeholder: "assets/placeholder.jpg",
            image: media.getBackDropUrl(),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.0,
            fadeInDuration: new Duration(milliseconds: 500),
            ),
            new Positioned(
              left: 0.0,
              bottom: 0.0,
              right: 0.0,
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.purpleAccent.withOpacity(0.8),
                ),
                constraints: new BoxConstraints.expand(
                  height: 55.0,
                ),
              ),
            ),
            new Positioned(
              left: 10.0,
              bottom: 10.0,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    width: 250,
                    child: new Text(
                      media.title,
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  ),
                  new Container(
                    width: 250.0,
                    padding: const EdgeInsets.only(top: 3.0),
                    child: new Text(
                      media.getGenres(),
                      style: new TextStyle(color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
            new Positioned(
              right: 5.0,
              bottom: 10.0,
              child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Text(media.voteAverage.toString()),
                    new Container(width: 4.0,),
                    new Icon(Icons.star, color: Colors.yellow, size: 16.0,)
                  ],
                ),
                new Container(height: 4.0,),
                new Row(
                  children: <Widget>[
                    new Text(media.getReleaseYear().toString()),
                    new Container(width: 4.0,),
                    new Icon(Icons.date_range, color: Colors.white, size: 16.0,)
                  ],
                )
              ],
            ))
            ],
            )
          )
        ],
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:movieapp_200327/model/Media.dart';

class Media extends StatelessWidget{
  final Media media=newObject();
  MediaListItem(this.media);
  @override
  Widget  build(BuildContext context){
    return new Card(
      child: new Column(
        children: <Widget>[
          new FadeInImage.assetNetwork(
            placeholder: "assets/placeholder.jpg",
            image: media.getPosterUrl()
          )
        ],
      ),
    );
  }
}
*/