class PostService {
  List<Map<String, dynamic>> postJson = [
    {
      "id": 0,
      "about":
          "Est commodo quis commodo tempor. Ex mollit irure incididunt cupidatat laborum proident ad quis. Do minim anim amet in elit quis voluptate Lorem consectetur amet dolore adipisicing minim cillum. Mollit aliqua incididunt labore excepteur reprehenderit quis. Ut anim quis mollit id amet in eiusmod voluptate officia mollit nisi ipsum amet. Consequat nostrud commodo irure exercitation nulla commodo consequat amet excepteur cupidatat.\r\n",
      "likes": 506,
      "comments": 703,
      "created_at": "2024-04-01 13:00:00",
      "connection": "1 st",
      "user": {
        "profile_link": "https://avatar.iran.liara.run/public",
        "name": "Casey Dodson",
        "occupation": "UI / UX Designer – GEOLOGIX",
      },
    },
    {
      "id": 1,
      "about":
          "Reprehenderit nostrud officia nostrud sint aute ullamco et consectetur officia et. Cillum in cillum veniam sit adipisicing est officia consequat duis laboris officia ea irure sint. Ex ea velit enim eu in duis eiusmod sint sint reprehenderit. Ea ad aliqua dolor aliqua labore irure duis enim irure exercitation in aliqua aliquip. Dolore ipsum veniam anim commodo mollit sit occaecat reprehenderit velit magna. Sint ad ad ea consectetur eiusmod non incididunt sunt veniam cupidatat sunt et. Eu exercitation sunt ullamco eiusmod enim consectetur occaecat ullamco est culpa ipsum.\r\n",
      "likes": 113,
      "comments": 145,
      "created_at": "2024-04-01 13:00:00",
      "connection": "1 st",
      "user": {
        "profile_link": "https://avatar.iran.liara.run/public",
        "name": "Maricela Blankenship",
        "occupation": "UI / UX Designer – DELPHIDE",
      },
    },
    {
      "id": 2,
      "about":
          "Ipsum deserunt cupidatat incididunt cupidatat incididunt sunt sunt dolore aute. Adipisicing ullamco velit amet dolore non quis et sunt. Enim est voluptate enim sit adipisicing occaecat duis nulla ad cillum enim enim occaecat eu. Laborum laborum pariatur ut sint voluptate est. Laborum reprehenderit amet in sit labore cupidatat velit aliquip. Dolor proident adipisicing exercitation id nulla cupidatat est cillum nulla reprehenderit sit. Mollit tempor mollit esse ad excepteur pariatur reprehenderit tempor ipsum laborum ex et nulla qui.\r\n",
      "likes": 671,
      "comments": 340,
      "created_at": "2024-04-01 13:00:00",
      "connection": "1 st",
      "user": {
        "profile_link": "https://avatar.iran.liara.run/public",
        "name": "Phillips Roberson",
        "occupation": "UI / UX Designer – BLEENDOT",
      },
    },
    {
      "id": 3,
      "about":
          "Nulla et nostrud sunt consectetur aliqua reprehenderit ut ex veniam id. Culpa ipsum aliquip commodo aliqua. Culpa labore nulla ad adipisicing proident minim qui commodo culpa. Deserunt deserunt commodo ullamco fugiat velit deserunt sunt aute pariatur. Magna sint velit exercitation proident ad qui labore sint non in quis minim.\r\n",
      "likes": 702,
      "comments": 377,
      "created_at": "2024-04-01 13:00:00",
      "connection": "1 st",
      "user": {
        "profile_link": "https://avatar.iran.liara.run/public",
        "name": "Mckinney Montgomery",
        "occupation": "UI / UX Designer – RETRACK",
      },
    },
    {
      "id": 4,
      "about":
          "Qui mollit occaecat irure aliqua dolore veniam. Ea tempor labore laborum exercitation ad do eiusmod id ad sit sunt dolore magna. Velit exercitation ex consectetur est cillum. Nisi duis deserunt officia sint laboris excepteur irure voluptate sunt culpa ipsum laboris. Irure ipsum ex nostrud exercitation consequat. Amet eu ex ad ullamco aute.\r\n",
      "likes": 157,
      "comments": 193,
      "created_at": "2024-04-01 13:00:00",
      "connection": "1 st",
      "user": {
        "profile_link": "https://avatar.iran.liara.run/public",
        "name": "Luz Hodges",
        "occupation": "UI / UX Designer – VIRVA",
      },
    },
    {
      "id": 5,
      "about":
          "Voluptate ad aliqua anim adipisicing reprehenderit excepteur amet nisi deserunt anim labore laboris ipsum laborum. Quis exercitation elit eu minim. In ipsum pariatur nulla ea irure adipisicing sit do nostrud.\r\n",
      "likes": 847,
      "comments": 976,
      "created_at": "2024-04-01 13:00:00",
      "connection": "1 st",
      "user": {
        "profile_link": "https://avatar.iran.liara.run/public",
        "name": "Roxie Cannon",
        "occupation": "UI / UX Designer – MARTGO",
      },
    },
    {
      "id": 6,
      "about":
          "Et veniam anim duis commodo. Sint sit officia elit proident duis cupidatat et enim mollit consequat mollit cillum enim. Elit ipsum ullamco esse ad. Tempor anim ipsum exercitation sit eu pariatur pariatur aute ad in et ex aliqua laboris.\r\n",
      "likes": 777,
      "comments": 612,
      "created_at": "2024-04-01 13:00:00",
      "connection": "1 st",
      "user": {
        "profile_link": "https://avatar.iran.liara.run/public",
        "name": "Morales Pearson",
        "occupation": "UI / UX Designer – COMVENE",
      },
    },
  ];

  Future<dynamic> getPosts() async {
    await Future.delayed(Duration(seconds: 1));
    return postJson;
  }
}
