import 'package:flutter/material.dart';
class DetailDescription extends StatelessWidget {
  String description; 
  DetailDescription(this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(description, maxLines: 4, style: TextStyle(fontSize: 16,color: Colors.grey),)
                      ),
                    ),
                    // SizedBox(height : 5), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width : 200,
                          color: Colors.blue[50],
                          padding: EdgeInsets.all(8),
                          child: Table(
                            border: TableBorder.all(color: Colors.yellow[100]),
                            children: [
                              TableRow(children: [
                                Text('Pin code',textAlign: TextAlign.center,style: TextStyle(color : Colors.grey),),
                                Text('Check availability',textAlign: TextAlign.center,style: TextStyle(color : Colors.grey)),
                                // Text('Cell 3'),
                              ]),

                            ],
                          ),
                        ),
                        Container(
                          child: 
                          Column(
                            children: [
                              Container(
                                child: Text('Delivery By', style: TextStyle(color : Colors.grey)),
                              ),
                              Container(
                                child: Text('25 June Monday', style : TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding : EdgeInsets.all(10),
                      
                      child: Text(
                        'Color', 
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            // padding:  EdgeInsets.only(left:30), 
                            width: 13,
                            height: 13,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            // padding:  EdgeInsets.only(left:30), 
                            width: 13,
                            height: 13,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueAccent,
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      padding : EdgeInsets.all(10),
                      
                      child: Text(
                        'Size', 
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left:5,right:15),
                            child:Text('L' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                          ),
                          Container(
                            padding: EdgeInsets.only(left :20,right : 20),
                            child:Text('M' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                          ),
                          Container(
                            padding: EdgeInsets.only(left :20,right : 20),
                            child:Text('S' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                          ),
                          Container(
                            padding: EdgeInsets.only(left :20,right : 20),
                            child:Text('XL' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                          )
                        ],
                      ),
                    )
                  ],
    );
  }
}