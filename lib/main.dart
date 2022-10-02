import 'package:digital_14_puspharaj/packages/search_repo/search_repository.dart';
import 'package:digital_14_puspharaj/pages/home/cubit/home_cubit.dart';
import 'package:digital_14_puspharaj/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF00072d),
    systemNavigationBarColor: Color(0xFF00072d),
  ));
  runApp(Digital14(
    searchRepository: SearchRepository(),
  ));
}

class Digital14 extends StatelessWidget {
  const Digital14({Key? key, required this.searchRepository}) : super(key: key);

  final SearchRepository searchRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: (context) => searchRepository,
      child: BlocProvider(
        create: (context) => HomeCubit(searchRepository)
          ..listEvent(1)
          ..readFavorite(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              // Define the default brightness and colors.
              brightness: Brightness.light,
              primaryColor: Colors.lightBlue[800],
            ),
            home: const SafeArea(child: Scaffold(body: HomePage()))),
      ),
    );
  }
}
