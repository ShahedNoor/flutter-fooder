import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: NetworkImage('https://instagram.fdac151-1.fna.fbcdn.net/v/t51.2885-19/340827737_253738737085939_6115745620128802317_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fdac151-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=MeuzPwD0uGEAX9nIIjx&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBR5agoDmwpUR4bpy0eOmD7v6_yaM10iPa3RTkbNbkeww&oe=654F0245&_nc_sid=8b3546'),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
