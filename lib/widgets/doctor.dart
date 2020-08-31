import 'package:flutter/Material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

Widget doctorsCard() {
  return Container(
    child: Row(
      children: [
        Container(
          height: 150.0,
          width: 150,
          decoration: BoxDecoration(
            // shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Clara Odding',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 20,
                ),
              ),
              Text(
                'Dentist',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 15,
                ),
              ),
              Text(
                '2 Rue de Ermesinde',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 15,
                ),
              ),
              Text(
                'Frisange - Luxembourg 3',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  SmoothStarRating(
                    rating: 2.0,
                    spacing: 5.0,
                    size: 25.0,
                    borderColor: Colors.orange,
                    color: Colors.orange,
                  ),
                  Text(
                    '(25)',
                    style: TextStyle(
                      color: Color(0xff2A2AC0),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
