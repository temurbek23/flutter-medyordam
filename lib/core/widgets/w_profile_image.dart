// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/app_icons.dart';
// import 'package:dla_bz/core/widgets/w_circular_icon.dart';
// import 'package:dla_bz/features/profile/presentation/manager/profile/profile_screen_bloc.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class WProfileImage extends StatelessWidget {
//   final double size;
//   final bool isDark;
//   final Color color;
//
//   const WProfileImage({
//     Key? key,
//     this.size = 40,
//     this.isDark = false,
//     this.color = AppColors.primaryColor,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProfileScreenBloc, ProfileScreenState>(
//       builder: (context, state) {
//         if (state is LoadedProfileData && state.user.account.image != null) {
//           return ClipRRect(
//             borderRadius: BorderRadius.circular(size),
//             child: CachedNetworkImage(
//               imageUrl: state.user.account.image!.url,
//               placeholder: (context, url) => const CupertinoActivityIndicator(),
//               errorWidget: (context, url, error) => const Icon(Icons.error),
//               width: size,
//               height: size,
//               fit: BoxFit.cover,
//             ),
//           );
//         } else {
//           return WCircularIcon(
//             icon: AppIcons.targetUser,
//             size: size,
//             color: color,
//           );
//         }
//       },
//     );
//   }
// }
