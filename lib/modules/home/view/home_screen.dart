//import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';
//import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/assets/assets.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/common/style/style.dart';
import 'package:myapp/common/widgets/appbar.dart';
import 'package:myapp/common/widgets/drawer.dart';
import 'package:myapp/modules/home/controlller/post_controller.dart';
import 'package:myapp/modules/home/model/post_model.dart';
import 'package:myapp/modules/home/settings/view/settings-screen.dart';
import 'package:myapp/modules/messages/view/message-list.screen.dart';
import 'package:myapp/modules/profile/view/my-profile.screen.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _skey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPersistentFrameCallback((_) {
      if (mounted) {
        context.read<PostController>().getPosts();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<PostModel> posts = context.select(
      (PostController value) => value.post,
    );
    return Scaffold(
      key: _skey,
      backgroundColor: AppColors.bgColor,
      appBar: _appBar(),
      drawer: _drawer(),
      body: _postScreen(),
    );
  }

  _postScreen() {
    List<PostModel> posts = context.select(
      (PostController value) => value.post,
    );
    return ListView.separated(
      padding: EdgeInsets.only(top: 10),
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemBuilder: (context, index) {
        return _postUi(posts[index]);
      },
      itemCount: posts.length,
    );
  }

  _drawer() {
    return CustomDrawer.getDrawer(_skey, context);
  }

  _postUi(PostModel postData) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            children: [
              20.height,
              _post1stPart(postData),
              _post2ndPart(postData),
              20.height,
              _post3rdPart(postData),
              15.height,
            ],
          ),
          Positioned(top: 10, right: 15, child: Icon(Icons.more_vert)),
        ],
      ),
    );
  }

  _postImage() {
    return Image.network(
      "https://i0.wp.com/blogs.cfainstitute.org/investor/files/2023/11/Bitcoin-Valuation-Four-Methods.png?resize=940%2C575&ssl=1",
      fit: BoxFit.cover,
    );
  }

  Widget _post3rdPart(PostModel postData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(LineIcons.thumbs_up, color: AppColors.darkGrey),
              4.height,
              Text(
                'Like',
                style: AppStyle.primary(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(LineIcons.comment_dots, color: AppColors.darkGrey),
              4.height,
              Text(
                'Comment',
                style: AppStyle.primary(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(LineIcons.share, color: AppColors.darkGrey),
              4.height,
              Text(
                'Share',
                style: AppStyle.primary(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(LineIcons.telegram, color: AppColors.darkGrey),
              4.height,
              Text(
                'Send',
                style: AppStyle.primary(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _post2ndPart(PostModel postData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(height: 2, color: Color(0xFFEBEBEB)),
    );
  }

  Widget _post1stPart(PostModel postData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 32,
                child: Image.network(postData.user.profileLink),
              ),
              20.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichTextWidget(
                    list: [
                      TextSpan(
                        text: postData.user.name,
                        style: AppStyle.primary(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: ' • ' + postData.connection,
                            style: AppStyle.primary(
                              color: AppColors.darkGrey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    postData.user.occupation,
                    style: AppStyle.primary(
                      color: AppColors.darkGrey,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  RichTextWidget(
                    list: [
                      TextSpan(
                        text: "${postData.createdAt.hour}h • ",
                        style: AppStyle.primary(
                          color: AppColors.darkGrey,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              LineIcons.globe,
                              color: AppColors.darkGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          10.height,
          ReadMoreText(
            postData.about,
            trimMode: TrimMode.Line,
            trimLines: 3,
            colorClickableText: AppColors.darkGrey,
            trimCollapsedText: ' Show more',
            trimExpandedText: 'Show less',
            style: AppStyle.primary(fontSize: 17, fontWeight: FontWeight.w500),
          ),

          20.height,
          _postImage(),
          10.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(AppAssets.likes),
              Image.asset(AppAssets.bulb),
              Image.asset(AppAssets.clap),
              Text(
                " " + postData.likes.toString(),
                style: AppStyle.primary(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Text(
                "${postData.comments.toString()} comments",
                style: AppStyle.primary(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return CustomAppBar.getAppBar(_skey, context);
  }
}
