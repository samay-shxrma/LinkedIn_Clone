import 'package:flutter/material.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/common/style/style.dart';
import 'package:nb_utils/nb_utils.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final _sKey = GlobalKey<ScaffoldState>();
  String _selectedVisibility = 'Anyone';
  final List<String> _visibilityOptions = [
    'Anyone',
    'Connection Only',
    'Group',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        centerTitle: false,
        title: Text(
          'Share Post',
          style: AppStyle.primary(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [
          Text(
            'Post',
            style: AppStyle.primary(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.darkGrey,
            ),
          ),
          20.width,
        ],
      ),
      body: 
      
      Column(
        
        children: [
          Expanded(
            
            child: _createPostBody()),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  child: const Icon(Icons.link),
                  onPressed: () {
                    _showBottomSheet();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showBottomSheet() {
    _sKey.currentState?.showBottomSheet((context) {
      return DraggableScrollableSheet(
        builder: (c, controller) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                children: [
                  10.height,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 4,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.darkGrey,
                        borderRadius: radius(20),
                      ),
                    ),
                  ),
                  ListTile(leading: Icon(Icons.camera), title: Text('Camera')),
                  ListTile(
                    leading: Icon(Icons.video_call),
                    title: Text('Video'),
                  ),
                  ListTile(
                    leading: Icon(Icons.celebration),
                    title: Text('Celebrate an occasion'),
                  ),
                  ListTile(
                    leading: Icon(Icons.edit_document),
                    title: Text('Add a document'),
                  ),
                  ListTile(
                    leading: Icon(Icons.business_center_rounded),
                    title: Text('Share that you’re hiring'),
                  ),
                  ListTile(
                    leading: Icon(Icons.contact_page_sharp),
                    title: Text('Find an expert'),
                  ),
                  ListTile(
                    leading: Icon(Icons.poll),
                    title: Text('Create a poll'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }, backgroundColor: Colors.transparent);
  }

  Widget _createPostBody() {
    return Column(
      
      children: [
        20.height,
        Row(
          children: [
            20.width,
            const CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                "https://media.licdn.com/dms/image/v2/D5603AQH-TBDHuc5FMw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1718965631486?e=2147483647&v=beta&t=9KwKYo6sr1b2oyU-_imNlUMxFV2nFmZzrrXwy-vviQ8",
              ),
            ),
            10.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Samay Sharma',
                  style: AppStyle.primary(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.height,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: AppColors.darkGrey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: [
                        const Icon(LineIcons.globe, size: 16),
                        10.width,
                        DropdownButton<String>(
                          isDense: true,
                          value: _selectedVisibility,
                          underline: const SizedBox.shrink(),
                          items:
                              _visibilityOptions.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              setState(() {
                                _selectedVisibility = newValue;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: AppTextField(
            textFieldType: TextFieldType.OTHER,
            maxLines: 10,
            minLines: 10,
            autoFocus: true,
            textStyle: AppStyle.primary(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              hintText: 'What do you want to talk about?',
              contentPadding: const EdgeInsets.only(
                left: 20,
                right: 15,
                top: 20,
              ),
              hintStyle: AppStyle.primary(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
