import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Review extends StatelessWidget {
  // const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
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
              StarReview(
                percent : 0.2,
                star :5,
                color : Colors.green
              ),
              StarReview(
                percent: 0.18,
                star: 4,
                color: Colors.green,
              ),
              StarReview(
                percent: 0.4,
                star: 3,
                color: Colors.amber,
              ),
              StarReview(
                percent: 0.15,
                star: 2,
                color: Colors.amber,
              ),
              StarReview(
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

class StarReview extends StatelessWidget {
  final double percent;
  final int star;
  final Color color;
  StarReview({this.percent,this.star,this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              star.toString(),
              style: TextStyle(
                  fontFamily: 'Pushster',
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            )
          ],
        ),
        LinearPercentIndicator(
          width: 160,
          lineHeight: 15,
          percent: percent,

          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: color,
          backgroundColor: Colors.grey[400],
          animation: true,
          //animationDuration: 5000,
        ),
      ],
    );
  }
}
