import 'package:flutter/material.dart';
import 'package:playmusic/ui/menu/home/home_components/song_box.dart';
import 'package:playmusic/utils/image_constant.dart';
import 'package:playmusic/widget/chip_view.dart';
import 'package:playmusic/widget/custom_image_view.dart';
import 'package:playmusic/widget/profile_image_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          titleAppBar(),
          filterChipBar(),
          SliverToBoxAdapter(
              child: SongBoxWidget(
            headText: 'Listen Again',
          ))
        ],
      ),
    );
  }

  Widget titleAppBar() {
    return SliverAppBar(
      toolbarHeight: 40,
      centerTitle: false,
      floating: true,
      title: CustomImageView(
        imagePath: ImageConstant.logoName,
        height: 24,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: InkWell(
            onTap: () {},
            child: const ProfileImage(),
          ),
        )
      ],
    );
  }

  Widget filterChipBar() {
    return SliverAppBar(
      pinned: true,
      toolbarHeight: 0,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: SizedBox(
            height: 40,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const ChipButton(
                    text: "Home",
                    action: null,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                itemCount: 9),
          )),
    );
  }
}
