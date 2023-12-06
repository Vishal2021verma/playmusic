import 'package:flutter/material.dart';
import 'package:playmusic/ui/menu/home/home_components/song_box.dart';
import 'package:playmusic/utils/colors_resources.dart';
import 'package:playmusic/widget/song_card_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextField(
        controller: searchController,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: ColorResource.textGreyColor,
        ),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(500.0),
            ),
            filled: true,
            fillColor: Colors.white12,
            hintText: "Search songs, artist, podcast",
            hintStyle: const TextStyle(color: ColorResource.subTextGreyColor)),
      )),
      body: SingleChildScrollView(
        child: Column(children: [initialState()]),
      ),
    );
  }

  Widget initialState() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              'Last played from Search',
              style: TextStyle(
                  color: ColorResource.subTextGreyColor, fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      10,
                      (index) => Padding(
                            padding:
                                EdgeInsets.only(left: index == 0 ? 18 : 10),
                            child: const SongCardWidget(
                              sizeInPercentage: 0.2,
                            ),
                          ))))
        ]);
  }
}
