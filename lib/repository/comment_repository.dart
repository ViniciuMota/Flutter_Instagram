import 'package:nac_FIAP_flutter_instagram/models/comment_model.dart';

import 'database.dart';

class CursoRepository {


  Future<List<Comment>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<Comment> comments = new List<Comment>();

    if (db.created) {
      comments = new List<Comment>();
      comments.add(
        new Comment(
          authorName: 'Angel',
          authorImageUrl: 'assets/images/user2.png',
          text: 'Loving this photo!!',
        ),
      );
      comments.add(
        Comment(
          authorName: 'Charlie',
          authorImageUrl: 'assets/images/user3.png',
          text: 'One of the best photos of you...',
        ),
      );
      comments.add(
        Comment(
          authorName: 'Angelina Martin',
          authorImageUrl: 'assets/images/user4.png',
          text: 'Can\'t wait for you to post more!',
        ),
      );
      comments.add(
        Comment(
          authorName: 'Jax',
          authorImageUrl: 'assets/images/user1.png',
          text: 'Nice job',
        ),
      );
      comments.add(
        Comment(
          authorName: 'Sam Martin',
          authorImageUrl: 'assets/images/user0.png',
          text: 'Thanks everyone :)',
        ),
      );
 
      
    }

    return new Future.value(comments);
  }

}
