import 'package:flutter/material.dart';

class Menus {
  static List packages() {
    return [
      {
        'icon': Icons.settings,
        'title': "Buy Packages",
        'subtitle': 'Sell faster, more & at higher margin with packages.'
      },
      {
        'icon': Icons.settings,
        'title': "My Orders",
        'subtitle': 'Active, Scheduled and Expired orders'
      },
      {
        'icon': Icons.settings,
        'title': "Invoices",
        'subtitle': 'See and download your invoices.'
      },
      {
        'icon': Icons.settings,
        'title': "Billing Information",
        'subtitle': 'Edit your billing name, address etc.'
      },
    ];
  }

  static List settings() {
    return [
      {
        'icon': Icons.settings,
        'title': "Change Password",
        'subtitle': 'Sell faster, more & at higher margin with packages.'
      },
      {
        'icon': Icons.settings,
        'title': "Notifications",
        'subtitle': 'Active, Scheduled and Expired orders'
      },
      {
        'icon': Icons.settings,
        'title': "Logout",
        'subtitle': 'See and download your invoices.'
      },
      {
        'icon': Icons.settings,
        'title': "Delete Account",
        'subtitle': 'Edit your billing name, address etc.'
      },
    ];
  }

  static List ads() {
    return [
      {
        'icon': Icons.settings,
        'title': "Active",
        'subtitle': 'Sell faster, more & at higher margin with packages.'
      },
      {
        'icon': Icons.settings,
        'title': "Rejected",
        'subtitle': 'Active, Scheduled and Expired orders'
      },
      {
        'icon': Icons.settings,
        'title': "Expired",
        'subtitle': 'See and download your invoices.'
      },
    ];
  }

  static List help() {
    return [
      {
        'icon': Icons.settings,
        'title': "Help Center",
        'subtitle': 'See FAQ and contact support.'
      },
      {
        'icon': Icons.settings,
        'title': "Rate us",
        'subtitle': 'If you love our app, please take a moment to rate it.'
      },
      {
        'icon': Icons.settings,
        'title': "Invite friends",
        'subtitle': 'Invite your friends to buy and sell.'
      },
      {
        'icon': Icons.settings,
        'title': "Become a beta tester",
        'subtitle': 'Test new features in advance.'
      },
      {'icon': Icons.settings, 'title': "Version", 'subtitle': '14.42.004.'},
    ];
  }
}
