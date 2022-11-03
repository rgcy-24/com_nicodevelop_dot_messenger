import "package:com_nicodevelop_dotmessenger/components/responsive_component.dart";
import "package:com_nicodevelop_dotmessenger/widgets/avatar_widget.dart";
import "package:flutter/material.dart";

class ChatHeadingBarComponent extends StatelessWidget {
  final Map<String, dynamic> profile;

  const ChatHeadingBarComponent({
    Key? key,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (profile.isEmpty) {
      return const SizedBox.shrink();
    }

    if (ResponsiveComponent.device == DeviceEnum.mobile) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AvatarWidget(
            avatarUrl: profile["photoUrl"],
            username: profile["username"],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            profile["displayName"],
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      );
    }

    if (ResponsiveComponent.device == DeviceEnum.tablet) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AvatarWidget(
            avatarUrl: profile["photoUrl"],
            username: profile["username"],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 10.0,
            ),
            child: Column(
              children: [
                Text(
                  profile["displayName"],
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 50,
      ),
      color: Colors.grey[100],
      width: double.infinity,
      child: Column(
        children: [
          AvatarWidget(
            avatarUrl: profile["photoUrl"],
            username: profile["username"],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            profile["displayName"],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
