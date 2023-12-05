import 'package:flutter/material.dart';
import 'package:playmusic/ui/menu/home/home_components/song_box.dart';
import 'package:playmusic/utils/image_constant.dart';
import 'package:playmusic/widget/chip_view.dart';
import 'package:playmusic/widget/custom_image_view.dart';
import 'package:playmusic/widget/profile_image_view.dart';
import 'package:playmusic/widget/song_card_widget.dart';

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
          listenAgain(),
          listenAgain(),
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
          preferredSize: const Size.fromHeight(50),
          child: SizedBox(
            height: 50,
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 18, bottom: 10),
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

  Widget listenAgain() {
    return SliverToBoxAdapter(
        child: SongBoxWidget(
      subHeadText: 'Vishal Verma',
      headText: 'Listen Again',
      isProfile: true,
      action: () {},
      actionText: 'More',
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              10,
              (index) => Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 18.0 : 10),
                    child: const Column(
                      children: [
                        SongCardWidget(),
                        SizedBox(height: 14),
                        SongCardWidget(),
                      ],
                    ),
                  )),
        ),
      ),
    ));
  }
}
