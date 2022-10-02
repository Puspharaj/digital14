import 'dart:async';

import 'package:digital_14_puspharaj/packages/search_repo/models/listevent.dart';
import 'package:digital_14_puspharaj/pages/details/detail_page.dart';
import 'package:digital_14_puspharaj/pages/home/cubit/home_cubit.dart';
import 'package:digital_14_puspharaj/widgets/listitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ListEvent listEvent = const ListEvent();
  int favId = 0;
  bool failed = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is Success) {
          listEvent = state.listEvent;
        } else if (state is Failed) {
          failed = true;
        }
        if (state is FavoriteSuccess) {
          favId = state.favoriteId;
        }
        return Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * .5,
                  color: const Color(0xFF00072d),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .2,
                        height: MediaQuery.of(context).size.width * .3,
                        child: const RiveAnimation.asset('assets/circle.riv')),
                    Text(
                      'Best Events \n Begining Here',
                      style: GoogleFonts.kanit(fontStyle: FontStyle.italic, color: Colors.white),
                    )
                  ]),
                ),
                Expanded(
                  child: failed
                      ? const Center(
                          child: SizedBox(
                            height: 40,
                            width: 100,
                            child: Text(
                              'Cannot load at the moment',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      : Container(
                          color: Colors.white,
                          child: listEvent.events == null
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : ListView(
                                  children: List.generate(listEvent.events!.length, (index) {
                                  if (index == 0) {
                                    return SizedBox(
                                      height: MediaQuery.of(context).size.width * .1,
                                    );
                                  }
                                  // return Text('data');
                                  //debugPrint(index.toString() + ' print before');
                                  return InkWell(
                                    onLongPress: () =>
                                        context.read<HomeCubit>().favorite(listEvent.events!.elementAt(index).id!),
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPage(
                                                item: Item(
                                                  id: listEvent.events!.elementAt(index).id!,
                                                  favorite: favId,
                                                  image: listEvent.events!
                                                      .elementAt(index)
                                                      .performers!
                                                      .elementAt(0)
                                                      .image!,
                                                  title: listEvent.events!.elementAt(index).title!,
                                                  address: listEvent.events!.elementAt(index).venue!.displayLocation!,
                                                  date: listEvent.events!.elementAt(index).datetimeUtc!,
                                                ),
                                              )),
                                    ),
                                    child: Item(
                                      id: listEvent.events!.elementAt(index).id!,
                                      favorite: favId,
                                      image: listEvent.events!.elementAt(index).performers!.elementAt(0).image != null
                                          ? listEvent.events!
                                              .elementAt(index)
                                              .performers!
                                              .elementAt(0)
                                              .image!
                                              .toString()
                                          : '',
                                      title: listEvent.events!.elementAt(index).title!,
                                      address: listEvent.events!.elementAt(index).venue!.displayLocation!,
                                      date: listEvent.events!.elementAt(index).datetimeUtc!,
                                    ),
                                  );
                                }).toList())),
                ),
              ],
            ),
            Positioned(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * .2,
                top: MediaQuery.of(context).size.width * .4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SearchBox(),
                        )),
                  ),
                )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    height: MediaQuery.of(context).size.width * .1,
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text('Events',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: GoogleFonts.merriweather().fontFamily,
                    )),
              ],
            ),
          ],
        );
      },
    );
  }
}

class SearchBox extends StatefulWidget {
  SearchBox({Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  Timer? _debounce;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: (value) => onSearchChanged(value),
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          prefixIcon: const Icon(
            Icons.search,
          ),
          suffixIcon: InkWell(
            onTap: () {
              _controller.clear();
              context.read<HomeCubit>().listEvent();
            },
            child: _controller.text.isNotEmpty ? const Icon(Icons.cancel) : const SizedBox(),
          )),
    );
  }

  onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context.read<HomeCubit>().searchEvent(query);
    });
  }
}
