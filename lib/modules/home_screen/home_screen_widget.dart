import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan_v/configs/app_routes.dart';

import '../../models/user.dart';
import '../../models/news.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi, Selamat datang"),
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            user.profilePhoto!,
          ),
        ),
      ],
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        isDense: true,
        hintText: "Masukkan kata kunci disini",
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        suffixIcon: const Icon(
          Icons.search_rounded,
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const Icon(
          Icons.chevron_right_rounded,
        ),
      ],
    );
  }
}

class HotestNewsCard extends StatelessWidget {
  const HotestNewsCard({
    super.key,
    required this.size,
    required this.news,
  });

  final Size size;
  final News news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).goNamed(
          AppRoutes.newsDetail,
          params: {
            "id": news.id.toString(),
          },
          extra: news,
        );
      },
      child: Container(
        height: size.height * 0.25,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(news.banner), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white54,
            child: ListTile(
              title: Text(news.title),
              subtitle: Text(news.desc, maxLines: 2),
            ),
          ),
        ),
      ),
    );
  }
}

class LatestNewsCard extends StatelessWidget {
  const LatestNewsCard({
    super.key,
    required this.size,
    required this.news,
  });

  final Size size;
  final News news;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8,
            ),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                spreadRadius: 1,
                color: Colors.black12,
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).goNamed(
                AppRoutes.newsDetail,
                params: {
                  "id": news.id.toString(),
                },
                extra: news,
              );
            },
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.25,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image.network(
                        news.banner,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      news.title,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
      ],
    );
  }
}

class LatestNewsIndexCardSection extends StatelessWidget {
  const LatestNewsIndexCardSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: newsList
          .map((news) => LatestNewsCard(size: size, news: news))
          .toList(),
    );
  }
}
