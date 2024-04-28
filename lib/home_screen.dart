import 'package:flutter/material.dart';
import 'package:kj_whatsapp/main.dart';
void main () {
  runApp(const MyApp());
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('KJ Whatsapp'),
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              tabs: [
              Tab(
                child: Text('Camera'),
              ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions:  [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/KJ.png'),
              ),
              const SizedBox(width: 65,),

              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context,) => const [
                  PopupMenuItem(
                      value: 1,
                      child: Text('New group')),
                  PopupMenuItem(
                      value: 2,
                      child: Text('Settings')),
                  PopupMenuItem(
                      value: 3,
                      child: Text('Log out')),

                ] ),
              const SizedBox(width: 10,),
            ],
          ),
          body: TabBarView(
            children: [
           Container(
             color: Colors.black,
             child: const Column(
               children: [
                 Text('Welcome To Tech Brothers',style: TextStyle(
                   fontSize: 25,color: Colors.white
                 ),),

                 CircleAvatar(
                   radius: 100,
                   backgroundImage: AssetImage('assets/KJ.png'),
                 ),
                 SizedBox(height: 15,),
                 CircleAvatar(
                   radius: 100,
                   backgroundImage: AssetImage('assets/Ammar.JPG'),
                 ),
                 SizedBox(height: 15,),
                 CircleAvatar(
                   radius: 100,
                   backgroundImage: AssetImage('assets/WA.JPG'),
                 ),
               ],
             ),
           ),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index) {
                    if(index%2==0){
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/KJ.png'),
                        ),
                        title:  Text('Kashif Javed'),
                        subtitle: Text('Install the KJ Whatsapp'),
                        trailing: Text('10:30 am'),
                      );
                    }
                   else if(index%3==1){
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/Ammar.JPG'),
                        ),
                        title:  Text('Ammar Javed'),
                        subtitle: Text('The KJ Whatsapp is amazing'),
                        trailing: Text('10:00 am'),
                      );
                    }
                   else if(index%5==0){
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/WA.JPG'),
                        ),
                        title:  Text('Waqas Arshad'),
                        subtitle: Text('The KJ Whatsapp is wonderful'),
                        trailing: Text('9:30 am'),
                      );
                    }
                   else if(index%5==1){
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/Haider.PNG'),
                        ),
                        title:  Text('Tanveer Haider'),
                        subtitle: Text('The KJ Whatsapp has many advanced features'),
                        trailing: Text('11:30 am'),
                      );
                    }
                   else{
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/Saad.JPG'),
                        ),
                        title:  Text('Saad Tanveer'),
                        subtitle: Text('The KJ Whatsapp is very secure'),
                        trailing: Text('12:30 am'),
                      );
                    }
              }),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index) {
                    if(index%2==0){
                      return  const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/KJ.png'),
                        ),
                        title:  Text('Kashif Javed'),
                        subtitle: Text('Seen 30min ago'),
                      );
                    }
                    else if(index%3==1){
                      return   ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.teal,
                                  width: 3
                              )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/Haider.PNG'),
                          ),
                        ),
                        title:  const Text('Tanveer Haider'),
                        subtitle: const Text('Seen 40min ago'),
                      );
                    }
                    else if(index%5==0){
                      return  ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.teal,
                                  width: 3
                              )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/Ammar.JPG'),
                          ),
                        ),
                        title: const Text('Ammar Javed'),
                        subtitle: const Text('20min ago'),
                      );
                    }
                    else if(index%5==1){
                      return  ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.teal,
                                  width: 3
                              )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/WA.JPG'),
                          ),
                        ),
                        title: const Text('Waqas Arshad'),
                        subtitle: const Text('10min ago'),
                      );
                    }
                    else{
                      return  ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.teal,
                                  width: 3
                              )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/Saad.JPG'),
                          ),
                        ),
                        title: const Text('Saad Tanveer'),
                        subtitle: const Text('50min ago'),
                      );
                    }

                  }),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index) {
                    if (index % 2 == 0) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/KJ.png'),
                        ),
                        title: Text('Kashif Javed'),
                        subtitle: Text('Missed audio call at 10:00 am'),
                        trailing: Icon(Icons.phone_missed),

                      );
                    }
                    else if (index % 3 == 0) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/Haider.PNG'),
                        ),
                        title: Text('Tanveer Haider'),
                        subtitle: Text('Missed audio call at 10:00 am'),
                        trailing: Icon(Icons.phone_missed),

                      );
                    }
                    else if (index % 5 == 0) {
                      return const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/Ammar.JPG'),
                          ),
                          title: Text('Ammar Javed'),
                          subtitle: Text('Received  audio call at 10:30 am'),
                          trailing: Icon(Icons.phone)
                      );
                    }
                    else if (index % 5 == 1) {
                      return const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/WA.JPG'),
                          ),
                          title: Text('Waqas Arshad'),
                          subtitle: Text('Missed video call at 10:40 am'),
                          trailing: Icon(Icons.missed_video_call)
                      );
                    }
                    else   {
                      return  const ListTile(
                          leading:  CircleAvatar(
                         backgroundImage: AssetImage('assets/Saad.JPG'),
                          ),
                      title:   Text('Saad Tanveer'),
                      subtitle:  Text('Received video call at 11:30 am'),
                      trailing: Icon( Icons.video_call)
    );
    }
  }),

            ],
          ),
        ) );

  }
}

