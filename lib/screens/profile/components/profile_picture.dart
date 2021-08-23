import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 110,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile_image_1.png"),
            backgroundColor: Colors.transparent,
          ),
          Positioned(
            right: -10,
            bottom: 0,
            child: SizedBox(
              width: 40,
              height: 40,
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  backgroundColor: MaterialStateProperty.all(Color(0xFFF5F6F9)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
                  side: MaterialStateProperty.all(
                    BorderSide(color: Constants.white),
                  ),
                ),
                onPressed: () {},
                child: Icon(Icons.camera_alt_outlined, size: 17, color: Constants.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}