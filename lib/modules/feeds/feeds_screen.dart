import 'package:flutter/material.dart';
import 'package:social_app/shared/styles/styles.dart';

class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children:  [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 10.0,
            margin: EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Image(
                  image: NetworkImage('https://img.freepik.com/free-photo/shocked-young-woman-stares-bugged-eyes-cannot-believe-something-amazing-listens-music-wireless-stereo-headphones-wears-knitted-sweater-isolated-purple-background-blank-copy-space_273609-58580.jpg?w=996'),
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'communication friends',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),

              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 10.0,
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                     children: [
                       CircleAvatar(
                         radius: 25.0,
                         backgroundImage: NetworkImage(
                           'https://img.freepik.com/free-photo/portrait-joyful-young-man-white-shirt_171337-17467.jpg?w=996'
                         ),
                       ),
                       SizedBox(
                         width: 15,
                       ),
                       Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text(
                                     'Mohammad Albaba',
                                     style: TextStyle(
                                       height: 1.3,
                                     ),
                                   ),
                                   SizedBox(
                                     width: 5.0,
                                   ),
                                   Icon(
                                     Icons.check_circle,
                                     color: defaultColor,
                                     size: 16.0,
                                   ),
                                 ],
                               ),
                               Text(
                                 'September 20, 2022 at 10:00 pm',
                                 style: Theme.of(context).textTheme.caption.copyWith(
                                   height: 1.3,
                                 ),
                               ),
                             ],
                           ) ,
                       ),
                       SizedBox(
                         width: 15.0,
                       ),
                       IconButton(
                           onPressed: (){},
                           icon: Icon(
                               Icons.more_horiz,
                               size: 16.0,
                           ),
                       ),
                     ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                      style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 10.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      child: Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 6),
                            child: Container(
                              height: 20.0,
                              child: MaterialButton(
                                onPressed: (){},
                                minWidth: 1.0,
                                padding: EdgeInsets.zero,
                                child: Text(
                                  '#software',
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    color: defaultColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 6),
                            child: Container(
                              height: 20.0,
                              child: MaterialButton(
                                onPressed: (){

                                },
                                minWidth: 1.0,
                                padding: EdgeInsets.zero,
                                child: Text(
                                  '#software',
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    color: defaultColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        4.0,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/free-photo/shocked-young-woman-stares-bugged-eyes-cannot-believe-something-amazing-listens-music-wireless-stereo-headphones-wears-knitted-sweater-isolated-purple-background-blank-copy-space_273609-58580.jpg?w=996',
                        ),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
    );
  }
}
