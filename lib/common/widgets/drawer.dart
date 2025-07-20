import 'package:flutter/material.dart';
import 'package:myapp/common/assets/assets.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/common/style/style.dart';
import 'package:myapp/modules/home/settings/view/settings-screen.dart';
import 'package:myapp/modules/profile/view/my-profile.screen.dart';
import 'package:nb_utils/nb_utils.dart';

class CustomDrawer {
  static getDrawer(GlobalKey<ScaffoldState> skey, BuildContext context) {
    return Drawer(
      width: context.width() * 0.87,
      backgroundColor: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColors.lightBg,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 32),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: ClipOval(
                              child: Image.network(
                                "https://media.licdn.com/dms/image/v2/D5603AQH-TBDHuc5FMw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1718965631486?e=2147483647&v=beta&t=9KwKYo6sr1b2oyU-_imNlUMxFV2nFmZzrrXwy-vviQ8",
                                width: 50,
                              ),
                            ),
                          ),
                          20.width,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Samay Sharma",
                                style: AppStyle.primary(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      const MyProfileScreen().launch(context);
                                    },
                                    child: Text(
                                      "View Profile",
                                      style: AppStyle.primary(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.lightBlue,
                                      ),
                                    ),
                                  ),
                                  10.width,
                                  Container(
                                    height: 3,
                                    width: 3,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                  ),
                                  10.width,
                                  InkWell(
                                    onTap: () {
                                      const SettingsScreen().launch(context);
                                    },
                                    child: Text(
                                      "Settings",
                                      style: AppStyle.primary(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.lightBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close),
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 2, color: AppColors.lightGrey),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 25),
                      child: Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            child: Image.asset(AppAssets.Premium),
                          ),
                          18.width,
                          Text(
                            "Access My Premium",
                            style: AppStyle.primary(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                child: Row(
                  children: [
                    Text(
                      "Recent",
                      style: AppStyle.primary(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
                child: Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      child: Icon(LineIcons.users),
                    ),
                    18.width,
                    Text(
                      'Premium Career Group',
                      style: AppStyle.primary(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 30),
                child: Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      child: Icon(LineIcons.users),
                    ),
                    18.width,
                    Text(
                      'Jobs in India',
                      style: AppStyle.primary(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2, color: AppColors.lightGrey),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                child: Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      child: Icon(LineIcons.users),
                    ),
                    18.width,
                    Text(
                      'Groups',
                      style: AppStyle.primary(
                        color: AppColors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
                child: Row(
                  children: [
                    Container(height: 24, width: 24, child: Icon(Icons.add)),
                    18.width,
                    Text(
                      'Create Event',
                      style: AppStyle.primary(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2, color: AppColors.lightGrey),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                child: Row(
                  children: [
                    Text(
                      'Followed Hashtags',
                      style: AppStyle.primary(
                        color: AppColors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2, color: AppColors.lightGrey),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                child: Row(
                  children: [
                    Text(
                      'Dickover more',
                      style: AppStyle.primary(
                        color: AppColors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
