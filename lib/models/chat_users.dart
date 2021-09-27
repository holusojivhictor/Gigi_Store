class ChatUsers {
  final String name, image, subtitle, date, status;
  ChatUsers({required this.name, required this.image, required this.subtitle, required this.date, required this.status});
}

List<ChatUsers> demoUsers = [
  ChatUsers(
    name: "Asta Yelen",
    image: "assets/images/asta_yelen.png",
    subtitle: subtitle,
    date: "27 Sep",
    status: "Active",
  ),
  ChatUsers(
    name: "Brookes Samuel",
    image: "assets/images/brookes_samuel.png",
    subtitle: subtitle,
    date: "27 Sep",
    status: "Inactive",
  ),
  ChatUsers(
    name: "Customer support",
    image: "assets/images/customer_support.png",
    subtitle: subtitle,
    date: "27 Sep",
    status: "Inactive",
  ),
  ChatUsers(
    name: "Henry Danger",
    image: "assets/images/henry_danger.png",
    subtitle: subtitle,
    date: "27 Sep",
    status: "Active",
  ),
  ChatUsers(
    name: "Jane Doe",
    image: "assets/images/jane_doe.png",
    subtitle: subtitle,
    date: "27 Sep",
    status: "Active",
  ),
];

const String subtitle = "Updates to our terms and agreements...";