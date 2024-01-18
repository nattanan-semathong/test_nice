import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/core/themes/app_text_styles.dart';
import 'package:my_app/features/news/domain/entity/news_entity.dart';
import 'package:my_app/features/news/presentation/bloc/main_news_bloc/main_news_bloc.dart';

class MainNewsScreen extends StatelessWidget {
  const MainNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainNewsBloc, MainNewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is MainNewsLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is MainNewsErrorState) {
          return Center(
            child: Text(
              state.message,
              textAlign: TextAlign.center,
            ),
          );
        }
        if (state is MainNewsGetRecentNewsSuccessState) {
          return Scaffold(
            body: SafeArea(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recent News',
                          style: AppTextStyle.labelWhite,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(999),
                              color: Colors.white),
                          child: const Row(
                            children: [
                              Text(
                                'VIEW MORE',
                                style: AppTextStyle.buttonSmallNavy,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 10,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    childAspectRatio: 21 / 10,
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children:
                        state.news.map((news) => _newsItem(news)).toList(),
                  ),
                ],
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }

  Widget _newsItem(NewsEntity news) {
    final borderRadius = BorderRadius.circular(10);
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
      ),
      child: Stack(
        children: [
          if (news.imageUrl == null)
            const Center(
              child: Text(
                "No Image",
                style: AppTextStyle.paragraphSmallWhite,
              ),
            ),
          if (news.imageUrl != null)
            CachedNetworkImage(
              imageUrl: news.imageUrl!,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Center(
                child: Text(
                  "No Image",
                  style: AppTextStyle.paragraphSmallWhite,
                ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              stops: const [0, 0.4, 0.6, 1],
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.8)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    if (news.publishedAt != null)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(999)),
                            child: Text(news.publishedAt!.split("T")[0],
                                style: AppTextStyle.labelWhite),
                          )
                        ],
                      )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(news.title?.trim() ?? '',
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        style: AppTextStyle.h3White),
                    if (news.description != null)
                      Text(
                        news.description!.trim(),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        style: AppTextStyle.paragraphSmallGrey,
                      ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
