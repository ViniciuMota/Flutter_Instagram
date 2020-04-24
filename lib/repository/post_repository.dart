import 'package:nac_FIAP_flutter_instagram/models/post_model.dart';

import 'database.dart';

class CursoRepository {


  Future<List<Post>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<Post> posts = new List<Post>();

    if (db.created) {
      posts = new List<Post>();
      posts.add(
        new Post(
          authorName: 'Sam Martin',
          authorImageUrl: 'assets/images/user0.png',
          timeAgo: '5 min',
          imageUrl: 'assets/images/post0.jpg',
        ),
      );
      posts.add(
        Post(
          authorName: 'Sam Martin',
          authorImageUrl: 'assets/images/user0.png',
          timeAgo: '10 min',
          imageUrl: 'assets/images/post1.jpg',
        ),
      );
      
    }

    return new Future.value(posts);
  }

}
