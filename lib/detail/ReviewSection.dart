import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Review extends StatelessWidget {
  // const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width : double.infinity,
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text(
                        '3.0',
                        style: TextStyle(
                            fontFamily: 'Pushster',
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 35,
                      )
                    ],
                  ),
                  Text(
                    '6 Reviews',
                    style: TextStyle(
                        fontFamily: 'Pushster',
                        color: Colors.black,
                        fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReviewBar(
                percent : 0.2,
                star :5,
                color : Colors.green
              ),
              ReviewBar(
                percent: 0.18,
                star: 4,
                color: Colors.green,
              ),
              ReviewBar(
                percent: 0.4,
                star: 3,
                color: Colors.amber,
              ),
              ReviewBar(
                percent: 0.15,
                star: 2,
                color: Colors.amber,
              ),
              ReviewBar(
                percent: 0.15,
                star: 1,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}


class ReviewBar extends StatelessWidget {
  final double percent;
  final int star;
  final Color color;
  ReviewBar({this.percent,this.star,this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              star.toString(),
              style: TextStyle(
                  //fontFamily: 'Pushster',
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            )
          ],
        ),
        LinearPercentIndicator(
          width: 160,
          lineHeight: 15,
          percent: this.percent,

          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: color,
          backgroundColor: Colors.grey[300],
          animation: true,
          //animationDuration: 5000,
        ),
      ],
    );
  }
}
