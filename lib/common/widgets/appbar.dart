import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/modules/messages/view/message-list.screen.dart';
import 'package:myapp/modules/qr-screen/view/qr-screen.dart';
import 'package:nb_utils/nb_utils.dart';

class CustomAppBar {
  static getAppBar(GlobalKey<ScaffoldState> sKey, BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              sKey.currentState?.openDrawer();
            },
            child: CircleAvatar(
              radius: 21,
              child: Container(
                child: ClipOval(
                  child: Image.network(
                    "https://media.licdn.com/dms/image/v2/D5603AQH-TBDHuc5FMw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1718965631486?e=2147483647&v=beta&t=9KwKYo6sr1b2oyU-_imNlUMxFV2nFmZzrrXwy-vviQ8",
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  fillColor: AppColors.blue,
                  filled: true,
                  contentPadding: EdgeInsets.zero,
                  constraints: BoxConstraints(maxHeight: 40.0),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: InkWell(
                    onTap: () {
                      const QrScreen().launch(context);
                    },
                    child: Icon(Icons.qr_code),
                  ),
                  hintText: "Search",
                ),
              ),
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => MessageListScreen()),
              );
            },
            icon: const Icon(Icons.chat_bubble),
            color: AppColors.darkGrey,
          ),
        ],
      ),
    );
  }
}
