import 'package:assignment_11/model/model_list.dart';
import 'package:flutter/material.dart';

class ReactionButton extends StatefulWidget {
  const ReactionButton({Key? key}) : super(key: key);

  @override
  _ReactionButtonState createState() => _ReactionButtonState();
}

class _ReactionButtonState extends State<ReactionButton> {
  //bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    List<ImageList> myImage = getImageList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Reaction Button'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: myImage.length,
        padding: EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return MyList(image: "${myImage[index].image}");
        },
      ),
    );
  }
}

class MyList extends StatefulWidget {
  final String image;
  const MyList({Key? key, required this.image}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 16,
      semanticContainer: true,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("${widget.image}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: () {
                      setState(() {
                        print(isSelected);
                        isSelected = !isSelected;
                        print(isSelected);
                      });
                    },
                    icon: Icon(
                      Icons.thumb_up_alt,
                      color: isSelected ? Colors.blue : Colors.black,
                    ),
                    label: Text('Like',
                        style: TextStyle(
                            color: isSelected ? Colors.blue : Colors.black))),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Comment',
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Share',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
