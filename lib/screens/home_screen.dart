import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildLandscapeMovieList('Now Playing'),
                SizedBox(height: 10),
                buildPotraitMovieList(),
                SizedBox(height: 10),
                buildPotrait2MovieList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

//{required bool isLoading, required List<Movie> movies}
  Widget buildLandscapeMovieList(String title) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Show All..',
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),

        //isLoading == true
        //       ? Center(child: CircularProgressIndicator())
        //       :
        Container(
          height: 255,
          // color: Colors.white,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3, //movies.length,
            itemBuilder: (context, index) {
              return buildLandscapeMovieCard();
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
          ),
        ),
      ],
    );
  }

  Widget buildLandscapeMovieCard() {
    return Container(
      height: double.infinity,
      width: 340,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            // Container(
            //   child: Stack(
            //     alignment: Alignment.bottomCenter,
            //     children: [],
            //   ),
            // ),
            Image.asset(
              'assets/poster.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Movie Name',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(width: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 22,
                      ),
                      Text(
                        '8.7',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPotraitMovieList() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Show All..',
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),

        //isLoading == true
        //       ? Center(child: CircularProgressIndicator())
        //       :
        Container(
          height: 255,
          // color: Colors.white,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 5, //movies.length,
            itemBuilder: (context, index) {
              return buildPotraitMovieCard();
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
          ),
        ),
      ],
    );
  }

  Widget buildPotraitMovieCard() {
    return Container(
      height: double.infinity,
      width: 140,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   child: Stack(
            //     alignment: Alignment.bottomCenter,
            //     children: [],
            //   ),
            // ),
            Image.asset(
              'assets/foto.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Movie Name',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPotrait2MovieList() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Upcoming',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Show All..',
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),

        //isLoading == true
        //       ? Center(child: CircularProgressIndicator())
        //       :
        Container(
          height: 255,
          // color: Colors.white,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3, //movies.length,
            itemBuilder: (context, index) {
              return buildPotrait2MovieCard();
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
          ),
        ),
      ],
    );
  }

  Widget buildPotrait2MovieCard() {
    return Container(
      height: double.infinity,
      width: 140,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   child: Stack(
            //     alignment: Alignment.bottomCenter,
            //     children: [],
            //   ),
            // ),
            Image.asset(
              'assets/film.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Movie Name',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
