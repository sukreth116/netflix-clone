import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/bloc/downloads_bloc/downloads_bloc.dart';
import 'package:netflix_clone/bloc/fast_laugh_bloc/fast_laugh_bloc.dart';
import 'package:netflix_clone/bloc/search_bloc/search_bloc.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/di/injectable.dart';
import 'package:netflix_clone/presentation/home/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastLaughBloc>()),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Home(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          secondaryHeaderColor: foregroundColor,
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: TextTheme(
            bodyLarge: TextStyle(fontSize: 16, color: foregroundColor),
            bodyMedium: TextStyle(fontSize: 14, color: foregroundColor),
            bodySmall: TextStyle(fontSize: 12, color: foregroundColor),
          ),
        ),
      ),
    );
  }
}
