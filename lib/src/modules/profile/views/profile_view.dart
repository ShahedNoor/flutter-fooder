import 'package:flutter/material.dart';
import 'package:fooder/src/data/style/colors.dart';
import 'package:fooder/src/modules/profile/local_widgets/book_a_call.dart';
import 'package:fooder/src/modules/profile/local_widgets/my_works.dart';
import 'package:fooder/src/modules/profile/local_widgets/name_with_social_links.dart';
import 'package:fooder/src/modules/profile/local_widgets/profile_image.dart';

import '../local_widgets/bio.dart';
import '../local_widgets/have_any_idea.dart';
import '../local_widgets/profile_app_bar.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgColor,
      appBar: ProfileAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileImage(),
            NameWithEmail(),
            SizedBox(
              height: 10,
            ),
            Bio(),
            MyWorks(
              image: "assets/images/profile/codepen.png",
              workName: "My Pens",
              socialUrl: Uri.parse("https://codepen.io/shahednoor"),
            ),
            MyWorks(
              image: "assets/images/profile/github.png",
              workName: "Source Codes",
              socialUrl: Uri.parse("https://github.com/shahednoor"),
            ),
            HaveAnyIdea(),
            BookACall(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
