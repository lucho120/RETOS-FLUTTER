import 'package:app_medic/core/theme/theme_general.dart';
import 'package:flutter/material.dart';

final myAppBar = AppBar(
    iconTheme: IconThemeData(color: myDefaultBackground),
    elevation: 0.0,
    backgroundColor: Colors.white,
    title: ListTile(
      contentPadding: const EdgeInsets.all(0.0),
      leading: Text(
        'Hello,\nMr. Floyd Miles',
        style:
            TextStyle(color: myDefaultBackground, fontWeight: FontWeight.bold),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Icon(Icons.search, color: myDefaultBackground),
      ),
    ));
