import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({required this.scrollCOntroller, super.key});

  final ScrollController scrollCOntroller;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: CustomScrollView(
        controller: scrollCOntroller,
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              'walid',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),

          //Banners
          SliverToBoxAdapter(
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.red,
                  height: 50,
                  width: 400,
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 15,
                );
              },
              itemCount: 100,
            ),
          ),
          //Caegories

          //Products
        ],
      ),
    );
  }
}
