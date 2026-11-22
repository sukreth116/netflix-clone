import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class TopSearchesListTile extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final Icon icon;
  const TopSearchesListTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl!,
            width: 120,
            height: 75,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;

              return const SizedBox(
                width: 120,
                height: 75,
                child: Center(child: CircularProgressIndicator()),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              debugPrint('Image error: $error');
              return const Icon(Icons.movie);
            },
          ),
        ),
        Expanded(
          child: TitleMediam(title: title, textAlign: TextAlign.center),
        ),
        const Icon(
          Icons.play_circle_outline_outlined,
          color: foregroundColor,
          size: 50,
        ),
      ],
    );
  }
}
