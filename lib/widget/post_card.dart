import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:postcrap/models/post_model.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/shared/like.dart';
import 'package:postcrap/widget/text.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  final List<Post> _postlist = [
    Post(
        profilepics: 'assets/images/anon.png',
        user: 'Anonymous',
        desc: '',
        crap: 'Creator',
        picture: 'assets/images/image1.png',
        likes: 10),
    Post(
        profilepics: 'assets/images/pics.png',
        user: 'Anonymous',
        desc: '',
        crap: 'Watcher',
        picture: 'assets/images/image1.png',
        likes: 30),
    Post(
        profilepics: 'assets/images/anon.png',
        user: 'Anonymous',
        desc: '',
        crap: 'Creator',
        picture: 'assets/images/image1.png',
        likes: 30),
    Post(
        profilepics: 'assets/images/anon.png',
        user: 'Anonymous',
        desc: '',
        crap: 'Creator',
        picture: 'assets/images/image1.png',
        likes: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _postlist.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
        children: [
        Row(
        children: [
        Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40)
        ),
        child: Image.asset(_postlist[index].profilepics),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
          _postlist[index].user,
          style: const TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColor100
          ),
          ),
        
          const SizedBox(height: 4,),
          
          Text(
          _postlist[index].crap,
          style: const TextStyle(
          fontFamily: 'Mabry-pro',
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: textColor40
          ),
          ), 
          ],
          ),
        ),
        Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40)
        ),
        child: Image.asset('assets/images/more.png'),
        )
        ],
        ),
        const SizedBox(height: 10,),
        Container(
        height: 304,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: textColor3,
        image:  DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(_postlist[index].picture))
        ),
        ),
        const SizedBox(height: 8.5,),
        Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
       const LikeButton(),
       const SizedBox(width: 4,),
        Text(
        _postlist[index].likes.toString(),
        style: const TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 14,
          fontWeight: FontWeight.w500
        ),
        ),
        const SizedBox(width: 20,),
        Container(
          height: 24,
          width: 24,
          child: ImageIcon(
            AssetImage('assets/images/share.png'),
            color: textColor20,
            ),
        )
        ],
        ),

        const SizedBox(height: 25,),
        ],
        );
      },
    );
  }
}
