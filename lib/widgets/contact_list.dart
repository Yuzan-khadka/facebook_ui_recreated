import 'package:facebook_responsive_ui/models/models.dart';
import 'package:facebook_responsive_ui/widgets/user_card.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  final List<User> users;
  const ContactsList({
    Key key,
    @required this.users,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 200.0),
      child: Column(children: [
        Row(children: [
          Expanded(child: Text('Contacts',
           style: TextStyle(
             color: Colors.grey[600],
             fontSize: 18.0,
             fontWeight: FontWeight.w600,
           )
          ),
         
          ),
          Icon(Icons.search,
          color: Colors.grey[600],
          ),
          const SizedBox(width: 8.0,),
          Icon(
            Icons.more_horiz,
            color: Colors.grey[600],
          )
        ],),
        Expanded(
                  child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index){
              final User user = users[index];
              return Padding(padding: EdgeInsets.symmetric(vertical: 8.0),
              child: UserCard(user: user,),
              );
            }),
        )
      ],),
    );
  }
}