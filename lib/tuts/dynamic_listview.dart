import 'package:flutter/material.dart';

/* Data */
List users = [
  {'name':'Oğuz Kaan DEMİR', 'photo': 'https://avatars.githubusercontent.com/u/89513831?v=4'},
  {'name':'Michael Stevens', 'photo': 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Michael_Stevens_VidCon_2016.jpg/220px-Michael_Stevens_VidCon_2016.jpg'},
  {'name': 'Kasım Küçükalp', 'photo': 'https://pbs.twimg.com/profile_images/1264634656982478848/DELvkAJa_400x400.jpg'},
  {'name': 'Barış Özcan', 'photo': 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Bar%C4%B1%C5%9F_%C3%96zcan_at_BilimDiyalog-gelecekbilimde_%28cropped%29.png/220px-Bar%C4%B1%C5%9F_%C3%96zcan_at_BilimDiyalog-gelecekbilimde_%28cropped%29.png'},
  {'name': 'Gazzali', 'photo': 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Al-Ghazali.png/220px-Al-Ghazali.png'}
];

class DyanmicListView extends StatelessWidget {
  const DyanmicListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: users.map((e) {
          return ListTile(
            leading: CircleAvatar(foregroundImage: NetworkImage(e['photo'])),
            title: Text( e['name']),
          );
        }).toList()
      ),
    );
  }
}