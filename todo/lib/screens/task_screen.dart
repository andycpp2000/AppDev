import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
      ),
      body: Stack(
        children: [
          FlareActor(
            'assets/BlueSplashScreen.flr',
            animation: 'BackgroundLoop',
            fit: BoxFit.fill,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlue,
                        size: 40.0,
                      ),
                      radius: 30.0,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Todo',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      'Tasks left X',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}