class StatusModel {
  final String name;
  final String time;
  final String avatar;
  StatusModel({required this.name, required this.time, required this.avatar});

}

List<StatusModel> statusModel = [
  StatusModel(
   name: 'Deepak',
    time: '10:15',
    avatar: 'images/deepak3.jpg',
    
  ),
  StatusModel(
   name: 'Kripa',
   time: '10:20',
    avatar: 'images/meradesh.jpg',
  
  ),
  StatusModel(
   name: 'Mahendra',
   time: '5:03',
   avatar: 'images/sahaj.jpg',
  ),
  StatusModel(
   name: 'Madhu',
   time: '9:53',
   avatar: 'images/payal.jpg',
  ),
];
