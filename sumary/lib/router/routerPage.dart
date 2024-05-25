import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:sumary/view/chapter8/chapter8_bt2.dart';
import 'package:sumary/view/chapter8/chapter8_bt3.dart';
import 'package:sumary/view/chapter8/chapter8_bt4.dart';
import 'package:sumary/view/home.dart';
import 'package:sumary/view/chapter4/chapter4_home.dart';
import 'package:sumary/view/chapter4/chapter4_bt1.dart';
import 'package:sumary/view/chapter5/chapter5_home.dart';
import 'package:sumary/view/chapter5/chapter5_bt1.dart';
import 'package:sumary/view/chapter6/chapter6_home.dart';
import 'package:sumary/view/chapter6/chapter6_bt1.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/homePage/index.dart';
import 'package:sumary/view/chapter6/chapter6_bt3.dart';
import 'package:sumary/view/chapter7/chapter7_home.dart';
import 'package:sumary/view/chapter7/chapter7_bt1.dart';
import 'package:sumary/view/chapter7/chapter7_bt2.dart';
import 'package:sumary/view/chapter7/chapter7_bt3.dart';
import 'package:sumary/view/chapter7/chapter7_bt4.dart';
import 'package:sumary/view/chapter7/chapter7_bt5.dart';
import 'package:sumary/view/chapter8/chapter8_home.dart';
import 'package:sumary/view/chapter8/chapter8_bt1.dart';

class routerPage{
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const home_page(title: 'Home Page');
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'chap4',
            builder: (BuildContext context, GoRouterState state) {
              return const home4();
            },
            routes: <RouteBase>[
              GoRoute(
                  path: 'bai1',
                  builder: (BuildContext context, GoRouterState state) {
                    return const Home();
                  },
              ),
            ],
          ),
          GoRoute(
            path: 'chap5',
            builder: (BuildContext context, GoRouterState state) {
              return const home5();
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'bai1',
                builder: (BuildContext context, GoRouterState state) {
                  return const Home_chap5();
                },
              ),
            ],
          ),
          GoRoute(
            path: 'chap6',
            builder: (BuildContext context, GoRouterState state) {
              return const home6();
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'bai1',
                builder: (BuildContext context, GoRouterState state) {
                  return const chap6();
                },
              ),
              GoRoute(
                path: 'bai2',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage();
                },
              ),
              GoRoute(
                path: 'bai3',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai3();
                },
              ),
            ],
          ),
          GoRoute(
            path: 'chap7',
            builder: (BuildContext context, GoRouterState state) {
              return const home7();
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'bai1',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai1_chap7();
                },
              ),
              GoRoute(
                path: 'bai2',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai2_chap7();
                },
              ),
              GoRoute(
                path: 'bai3',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai3_chap7();
                },
              ),
              GoRoute(
                path: 'bai4',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai4_chap7();
                },
              ),
              GoRoute(
                path: 'bai5',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai5_chap7();
                },
              ),
            ],
          ),
          GoRoute(
            path: 'chap8',
            builder: (BuildContext context, GoRouterState state) {
              return const home8();
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'bai1',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai1_chap8();
                },
              ),
              GoRoute(
                path: 'bai2',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai2_chap8();
                },
              ),
              GoRoute(
                path: 'bai3',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai3_chap8();
                },
              ),
              GoRoute(
                path: 'bai4',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyHomePage_bai4_chap8();
                },
              ),
            ],

          ),
        ],
      ),
    ],
  );
}
