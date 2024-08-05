import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sleep_app_ui/app_styles.dart';
import 'package:sleep_app_ui/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlackRich12,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Discover',
                      style: kInterBold.copyWith(
                        color: kWhiteFF,
                        fontSize: SizeConfig.blockSizeHorizontal! * 7.5,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => debugPrint('Search Tapped!'),
                      child: SvgPicture.asset(
                        width: 28,
                        height: 28,
                        'assets/search-icon.svg',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Container(
                  height: 4,
                  width: SizeConfig.blockSizeHorizontal! * 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.blockSizeHorizontal! * 10,
                    ),
                    color: kBlueAzure4A,
                  ),
                ),
              ),
              const SizedBox(
                height: kPadding28,
              ),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Container(
                      color: kBlackRich12, // Match the background color
                      child: TabBar(
                        unselectedLabelColor: kWhiteFF,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius12),
                          color: kBlueAzure4A,
                        ),
                        indicatorColor:
                            Colors.transparent, // Remove the default indicator
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  kBorderRadius12,
                                ),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text("APPS"),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius12),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text("APPS"),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius12),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text("APPS"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: kInterMedium.copyWith(
                        color: kUltraViolet51,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                    ),
                    Text(
                      'See All',
                      style: kInterMedium.copyWith(
                        color: kBlueAzure4A,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding16,
              ),
              SizedBox(
                height: 176,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 2,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 176,
                        width: 305,
                        margin: EdgeInsets.only(
                          left: index == 0 ? kPadding28 : kPadding20,
                          right: index == 1 ? kPadding28 : 0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/bg-blue.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
