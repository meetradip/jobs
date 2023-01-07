import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs/controllers/main_tab_controller.dart';
import 'package:jobs/helpers/search_delegate.dart';
import 'package:jobs/widgets/job_card.dart';

class JobsPage extends StatelessWidget {
  JobsPage({super.key});
  final MainTabController _tabx = Get.put(MainTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jobs'),
        bottom: TabBar(
          controller: _tabx.controller,
          tabs: _tabx.myTabs,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list),
          ),
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchHintDelegate(),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: TabBarView(
        controller: _tabx.controller,
        children: [
          _recommendedTab(),
          _recentTab(),
        ],
      ),
    );
  }

  Widget _recommendedTab() {
    return ListView(
      children: jobsCardList,
    );
  }

  Widget _recentTab() {
    return ListView(
      children: jobsCardList,
    );
  }

  List<Widget> jobsCardList = [
    jobCard(
      imageUrl: 'https://picsum.photos/250?image=1',
      companyName: 'Snapshot',
      date: '1 hours ago',
      jobPosition: 'Chief Executive Officer',
      jobTime: 'Fulltime',
      jobLocation: 'Thakurgaon, BD',
    ),
    jobCard(
      imageUrl: 'https://picsum.photos/250?image=2',
      companyName: 'XeonBD',
      date: '1 days ago',
      jobPosition: 'Software Developer',
      jobTime: 'Fulltime',
      jobLocation: 'Remote',
    ),
    jobCard(
      imageUrl: 'https://picsum.photos/250?image=3',
      companyName: 'Facebook',
      date: '2 days ago',
      jobPosition: 'Frontend Web Developer',
      jobTime: 'Fulltime',
      jobLocation: 'Remote',
    ),
    jobCard(
      imageUrl: 'https://picsum.photos/250?image=4',
      companyName: 'Google',
      date: '2 days ago',
      jobPosition: 'Web Designer',
      jobTime: 'Fulltime',
      jobLocation: 'Toronto, Canada',
    ),
    jobCard(
      imageUrl: 'https://picsum.photos/250?image=5',
      companyName: 'Amazon',
      date: '2 days ago',
      jobPosition: 'Sales Manager',
      jobTime: 'Fulltime',
      jobLocation: 'Maharashtra, India',
    ),
  ];
}
