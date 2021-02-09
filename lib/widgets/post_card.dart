import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final BoxConstraints constraints;
  const PostCard({Key key, @required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth - 15,
      height: 150,
      // color: Colors.amber,
      child: Row(
        children: [
          Container(
            width: (constraints.maxWidth - 25) / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    '3Feb',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '05 Mins Read',
                      style: TextStyle(
                        color: Color(0x55333333),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Make design systems people want to use.',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconTextButton(
                          icon: CupertinoIcons.hand_raised,
                          count: '22.8k',
                        ),
                        IconTextButton(
                          icon: CupertinoIcons.chat_bubble_text,
                          count: '22.8k',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  final String count;
  final IconData icon;
  const IconTextButton({
    Key key,
    this.count,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$count',
        ),
        SizedBox(width: 5),
        Icon(icon)
      ],
    );
  }
}
