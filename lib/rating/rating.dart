import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  late final _ratingController;
  late double _rating;

  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;

  IconData? _selectedIcon;

  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: _isRTLMode ? TextDirection.rtl : TextDirection.ltr,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 40.0,
            ),
            _heading('Rating Bar'),
            _ratingBar(_ratingBarMode),
            SizedBox(height: 20.0),
            Text(
              'Rating: $_rating',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.teal[800],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _ratingBar(int mode) {
    return Center(
      child: RatingBar.builder(
        initialRating: _initialRating,
        minRating: 1,
        allowHalfRating: true,
        unratedColor: Colors.teal.withAlpha(50),
        itemCount: 5,
        itemSize: 50.0,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          _selectedIcon ?? Icons.star,
          color: Colors.teal[300],
        ),
        onRatingUpdate: (rating) {
          setState(() {
            _rating = rating;
          });
        },
        updateOnDrag: true,
      ),
    );
  }
}

Widget _heading(String text) => Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 24.0,
            color: Colors.teal[800],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
