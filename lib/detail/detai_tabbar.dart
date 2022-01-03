import 'package:flutter/material.dart';
import './ReviewSection.dart';
import './detail_description.dart';

class DetailTabbar extends StatefulWidget {
  // const DetailTabbar({Key? key}) : super(key: key);

  @override
  String des; 
  DetailTabbar(this.des);
  State<DetailTabbar> createState() => _DetailTabbarState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _DetailTabbarState extends State<DetailTabbar> with TickerProviderStateMixin {
  TabController _controller; 

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
            child: new TabBar(
              controller: _controller,
              tabs: [
                new Tab(
                  text: 'Description',
                ),
                new Tab(
                  text: 'More info',
                ),
                new Tab(
                  text: 'Reviews',
                ),

              ],
            ),
        ),

        Container(
            height: 400,
            //color: Colors.amber,
            child: new TabBarView(
              controller: _controller,
              children: <Widget>[
                new  DetailDescription(widget.des),

                new Card(
                  child: new ListTile(

                    title: new Text('Some sample text'),
                  ),
                ),

                new Review(),
              ],
            ),
          ),
      ],
    );  
  }
}
