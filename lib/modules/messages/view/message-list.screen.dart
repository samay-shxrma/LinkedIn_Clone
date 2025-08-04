import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/assets/assets.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/common/style/style.dart';
import 'package:nb_utils/nb_utils.dart';

class MessageListScreen extends StatefulWidget {
  const MessageListScreen({super.key});

  @override
  State<MessageListScreen> createState() => _MessageListScreenState();
}

class _MessageListScreenState extends State<MessageListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: ListView.separated(
        itemBuilder: (context, i) {
          return Container(
            color: Colors.white,
            
            child: Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    child: ClipOval(
                      child: Image.network(
                        'https://media.licdn.com/dms/image/v2/C4D0BAQHiNSL4Or29cg/company-logo_200_200/company-logo_200_200/0/1631311446380?e=2147483647&v=beta&t=fnMgfquTmN5LLPDz_pQ3ABlHsrgISwU9CQS35ol7QpE',
                      ),
                    ),
                  ),
                  10.width,
                  Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Google',
                        style: AppStyle.primary(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Salary kitna loge ?',
                        style: AppStyle.primary(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '10:07 AM',
                        style: AppStyle.primary(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const Badge(
                        backgroundColor: Color(0xFF0A66C2),
                        label: Text(
                          '1',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(color: AppColors.lightGrey, thickness: 2);
        },
        itemCount: 10,
      ),
    );
  }
}

AppBar _appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      "Messaging",
      style: AppStyle.primary(fontSize: 20, fontWeight: FontWeight.w400),
    ),
    actions: [
      IconButton(
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        onPressed: () {},

        icon: Icon(Icons.more_vert_sharp),
        color: AppColors.darkGrey,
      ),
      IconButton(
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        onPressed: () {},

        icon: Image.asset(AppAssets.edit),
        color: AppColors.darkGrey,
      ),
    ],
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(42),
      child: Column(
        children: [
          Divider(
            color: AppColors.grey.withOpacity(0.4),
            thickness: 2.0,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.zero,
                constraints: BoxConstraints(maxHeight: 40),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Image.asset(AppAssets.filter),
                hintText: 'Search Messages',
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
