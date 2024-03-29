import 'package:flutter/material.dart';
import 'package:playmusic/utils/colors_resources.dart';
import 'package:playmusic/widget/song_card_widget.dart';
import 'dart:math' as math;

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
        style: const TextStyle(
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
          _head("Last played from Search"),
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
                          )))),
          const SizedBox(
            height: 16,
          ),
          const Divider(height: 0.5, thickness: 0.5, color: Colors.white),
          const SizedBox(
            height: 16,
          ),
          _head('Recent searches'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Row(
              children: [
                const Icon(Icons.replay, color: ColorResource.subTextGreyColor),
                const SizedBox(
                  width: 15,
                ),
                const Expanded(
                  child: Text(
                    'agar tum sath ho',
                    style: TextStyle(color: ColorResource.subTextGreyColor),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Transform.rotate(
                    angle: 45 * math.pi / 180,
                    child: const Icon(Icons.arrow_back,
                        color: ColorResource.subTextGreyColor)),
              ],
            ),
          ),
        ]);
  }

  Widget _head(String head) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Text(
        head,
        style: const TextStyle(
            color: ColorResource.subTextGreyColor, fontSize: 12),
      ),
    );
  }
}
