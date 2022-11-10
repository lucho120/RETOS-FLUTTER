import 'package:app_medic/core/icons/custom_icons.dart';
import 'package:app_medic/core/theme/theme_general.dart';
import 'package:app_medic/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class DoctorsWidget extends StatelessWidget {
  final Responsive responsive;
  const DoctorsWidget({super.key, required this.responsive});

  @override
  Widget build(BuildContext context) {
    final List<Widget> myDoctors = [
      CardDoctor(
          urlImage: 'https://cdn-icons-png.flaticon.com/128/2785/2785482.png',
          name: 'Dr. Josue Hernandez',
          speciality: 'Therapist',
          punctuation: '4.96'),
      CardDoctor(
          urlImage: 'https://cdn-icons-png.flaticon.com/128/3304/3304567.png',
          name: 'Dr. Esther Howard',
          speciality: 'Cardiology',
          punctuation: '4.96'),
      CardDoctor(
          urlImage: 'https://cdn-icons-png.flaticon.com/128/2785/2785544.png',
          name: 'Dr. Mario Perez',
          speciality: 'Nutriology',
          punctuation: '4.96'),
      CardDoctor(
          urlImage: 'https://cdn-icons-png.flaticon.com/128/8214/8214665.png',
          name: 'Dr. Maria Juarez',
          speciality: 'Therapist',
          punctuation: '4.96'),
      CardDoctor(
          urlImage: 'https://cdn-icons-png.flaticon.com/128/3461/3461586.png',
          name: 'Dr. Esther Howard',
          speciality: 'Therapist',
          punctuation: '4.96'),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            'Top Doctors',
            style: TextStyle(
                color: myDefaultColorText, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: myDoctors.length,
            itemBuilder: (context, index) => myDoctors[index],
          ),
        )
      ],
    );
  }

  Widget CardDoctor(
      {required String urlImage,
      required String name,
      required String speciality,
      required String punctuation}) {
    return Card(
      elevation: 0.3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      margin: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60.0,
            height: 60.0,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(urlImage)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: myDefaultColorText, fontWeight: FontWeight.bold),
                ),
                Text(
                  speciality,
                  style: TextStyle(
                      color: myDefaultColorText, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Icon(
                      CustomIcons.star_icon_icons_com_73394,
                      color: myDefaultBackground,
                      size: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(punctuation),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
