import 'package:flutter/material.dart';
import 'package:myapp/common/assets/assets.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/common/style/style.dart';
import 'package:nb_utils/nb_utils.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('My Profile'), centerTitle: false),
      body: _myProfileScreen(),backgroundColor: Colors.white,
    );
  }

  _myProfileScreen() {
    return SingleChildScrollView(
      
      child: Column(
        
        children: [
          Stack(
            
            
            clipBehavior: Clip.none,
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Image.asset(
                  AppAssets.profilePhoto,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Row(
                  children: [
                    _myAvatar(),
                    Spacer(),

                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          AppAssets.LinkedIn,
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          AppAssets.Pencil,
                          height: 32,
                          width: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          15.height,
          _profilePart2(),
        ],
      ),
    );
  }

  _profilePart2() {
    return Column(
      
      children: [
        Row(
          children: [
            20.width,
            
            Text(
              'Samay Sharma',
              style: AppStyle.primary(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              ' · 3 rd',
              style: AppStyle.primary(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
        Row(
          children: [
            20.width,
            15.height,
            Text(
              'Persuing btech(CS) at Dr. A. P. J. Abdul Kalam ',
              style: AppStyle.primary(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        Row(
          children: [
            20.width,
            10.height,
            Text(
              'Technical University.',
              style: AppStyle.primary(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          children: [
            20.width,
            10.height,
            Text(
              'ASPIRING MERN || FLUTTER || DSA(Java)',
              style: AppStyle.primary(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            20.width,

            Text(
              'Dr. A.P.J Abdul Kalam Technical University',
              style: AppStyle.primary(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),

        Row(
          children: [
            20.width,

            Text(
              'Ghaziabad, UttarPradesh, India',

              style: AppStyle.primary(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: AppColors.darkGrey,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            20.width,

            Text(
              '500+ connections',
              style: AppStyle.primary(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.lightBlue,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            20.width,
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: double.maxFinite,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        'Add section',
                        style: AppStyle.primary(
                          fontSize: 16,
                          color: AppColors.lightBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.width,
            Column(
              children: [
                SizedBox(
                  height: 36,
                  width: 36,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.zero,
                    ),
                    child: Text('• • •'),
                  ),
                ),
              ],
            ),
            20.width,
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            20.width,

            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: double.maxFinite,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        'Enhanced profile',
                        style: AppStyle.primary(
                          fontSize: 16,
                          color: AppColors.lightBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            20.width,
          ],
        ),
        SizedBox(height: 40),
        _profilePart3(),
      ],
    );
  }

  _profilePart3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            20.width,
            Text(
              'Analytics',
              style: AppStyle.primary(
                fontSize: 28, // Adjusted font size for better fit
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Row(
          children: [
            20.width,
            10.height,
            Icon(Icons.visibility, color: AppColors.darkGrey),
            Text(
              ' Private to you',
              style: AppStyle.primary(
                color: AppColors.darkGrey,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ListTile(
            leading: Icon(Icons.group),
            title: Text(
              '43 profile views',
              style: AppStyle.primary(fontWeight: FontWeight.w700),
            ),
            subtitle: Text("Discover who's viewed your profile"),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ListTile(
            leading: Icon(Icons.stacked_bar_chart_sharp),
            title: Text(
              '34 post impressions',
              style: AppStyle.primary(fontWeight: FontWeight.w700),
            ),
            subtitle: Text("Check out who's engaging with your post."),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ListTile(
            leading: Icon(Icons.search),
            title: Text(
              '9 search apperances',
              style: AppStyle.primary(fontWeight: FontWeight.w700),
            ),
            subtitle: Text("See how often you appear in search results."),
          ),
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Text(
              'Show all analytics',
              style: AppStyle.primary(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            3.width,
            Icon(LineIcons.arrow_right),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  _myAvatar() {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 75,
          child: CircleAvatar(
            radius: 70,
            child: Container(
              child: ClipOval(
                child: Image.network(
                  'https://media.licdn.com/dms/image/v2/D5603AQH-TBDHuc5FMw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1718965631486?e=2147483647&v=beta&t=9KwKYo6sr1b2oyU-_imNlUMxFV2nFmZzrrXwy-vviQ8',
                ),
              ),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ),
      ],
    );
  }
}
