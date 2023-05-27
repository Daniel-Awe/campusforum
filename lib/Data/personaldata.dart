import 'package:flutter/material.dart';

//筛选出来的 “被关注列表”
// List<int> selectedIndexes = [1, 5, 7, 9, 10, 4];
// List<Map<String, dynamic>> followerList = all.sublist(10, 20);

//筛选出来的 “关注列表”
// List<Map<String, dynamic>> followingList = all.sublist(0, 12);

List<Map<String, dynamic>> articleList = [];

//筛选出来的 “推荐列表”
List<Map<String, dynamic>> recommendList = all.sublist(20,27);

//管理员
List<Map<String, dynamic>> admin = [
  {
    'account': 'admin',
    'password': 'admin',
    'name': 'John Doe',
    'home': 'New York,USA',
    'status': 'Flutter Developer',
    'age': '29',
    'sex':'male',
    'fans':'229',
    'school': '浙江科技学院',
    'following': '121',
    'background': 'assets/admin/background.jpg',
    'avatar': 'assets/admin/admin1.jpg',
    'email': 'admin@google.com',
    'phone':'111-777-5555',
    'intro': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod felis quis sapien malesuada, a interdum est posuere. Sed auctor quis elit at vestibulum. Maecenas quis sodales enim, ac posuere elit. Sed euismod risus eu risus elementum vestibulum. Sed dictum odio id tellus gravida varius. Etiam pellentesque facilisis metus, vel sodales odio iaculis nec. Sed in velit eget velit varius faucibus. Ut vitae nisl ac risus consectetur blandit.',
    'post': [
      {
        'title': 'The Alchemist','name': 'John Doe',
        'text': 'One of my favorite books is "The Alchemist" by Paulo Coelho. This book is a beautiful and inspiring tale about following your dreams and discovering your purpose in life. It reminds us that the universe conspires to help us achieve our goals, and all we need is the courage to pursue them. Highly recommended!',
        'time': '2022-05-02 12:30:00',
        'comments': '127',
        'likes':'245',
        'tags': '吐槽爆料',
        'image': '',
        'comments_data': [],
      },
      {
        'title': 'To Kill a Mockingbird','name': 'John Doe',
        'text': 'To Kill a Mockingbird by Harper Lee is a powerful and thought-provoking novel about racial injustice and the loss of innocence. Set in the 1930s in the deep south of the United States, it tells the story of a young girl named Scout and her experiences of growing up in a society plagued by prejudice and hate. This book is a must-read for anyone interested in understanding the complexities of race relations in America.',
        'time': '2022-05-05 14:20:00',
        'comments': '87',
        'likes':'327',
        'image': 'assets/userinfo/post/post75.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      },
      {
        'title': 'The Great Gatsby','name': 'John Doe',
        'text': 'The Great Gatsby by F. Scott Fitzgerald is a classic American novel that explores themes of love, wealth, and the corruption of the American Dream. Set in the 1920s, it tells the story of Jay Gatsby, a wealthy man who is trying to win back the love of his life. This book is a masterpiece of modern literature and a must-read for anyone interested in the culture and history of the roaring twenties.',
        'time': '2022-05-03 10:45:00',
        'comments': '212',
        'likes':'452',
        'image': 'assets/userinfo/post/post85.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      },
      {
        'title': '人生中的尴尬时刻',
        'name': 'John Doe',
        'text': '人生中难免会有尴尬的时刻，让我们一起吐槽那些让人尴尬的经历，释放尴尬带来的压力。',
        'time': '2023-06-08 15:30:00',
        'comments': '83',
        'likes': '714',
        'image': 'assets/userinfo/post/post69.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      }
    ],
    'likes': [
      {
        'title': 'The Catcher in the Rye',
        'text':'哥们大雾其中没带计算器，纯手算，考了88',
        'name': 'Isabella Turner',
        'time': '2023-5-10 9:41',
        'comments': '456',
        'likes':'278',
        'tags': '吐槽爆料',
        'image': 'assets/userinfo/post/post37.jpg',
        'comments_data': [],
      },
      {
        'title': '留学咨询会即将举行','name': '晚风',
        'text': '为帮助有志于出国留学的学生更好地了解留学事宜，学校将举办留学咨询会。咨询会将邀请多名留学专家和校友分享他们的留学经验和心得，同时还将介绍各类留学项目和申请流程。',
        'time': '2022-10-05 13:30:00',
        'comments': '68',
        'likes': '311',
        'image': 'assets/userinfo/post/post15.jpg',
        'tags': '学业疑难',
        'comments_data': [],
      },
      {
        'title': '小黑子之新时代的IKUN','name': '赵娣-Ikun',
        'text': '真服了，小黑子那么多，黑的不够啊？？搞笑',
        'time': '2023-05-03 15:00:00',
        'tags': '吐槽爆料',
        'comments': '20',
        'likes':'50',
        'image': 'assets/userinfo/post/post57.jpg',
        'comments_data': [],
      },
    ],
    //关注
    'followingList': [
      '晚风',
      'Alexander Lee',
      '凤城玫瑰',
      '向山而去',
      '皮卡丘',
      '唐知慧',
      '雪山',
      '迪迦~！',
      'Benjamin Green',
      '韩寒安',
      '黎明至暗',
      '史紫安',
    ],
    //粉丝
    'followerList': [
      'Benjamin Green',
      '田曲文',
      '顾春英',
      '赵娣-Ikun',
      '晚风',
      '冉忆敏',
      'Emily Brown',
      '李石田',
      'Isabella Turner',
    ]
  }
];

//所有的个人信息
List<Map<String, dynamic>> all = [
  { 'name': '晚风',
    'sex':'male',
    'age': '25',
    'fans':'12',
    'following': '241',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background4.jpg',
    'avatar': 'assets/userinfo/avatar4.jpg',
    'email': '192740192@qq.com',
    'phone':'123-4567-8910',
    'intro': '喜欢打篮球、健身，闲暇时会弹弹吉他，也会做一些自动化小工具，对生活充满热情。',
    'post': [
      {
        'name': '晚风',
        'text': '昨晚梦到crush了 她好可爱呜呜 还梦到好朋友 发生了一个特别幸福的小事 梦到结束的时候也很恰当',
        'time': '2023-4-31 9:12',
        'comments': '0',
        'likes': '4',
        'tags': '身边趣事',
        'image': '',
        'comments_data': [],
      },
      {
        'title': '留学咨询会即将举行',
        'name': '晚风',
        'text': '为帮助有志于出国留学的学生更好地了解留学事宜，学校将举办留学咨询会。咨询会将邀请多名留学专家和校友分享他们的留学经验和心得，同时还将介绍各类留学项目和申请流程。',
        'time': '2022-10-05 13:30:00',
        'comments': '68',
        'likes': '311',
        'tags': '学业疑难',
        'image': 'assets/userinfo/post/post15.jpg',
        'comments_data': [],
      },
      {
        'title': 'Pride and Prejudice','name': 'Isabella Turner',
        'text': 'One of the greatest love stories ever written is "Pride and Prejudice" by Jane Austen. This classic novel tells the story of Elizabeth Bennet, a strong-willed and independent young woman, and Mr. Darcy, a wealthy and proud gentleman. It is a witty and charming tale about the complexities of romance and the importance of overcoming our prejudices. A timeless classic!',
        'time': '2022-04-19 09:30:00',
        'comments': '789',
        'likes':'521',
        'tags': '创作分析',
        'image': 'assets/userinfo/post/post19.jpg',
        'comments_data': [],
      },
      {
        'title': '学生志愿者参加社区清洁活动','name': '晚风',
        'text': '今天，一群学生志愿者参加了社区的清洁活动，包括垃圾清理、植树等。他们以实际行动贡献社区，同时也提高了环境保护意识。我们希望更多的学生能够加入志愿者行列。',
        'time': '2022-05-11 08:30:00',
        'comments': '245',
        'likes': '623',
        'tags': '身边趣事',
        'image': '',
        'comments_data': [],

      },
      {
        'title': '学会自我调节',
        'name': '晚风',
        'text': '生活中总会遇到各种各样的情况，有时候会感到失落、沮丧，甚至焦虑。学会自我调节是非常重要的，它能够帮助我们更好地面对困难和挫折。一些有效的自我调节技巧包括深呼吸、放松肌肉、运动、沉思等。当我们能够及时采取措施进行自我调节时，我们会更好地保持冷静和理智，从而更好地解决问题。',
        'time': '2023-05-03 16:30:00',
        'comments': '8',
        'likes':'25',
        'image': 'assets/userinfo/post/post23.jpg',
        'tags': '日常生活',
        'comments_data': [],
      },
      {
        'title': '保持积极心态',
        'name': '晚风',
        'text': '积极心态能够带来更多的快乐和成功。无论在何种情况下，保持积极心态都能够让我们更好地面对挑战和困难。积极的想法能够让我们更加自信和勇敢，同时也能够吸引更多的好运和机会。为了保持积极心态，我们需要学会感恩、乐观、自信和宽容。这些都是一些积极的思维方式，能够让我们更好地面对生活中的各种挑战。',
        'time': '2023-05-03 17:00:00',
        'comments': '15',
        'likes':'35',
        'image': 'assets/userinfo/post/post25.jpg',
        'tags': '情感',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '有效的时间管理',
        'name': '凤城玫瑰',
        'text': '时间是有限的资源，有效的时间管理是非常重要的。在日常生活中，我们需要合理规划时间，合理安排工作和休息时间，以充分利用时间。一些有效的时间管理技巧包括制定计划、设置优先级、避免拖延、减少干扰等。当我们能够有效地管理时间时，我们会感到更加充实和满足，同时也能够提高我们的工作效率和生产力。',
        'time': '2023-05-03 16:00:00',
        'comments': '5',
        'likes':'20',
        'image': 'assets/userinfo/post/post29.jpg',
        'tags': '日常生活',
        'comments_data': [],
      },
      {
        'title': '学生组织汉语角活动','name': '雪山',
        'text': '为了促进外国留学生的汉语交流和学习，学生组织了一次汉语角活动。他们与外国留学生进行了交流和讨论，分享了中华文化和中国风俗习惯，让外国留学生更好地融入中国社会。',
        'time': '2022-05-28 19:00:00',
        'comments': '256',
        'likes': '678',
        'image': 'assets/userinfo/post/post33.jpg',
        'tags': '嘻哈'
      },
      {
        'title': '学生会举办新生见面会','name': '田曲文',
        'text': '为欢迎新生入学，学生会将在8月31日下午2点举办新生见面会。届时学生会将介绍学校的各项服务和社团活动，帮助新生快速适应大学生活。同时，还将邀请一些校友和知名企业家分享他们的大学经历和成功经验。我们期待着新生的加入，并为他们提供支持和帮助。',
        'time': '2022-08-25 10:30:00',
        'comments': '102',
        'likes': '265',
        'image': 'assets/userinfo/post/post46.jpg',
        'tags': '创作分析'
      },
    ]
  },
  { 'name': 'Alexander Lee',
    'age': '22',
    'sex':'male',
    'fans':'229',
    'following': '121',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background1.jpg',
    'avatar': 'assets/userinfo/avatar1.jpg',
    'email': 'alexander@google.com',
    'phone':'555-555-5555',
    'intro': 'I come from a family of scientists, and I have always been fascinated by the mysteries of the universe. Astronomy is my passion, and I enjoy stargazing on clear nights.',
    'post': [
      {
        'title': 'My Trip to Hawaii',
        'name': 'Alexander Lee',
        'text': 'Last summer, I went on an amazing trip to Hawaii with my family. We spent two weeks exploring the islands and enjoying the beautiful beaches and scenery. Some of the highlights of the trip included hiking to the top of a volcano, swimming with dolphins, and trying all kinds of delicious Hawaiian food. It was truly an unforgettable experience!',
        'time': '2022-04-30 10:30:00',
        'image': '',
        'comments': '303',
        'likes':'153',
        'tags': '吐槽爆料',
        'comments_data': [],
      },
      {
        'title': 'The Alchemist',
        'name': 'Alexander Lee',
        'text': 'One of my favorite books is "The Alchemist" by Paulo Coelho. This book is a beautiful and inspiring tale about following your dreams and discovering your purpose in life. It reminds us that the universe conspires to help us achieve our goals, and all we need is the courage to pursue them. Highly recommended!',
        'time': '2022-05-02 12:30:00',
        'comments': '127',
        'likes':'245',
        'tags': '嘻哈',
        'image': 'assets/userinfo/post/post2.jpg',
        'comments_data': [],
      },
      {
        'title': '1984',
        'name': 'Alexander Lee',
        'text': 'Another one of my favorite books is "1984" by George Orwell. This dystopian novel portrays a chilling vision of a totalitarian future, where individual freedom and free thought are suppressed. It is a warning against the dangers of authoritarianism and a call for vigilance against the erosion of our basic human rights. A must-read!',
        'time': '2022-04-28 19:00:00',
        'comments': '521',
        'likes':'347',
        'tags': '日常生活',
        'image': 'assets/userinfo/post/post3.jpg',
        'comments_data': [],
      },
      {
        'title': 'The Brothers Karamazov',
        'name': 'Alexander Lee',
        'text': 'One of the greatest novels ever written is "The Brothers Karamazov" by Fyodor Dostoevsky. This masterpiece explores deep philosophical and religious themes through the story of three brothers and their father. It raises important questions about morality, free will, and the nature of God. It is a challenging but rewarding read!',
        'time': '2022-04-11 11:00:00',
        'comments': '456',
        'likes':'289',
        'tags': '时事新闻',
        'image': 'assets/userinfo/post/post4.jpg',
        'comments_data': [],
      },
      {
        'title': "The Hitchhiker's Guide to the Galaxy",
        'name': 'Alexander Lee',
      'text': 'One of the funniest and most imaginative books I have ever read is "The Hitchhiker‘s Guide to the Galaxy" by Douglas Adams. This science fiction classic follows the misadventures of Arthur Dent, a hapless human who finds himself on a cosmic journey through space and time. It is a hilarious and clever satire of modern society and a celebration of the absurd. Highly recommended!',
      'time': '2022-04-08 18:30:00',
        'comments': '712',
        'likes':'431',
        'tags': '创作分析',
        'image': 'assets/userinfo/post/post5.jpg',
        'comments_data': [],
      },
      {
        'title': 'The Road',
        'name': 'Alexander Lee',
        'text': 'One of the most powerful and haunting books I have ever read is "The Road" by Cormac McCarthy. This post-apocalyptic novel tells the story of a father and son who are journeying through a devastated and dangerous world. It is a harrowing exploration of love, survival, and the human spirit in the face of overwhelming adversity. A must-read!',
        'time': '2022-04-05 13:15:00',
        'comments': '358',
        'likes':'245',
        'tags': '实习',
        'image': 'assets/userinfo/post/post6.jpg',
        'comments_data': [],
      },
      {
        'title': 'The Diary of a Young Girl',
        'name': 'Alexander Lee',
        'text': 'One of the most moving and inspiring books I have ever read is "The Diary of a Young Girl" by Anne Frank. This memoir tells the story of a young Jewish girl who is hiding with her family from the Nazis during World War II. It is a testament to the resilience and strength of the human spirit in the face of unimaginable cruelty and suffering. A must-read!',
        'time': '2022-04-01 09:00:00',
        'comments': '921',
        'likes':'632',
        'tags': '家教',
        'image': 'assets/userinfo/post/post7.jpg',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': 'My Trip to Hawaii',
        'name': 'Alexander Lee',
        'text': 'Last summer, I went on an amazing trip to Hawaii with my family. We spent two weeks exploring the islands and enjoying the beautiful beaches and scenery. Some of the highlights of the trip included hiking to the top of a volcano, swimming with dolphins, and trying all kinds of delicious Hawaiian food. It was truly an unforgettable experience!',
        'time': '2022-04-30 10:30:00',
        'comments': '303',
        'likes':'153',
        'tags': '吐槽爆料',
        'image': 'assets/userinfo/post/post1.jpg',
        'comments_data': [],
      },
      {
        'title': 'The Catcher in the Rye',
        'name': 'Isabella Turner',
        'text':'哥们大雾其中没带计算器，纯手算，考了88',
        'time': '2023-5-10 9:41',
        'comments': '456',
        'likes':'278',
        'tags': '吐槽爆料',
        'image': 'assets/userinfo/post/post37.jpg',
        'comments_data': [],
      },
    ]
  },
  { 'name': 'Isabella Turner',
    'age': '23',
    'sex': 'female',
    'fans':'2048',
    'following': '34',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background2.jpg',
    'avatar': 'assets/userinfo/avatar2.jpg',
    'email': 'isabella@google.com',
    'phone':'555-123-4567',
    'intro': 'I come from a family of artists, and I have always loved expressing myself through dance. ',
    'post': [
      {
        'title': 'The Catcher in the Rye',
        'name': 'Isabella Turner',
        'text':'哥们大雾其中没带计算器，纯手算，考了88',
        'time': '2023-5-10 9:41',
        'comments': '456',
        'likes':'278',
        'tags': '吐槽爆料',
        'image': 'assets/userinfo/post/post37.jpg',
        'comments_data': [],
      },
      {
        'title': 'The Catcher in the Rye',
        'name': 'Isabella Turner',
        'text': 'One of the most thought-provoking books I have ever read is "The Catcher in the Rye" by J.D. Salinger. This coming-of-age novel follows the experiences of Holden Caulfield, a disillusioned teenager who is struggling to find his place in the world. It raises important questions about identity, conformity, and the meaning of life. A classic!',
        'time': '2022-04-26 10:15:00',
        'comments': '456',
        'likes':'278',
        'tags': '情感',
        'image': 'assets/userinfo/post/post37.jpg',
        'comments_data': [],
      },
      {
        'title': 'The Great Gatsby',
        'name': 'Isabella Turner',
        'text': 'Another one of my favorite novels is "The Great Gatsby" by F. Scott Fitzgerald. Set in the roaring twenties, this book is a tragic tale of love, greed, and ambition. It offers a vivid portrait of the Jazz Age and explores themes such as social class, identity, and the American Dream. A timeless masterpiece!',
        'time': '2022-04-23 16:45:00',
        'comments': '654',
        'likes':'409',
        'tags': '游戏娱乐',
        'image': 'assets/userinfo/post/post32.jpg',
        'comments_data': [],
      },
      {
        'title': 'Pride and Prejudice',
        'name': 'Isabella Turner',
        'text': 'One of the greatest love stories ever written is "Pride and Prejudice" by Jane Austen. This classic novel tells the story of Elizabeth Bennet, a strong-willed and independent young woman, and Mr. Darcy, a wealthy and proud gentleman. It is a witty and charming tale about the complexities of romance and the importance of overcoming our prejudices. A timeless classic!',
        'time': '2022-04-19 09:30:00',
        'comments': '789',
        'likes':'521',
        'tags': '游戏娱乐',
        'image': 'assets/userinfo/post/post15.jpg',
        'comments_data': [],
      },
      {
        'title': 'The Lord of the Rings',
        'name': 'Isabella Turner',
        'text': 'One of the most epic and captivating stories ever written is "The Lord of the Rings" by J.R.R. Tolkien. This fantasy trilogy takes us on a journey through Middle-earth, where we encounter a cast of unforgettable characters, including hobbits, elves, dwarves, wizards, and orcs. It is a timeless tale of adventure, friendship, and the fight against evil. A must-read!',
        'time': '2022-04-15 14:20:00',
        'comments': '874',
        'likes':'632',
        'tags': '校内兼职',
        'image': 'assets/userinfo/post/post17.jpg',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '小黑子之新时代的粉丝',
        'name': '赵娣-Ikun',
        'text': '真服了，小黑子那么多，黑的不够啊？？搞笑',
        'time': '2023-05-03 15:00:00',
        'comments': '20',
        'likes':'50',
        'tags': '吐槽爆料',
        'image': 'assets/userinfo/post/post57.jpg',
        'comments_data': [],
      },
      {
        'title': '积极思考的力量',
        'name': '赵娣-Ikun',
        'text': '积极思考的力量是巨大的。无论在何种情况下，积极的思考都能够帮助我们更好地应对生活中的挑战和困难。当我们面对失败和挫折时，消极的想法会让我们陷入绝望，而积极的思考则能够激发我们的动力和勇气，让我们重新振作起来。此外，积极的思考还能够带来更多的机会和好运，因为它能够让我们更加敏锐地察觉周围的积极因素和机遇，从而抓住每一个机会。所以，让我们从现在开始，始终保持积极的思考方式，让它成为我们成功的助力。',
        'time': '2023-05-03 15:00:00',
        'comments': '20',
        'likes':'50',
        'tags': '校内兼职',
        'image': 'assets/userinfo/post/post42.jpg',
        'comments_data': [],
      },
    ]
  },
  { 'name': '赵娣-Ikun',
    'sex':'male',
    'age': '21',
    'fans':'1020',
    'following': '55',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background3.jpg',
    'avatar': 'assets/userinfo/avatar3.jpg',
    'email': 'zhaodi123@qq.com',
    'phone':'123-1233-192',
    'intro': '哈喽，我喜欢中分头，喜欢穿背带裤，会唱 跳 rap，还会唱《鸡你太美》。大三，来自浙江台州，热爱生活与编程，是个有趣的人',
    'post': [
      {
        'title': '小黑子之新时代的IKUN',
        'name': '赵娣-Ikun',
        'text': '真服了，小黑子那么多，黑的不够啊？？搞笑',
        'time': '2023-05-03 15:00:00',
        'comments': '20',
        'likes':'50',
        'tags': '吐槽爆料',
        'image': 'assets/userinfo/post/post57.jpg',
        'comments_data': [],
      },
      {
        'title': '积极思考的力量',
        'name': '赵娣-Ikun',
        'text': '积极思考的力量是巨大的。无论在何种情况下，积极的思考都能够帮助我们更好地应对生活中的挑战和困难。当我们面对失败和挫折时，消极的想法会让我们陷入绝望，而积极的思考则能够激发我们的动力和勇气，让我们重新振作起来。此外，积极的思考还能够带来更多的机会和好运，因为它能够让我们更加敏锐地察觉周围的积极因素和机遇，从而抓住每一个机会。所以，让我们从现在开始，始终保持积极的思考方式，让它成为我们成功的助力。',
        'time': '2023-05-03 15:00:00',
        'comments': '20',
        'likes': '50',
        'tags': '校内兼职',
        'image': 'assets/userinfo/post/post42.jpg',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'name': '晚风',
        'text': '昨晚梦到crush了 她好可爱呜呜 还梦到好朋友 发生了一个特别幸福的小事 梦到结束的时候也很恰当',
        'time': '2023-4-31 9:12',
        'comments': '0',
        'likes': '4',
        'tags': '身边趣事',
        'image': 'assets/userinfo/post/post74.jpg',
        'comments_data': [],
      },
      {
        'title': '有效的时间管理',
        'name': '凤城玫瑰',
        'text': '时间是有限的资源，有效的时间管理是非常重要的。在日常生活中，我们需要合理规划时间，合理安排工作和休息时间，以充分利用时间。一些有效的时间管理技巧包括制定计划、设置优先级、避免拖延、减少干扰等。当我们能够有效地管理时间时，我们会感到更加充实和满足，同时也能够提高我们的工作效率和生产力。',
        'time': '2023-05-03 16:00:00',
        'comments': '5',
        'likes':'20',
        'tags': '日常生活',
        'image': 'assets/userinfo/post/post29.jpg',
        'comments_data': [],
      },
    ]
  },
  { 'name': '凤城玫瑰',
    'sex':'female',
    'age': '19',
    'fans':'3',
    'following': '12',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background5.jpg',
    'avatar': 'assets/userinfo/avatar5.jpg',
    'email': 'wangwu@163.com',
    'phone':'135-7924-680',
    'intro': '喜欢看剧、玩游戏、打羽毛球，工作中主要负责机器人控制软件的开发和优化。',
    'post' : [
      {
        'title': '有效的时间管理',
        'name': '凤城玫瑰',
        'text': '时间是有限的资源，有效的时间管理是非常重要的。在日常生活中，我们需要合理规划时间，合理安排工作和休息时间，以充分利用时间。一些有效的时间管理技巧包括制定计划、设置优先级、避免拖延、减少干扰等。当我们能够有效地管理时间时，我们会感到更加充实和满足，同时也能够提高我们的工作效率和生产力。',
        'time': '2023-05-03 16:00:00',
        'comments': '5',
        'likes':'20',
        'image': 'assets/userinfo/post/post29.jpg',
        'tags': '日常生活',
        'comments_data': [],
      },
      {
        'title': '如何自律',
        'name': '凤城玫瑰',
        'text': '自律是成功的关键，它可以帮助我们追求更高的目标和更好的未来。想要自律，需要制定明确的计划和目标，并坚持执行。此外，培养良好的习惯、保持健康的生活方式也是非常重要的。所以，要成为一个自律的人，需要付出不懈的努力。',
        'time': '2022-01-01 09:00:00',
        'comments': '127',
        'likes': '345',
        'image': 'assets/userinfo/post/post28.jpg',
        'tags': '学业疑难',
        'comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '团队合作的重要性',
        'name': '还在想他',
        'text': '团队合作是任何组织或企业成功的关键之一。一个高效的团队能够将个人的优势转化为整体的优势，实现更高效的工作和更好的业绩。在团队中，每个成员都应该承担自己的责任，并且积极参与到团队的工作中来。此外，团队合作还能够增加成员之间的沟通和信任，减少误解和矛盾。当我们面对困难和挑战时，团队的支持和协作也能够帮助我们克服困难，取得成功。所以，无论在哪个领域，团队合作都是非常重要的。',
        'time': '2023-05-03 15:30:00',
        'comments': '10',
        'likes':'30',
        'image': 'assets/userinfo/post/post20.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      },
    ]
  },
  { 'name': '还在想他',
    'sex':'female',
    'age': '20',
    'fans':'6',
    'following': '51',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background6.jpg',
    'avatar': 'assets/userinfo/avatar6.jpg',
    'email': 'renxiaogu408@google.com',
    'phone':'139-5762-920',
    'intro': '喜欢听音乐，尤其是流行歌曲，最近开始学习钢琴和吉他，对编程也有浓厚的兴趣。',
    'post' : [
      {
        'title': '团队合作的重要性',
        'name': '还在想他',
        'text': '团队合作是任何组织或企业成功的关键之一。一个高效的团队能够将个人的优势转化为整体的优势，实现更高效的工作和更好的业绩。在团队中，每个成员都应该承担自己的责任，并且积极参与到团队的工作中来。此外，团队合作还能够增加成员之间的沟通和信任，减少误解和矛盾。当我们面对困难和挑战时，团队的支持和协作也能够帮助我们克服困难，取得成功。所以，无论在哪个领域，团队合作都是非常重要的。',
        'time': '2023-05-03 15:30:00',
        'comments': '10',
        'likes':'30',
        'image': 'assets/userinfo/post/post20.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      },
      {
        'title': '学生社团举办音乐会',
        'name': '还在想他',
        'text': '本周末，学生社团将举办一场音乐会，展示各种音乐风格和才华。这是一次难得的机会，让大家欣赏到不同的音乐表演和享受音乐的美好。欢迎所有人前来观看。',
        'time': '2022-05-06 19:00:00',
        'comments': '301',
        'likes': '789',
        'image': 'assets/userinfo/post/post29.jpg',
        'tags': '时事新闻',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '学生论坛讨论未来的职业选择',
        'name': '向山而去',
        'text': '学生论坛将在本周五举行，主题是“未来的职业选择”。我们邀请了多位职业人士来分享他们的经验和建议，并且提供了互动环节，让学生们有机会提问和交流。欢迎所有学生参加。',
        'time': '2022-04-08 18:30:00',
        'comments': '203',
        'likes': '567',
        'image': 'assets/userinfo/post/post42.jpg',
        'tags': '学业疑难',
        'comments_data': [],
      },
      {
        'title': '团队合作的重要性',
        'name': '还在想他',
        'text': '团队合作是任何组织或企业成功的关键之一。一个高效的团队能够将个人的优势转化为整体的优势，实现更高效的工作和更好的业绩。在团队中，每个成员都应该承担自己的责任，并且积极参与到团队的工作中来。此外，团队合作还能够增加成员之间的沟通和信任，减少误解和矛盾。当我们面对困难和挑战时，团队的支持和协作也能够帮助我们克服困难，取得成功。所以，无论在哪个领域，团队合作都是非常重要的。',
        'time': '2023-05-03 15:30:00',
        'comments': '10',
        'likes':'30',
        'image': 'assets/userinfo/post/post20.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      },
    ]
  },
  { 'name': '向山而去',
    'sex':'female',
    'age': '22',
    'fans':'0',
    'following': '3',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background7.jpg',
    'avatar': 'assets/userinfo/avatar7.jpg',
    'email': 'yepingchun@sina.com',
    'phone':'150-3456-788',
    'intro': '专注于物联网领域，研究智能家居、智能医疗等方面的技术，业余爱好是旅游和摄影。',
    'post' : [
      {
        'title': '学生论坛讨论未来的职业选择',
        'name': '向山而去',
        'text': '学生论坛将在本周五举行，主题是“未来的职业选择”。我们邀请了多位职业人士来分享他们的经验和建议，并且提供了互动环节，让学生们有机会提问和交流。欢迎所有学生参加。',
        'time': '2022-04-08 18:30:00',
        'comments': '203',
        'likes': '567',
        'image': 'assets/userinfo/post/post42.jpg',
        'tags': '学业疑难',
        'comments_data': [],
      }
    ],
    'likes': [
      {
        'title': 'My Favorite Book',
        'name': 'Emily Brown',
        'text': 'One of my all-time favorite books is "To Kill a Mockingbird" by Harper Lee. I first read it in high school, and it has stayed with me ever since. The book tells a powerful story about justice, prejudice, and the importance of standing up for what is right, even when it is difficult. I highly recommend it to anyone who hasn\'t read it yet!',
        'time': '2022-05-01 14:45:00',
        'comments': '542',
        'likes':'387',
        'image': 'assets/userinfo/post/post27.jpg',
        'tags': '日常生活',
        'comments_data': [],
      },
    ]
  },
  { 'name': 'Emily Brown',
    'age': '27',
    'sex': 'male',
    'fans': '931',
    'following': '22',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background8.jpg',
    'avatar': 'assets/userinfo/avatar8.jpg',
    'email': 'emily@google.com',
    'phone': '555-123-4567',
    'intro': 'My passion is photography and capturing beautiful moments in life. I come from a small town in the Midwest where I discovered my love for this art.',
    'post': [
      {
        'title': 'My Favorite Book',
        'name': 'Emily Brown',
        'text': 'One of my all-time favorite books is "To Kill a Mockingbird" by Harper Lee. I first read it in high school, and it has stayed with me ever since. The book tells a powerful story about justice, prejudice, and the importance of standing up for what is right, even when it is difficult. I highly recommend it to anyone who hasn\'t read it yet!',
        'time': '2022-05-01 14:45:00',
        'comments': '542',
        'likes':'387',
        'image': 'assets/userinfo/post/post27.jpg',
        'tags': '日常生活',
        'comments_data': [],
      },
      {
        'title': 'The Name of the Wind',
        'name': 'Emily Brown',
        'text': 'One of the most engaging and thrilling books I have ever read is "The Name of the Wind" by Patrick Rothfuss. This fantasy novel tells the story of a legendary wizard named Kvothe, who recounts his life story to a scribe. It is a beautifully written and intricately crafted tale of magic, adventure, and romance. The world-building is exceptional, and the characters are unforgettable. A must-read for fans of fantasy!',
        'time': '2022-03-28 15:40:00',
        'comments': '542',
        'likes':'387',
        'image': 'assets/userinfo/post/post31.jpg',
        'tags': '日常生活',
        'comments_data': [],
      },
      {
        'title': '1984',
        'name': 'Emily Brown',
        'text': 'One of the most important and prophetic books ever written is "1984" by George Orwell. This dystopian novel depicts a totalitarian society where individuality and free thought are forbidden. It is a warning about the dangers of authoritarianism and the importance of defending our fundamental freedoms. A must-read for anyone concerned about the state of our world!',
        'time': '2022-03-25 10:20:00',
        'comments': '987',
        'likes':'702',
        'image': 'assets/userinfo/post/post43.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '校园绿化活动开展',
        'name': '皮卡丘',
        'text': '为了美化校园环境，学校开展了一次校园绿化活动，由志愿者和学生一同参与。他们在校园内植树、种花、修剪草坪等，为学校增添了生机和美丽。感谢所有参与者的努力。',
        'time': '2022-05-15 09:00:00',
        'comments': '178',
        'likes': '456',
        'image': 'assets/userinfo/post/post54.jpg',
        'tags': '时事新闻',
        'comments_data': [],
      },
    ]
  },
  { 'name': '皮卡丘',
    'sex':'male',
    'age': '24',
    'fans':'19',
    'following': '33',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background9.jpg',
    'avatar': 'assets/userinfo/avatar9.jpg',
    'email': 'lisi@sina.com',
    'phone':'178-2947-1101',
    'intro': '挑战自己挑战极限，这就是我生活的状态，目前在一家初创公司担任技术负责人，业余时间喜欢写一些小工具，做一些小项目。',
    'post' : [
      {
        'title': '校园绿化活动开展',
        'name': '皮卡丘',
        'text': '为了美化校园环境，学校开展了一次校园绿化活动，由志愿者和学生一同参与。他们在校园内植树、种花、修剪草坪等，为学校增添了生机和美丽。感谢所有参与者的努力。',
        'time': '2022-05-15 09:00:00',
        'comments': '178',
        'likes': '456',
        'image': 'assets/userinfo/post/post54.jpg',
        'tags': '时事新闻',
        'comments_data': [],
      },
      {
        'title': '校友讲座：如何打造个人品牌',
        'name': '皮卡丘',
        'text': '本周，学校邀请了一位校友来分享如何打造个人品牌。他分享了自己的经验和技巧，以及如何在职场中脱颖而出。学生们在听取他的演讲后受益匪浅。',
        'time': '2022-05-20 15:00:00',
        'comments': '224',
        'likes': '789',
        'image': 'assets/userinfo/post/post58.jpg',
        'tags': '时事新闻',
        'comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '学校举办首届创业大赛',
        'name': '唐知慧',
        'text': '为鼓励学生积极创新和创业，学校将举办首届创业大赛。比赛将由学校校友和企业家组成的评委团评选，提供奖金和支持给获奖的创业团队。此外，学校还将为参赛者提供相关培训和咨询服务，帮助他们在比赛中表现更好。我们希望通过这个平台，鼓励更多的学生参与到创业和创新中来。',
        'time': '2022-10-10 14:20:00',
        'comments': '78',
        'likes': '321',
        'image': 'assets/userinfo/post/post36.jpg',
        'tags': '嘻哈',
        'comments_data': [],
      }
    ]
  },
  { 'name': '唐知慧',
    'sex':'female',
    'age': '19',
    'fans':'12490',
    'following': '23',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background10.jpg',
    'avatar': 'assets/userinfo/avatar10.jpg',
    'email': 'wangqi@qq.com',
    'phone':'136-7892-576',
    'intro': '阅读是我生活的一大乐趣，尤其喜欢读一些哲学和人生经验的书籍，同时也热衷于思考和探讨生命的意义和价值。',
    'post' : [
      {
        'title': '学校举办首届创业大赛',
        'name': '唐知慧',
        'text': '为鼓励学生积极创新和创业，学校将举办首届创业大赛。比赛将由学校校友和企业家组成的评委团评选，提供奖金和支持给获奖的创业团队。此外，学校还将为参赛者提供相关培训和咨询服务，帮助他们在比赛中表现更好。我们希望通过这个平台，鼓励更多的学生参与到创业和创新中来。',
        'time': '2022-10-10 14:20:00',
        'comments': '78',
        'likes': '321',
        'image': 'assets/userinfo/post/post36.jpg',
        'tags': '嘻哈',
        'comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '学生组织汉语角活动',
        'name': '雪山',
        'text': '为了促进外国留学生的汉语交流和学习，学生组织了一次汉语角活动。他们与外国留学生进行了交流和讨论，分享了中华文化和中国风俗习惯，让外国留学生更好地融入中国社会。',
        'time': '2022-05-28 19:00:00',
        'comments': '256',
        'likes': '678',
        'image': 'assets/userinfo/post/post33.jpg',
        'tags': '嘻哈',
        'comments_data': [],
      },
    ]
  },
  { 'name': '雪山',
    'sex':'male',
    'age': '22',
    'fans':'0',
    'following': '13',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background11.jpg',
    'avatar': 'assets/userinfo/avatar11.jpg',
    'email': 'zhaoliu@google.com',
    'phone':'189-3456-7890',
    'intro': '嘿嘿，爱好广泛，尤其是喜欢挑战自己，常常会参加各种体验活动和比赛，如攀岩、漂流、马拉松等。',
    'post' : [
      {
        'title': '学生组织汉语角活动',
        'name': '雪山',
        'text': '为了促进外国留学生的汉语交流和学习，学生组织了一次汉语角活动。他们与外国留学生进行了交流和讨论，分享了中华文化和中国风俗习惯，让外国留学生更好地融入中国社会。',
        'time': '2022-05-28 19:00:00',
        'comments': '256',
        'likes': '678',
        'image': 'assets/userinfo/post/post33.jpg',
        'tags': '嘻哈',
        'comments_data': [],
      },
      {
        'title': '校园图书馆增加自习室数量',
        'name': '雪山',
        'text': '为了更好地服务学生，校园图书馆增加了自习室数量。新的自习室位于图书馆三楼，提供了更加宽敞、安静的学习环境。此外，为了方便学生，图书馆还增加了电源插座和免费无线网络，使学生可以更加舒适地学习和研究。',
        'time': '2022-09-03 15:45:00',
        'comments': '55',
        'likes': '189',
        'image': 'assets/userinfo/post/post48.jpg',
        'tags': '实习',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '学校举办校园文化艺术节',
        'name': '迪迦~！',
        'text': '本周，学校将举办校园文化艺术节，包括音乐、舞蹈、戏剧等多种形式的表演。所有学生都可以参加，并且有机会展示自己的才艺。欢迎大家前来观看。',
        'time': '2022-06-02 18:30:00',
        'comments': '301',
        'likes': '890',
        'image': 'assets/userinfo/post/post40.jpg',
        'tags': '游戏娱乐',
        'comments_data': [],
      },
    ]
  },
  { 'name': '迪迦~！',
    'sex':'male',
    'age': '23',
    'fans':'0',
    'following': '2',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background12.jpg',
    'avatar': 'assets/userinfo/avatar12.jpg',
    'email': 'sunyi@163.com',
    'phone':'139-0987-6543',
    'intro': '目前在一家互联网公司担任产品经理，对用户需求和市场趋势有着敏锐的洞察力和把控能力。',
    'post' : [
      {
        'title': '学校举办校园文化艺术节',
        'name': '迪迦~！',
        'text': '本周，学校将举办校园文化艺术节，包括音乐、舞蹈、戏剧等多种形式的表演。所有学生都可以参加，并且有机会展示自己的才艺。欢迎大家前来观看。',
        'time': '2022-06-02 18:30:00',
        'comments': '301',
        'likes': '890',
        'image': 'assets/userinfo/post/post40.jpg',
        'tags': '游戏娱乐',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': 'The Great Gatsby',
        'name': 'Benjamin Green',
        'text': 'One of the greatest American novels of all time is "The Great Gatsby" by F. Scott Fitzgerald. This classic tale of wealth, power, and the American Dream is set in the Roaring Twenties and features a cast of unforgettable characters, including the enigmatic Jay Gatsby and the cynical narrator Nick Carraway. It is a timeless portrait of a bygone era and a cautionary tale about the dangers of excess and obsession. A must-read!',
        'time': '2022-03-14 09:45:00',
        'comments': '998',
        'likes':'721',
        'image': 'assets/userinfo/post/post35.jpg',
        'tags': '情感',
        'comments_data': [],
      },
    ]
  },
  { 'name': 'Benjamin Green',
    'age': '33',
    'sex': 'male',
    'fans':'211',
    'following': '45',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background13.jpg',
    'avatar': 'assets/userinfo/avatar13.jpg',
    'email': 'benjamin@google.com',
    'phone':'555-987-6543',
    'intro': 'Growing up, I always loved to read and write. I come from a family of writers, and I am continuing that tradition by pursuing my dream of becoming a published author.',
    'post': [
      {
        'title': 'The Catcher in the Rye',
        'name': 'Benjamin Green',
        'text': 'One of the most influential and controversial books of the 20th century is "The Catcher in the Rye" by J.D. Salinger. This novel follows the adventures of Holden Caulfield, a disaffected teenager who is struggling to find his place in the world. It is a powerful exploration of teenage angst, alienation, and the search for authenticity. A must-read for anyone who has ever felt lost or misunderstood!',
        'time': '2022-03-18 16:15:00',
        'comments': '786',
        'likes':'512',
        'image': 'assets/userinfo/post/post49.jpg',
        'tags': '家教',
        'comments_data': [],
      },
      {
        'title': 'The Great Gatsby',
        'name': 'Benjamin Green',
        'text': 'One of the greatest American novels of all time is "The Great Gatsby" by F. Scott Fitzgerald. This classic tale of wealth, power, and the American Dream is set in the Roaring Twenties and features a cast of unforgettable characters, including the enigmatic Jay Gatsby and the cynical narrator Nick Carraway. It is a timeless portrait of a bygone era and a cautionary tale about the dangers of excess and obsession. A must-read!',
        'time': '2022-03-14 09:45:00',
        'comments': '998',
        'likes':'721',
        'image': 'assets/userinfo/post/post35.jpg',
        'tags': '情感',
        'comments_data': [],
      },
      {
        'title': 'Slaughterhouse-Five',
        'name': 'Benjamin Green',
        'text': 'One of the most profound and poignant anti-war novels ever written is "Slaughterhouse-Five" by Kurt Vonnegut. This book follows the experiences of Billy Pilgrim, a soldier who becomes unstuck in time and travels to different moments in his life, including the firebombing of Dresden during World War II. It is a haunting and unforgettable meditation on the futility and horror of war, and the resilience of the human spirit. A must-read!',
        'time': '2022-03-07 14:30:00',
        'comments': '879',
        'likes':'632',
        'image': 'assets/userinfo/post/post27.jpg',
        'tags': '情感',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '学生会举办新生见面会',
        'name': '田曲文',
        'text': '为欢迎新生入学，学生会将在8月31日下午2点举办新生见面会。届时学生会将介绍学校的各项服务和社团活动，帮助新生快速适应大学生活。同时，还将邀请一些校友和知名企业家分享他们的大学经历和成功经验。我们期待着新生的加入，并为他们提供支持和帮助。',
        'time': '2022-08-25 10:30:00',
        'comments': '102',
        'likes': '265',
        'image': 'assets/userinfo/post/post46.jpg',
        'tags': '创作分析',
        'comments_data': [],
      },
    ]
  },
  { 'name': '田曲文',
    'sex':'male',
    'age': '24',
    'fans':'460',
    'following': '21',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background14.jpg',
    'avatar': 'assets/userinfo/avatar14.jpg',
    'email': 'zhoujiu@163.com', 'phone':'186-9876-5432',
    'intro': '已毕业的学长一枚~喜欢研究前沿科技，对量子计算、区块链等领域有着深入的研究，同时也是一名游戏迷。',
    'post' : [
      {
        'title': '学生会举办新生见面会',
        'name': '田曲文',
        'text': '为欢迎新生入学，学生会将在8月31日下午2点举办新生见面会。届时学生会将介绍学校的各项服务和社团活动，帮助新生快速适应大学生活。同时，还将邀请一些校友和知名企业家分享他们的大学经历和成功经验。我们期待着新生的加入，并为他们提供支持和帮助。',
        'time': '2022-08-25 10:30:00',
        'comments': '102',
        'likes': '265',
        'image': 'assets/userinfo/post/post46.jpg',
        'tags': '创作分析',
        'comments_data': [],
      },
      {
        'title': '学校举办首届创业大赛',
        'name': '田曲文',
        'text': '为鼓励学生积极创新和创业，学校将举办首届创业大赛。比赛将由学校校友和企业家组成的评委团评选，提供奖金和支持给获奖的创业团队。此外，学校还将为参赛者提供相关培训和咨询服务，帮助他们在比赛中表现更好。我们希望通过这个平台，鼓励更多的学生参与到创业和创新中来。',
        'time': '2022-10-10 14:20:00',
        'comments': '78',
        'likes': '321',
        'image': 'assets/userinfo/post/post24.jpg',
        'tags': '创作分析',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '学习笔记分享会在图书馆成功举办',
        'name': '顾春英',
        'text': '5月1日，由学生会主办的学习笔记分享会在学校图书馆举行。本次活动旨在鼓励同学们相互学习，分享学习笔记，提高学习效率。活动分为三个环节，第一个环节是主题演讲，由学长学姐分享自己的学习方法和经验；第二个环节是自由分享，同学们可以结合自己的专业知识和学习经验进行分享；第三个环节是集体讨论，同学们可以对分享的内容进行提问和交流。活动现场气氛热烈，同学们积极参与，分享了自己的学习心得和笔记，不少同学表示受益匪浅。',
        'time': '2023-05-01 15:00:00',
        'comments': '36',
        'likes': '128',
        'image': 'assets/userinfo/post/post29.jpg',
        'tags': '游戏娱乐',
        'comments_data': [],
      },
    ]
  },
  { 'name': '顾春英',
    'sex':'female',
    'age': '21',
    'fans':'24957',
    'following': '49',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background15.jpg',
    'avatar': 'assets/userinfo/avatar15.jpg',
    'email': 'qianqi@163.com', 
    'phone':'136-4567-8901',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'post' : [
      {
        'title': '学习笔记分享会在图书馆成功举办',
        'name': '顾春英',
        'text': '5月1日，由学生会主办的学习笔记分享会在学校图书馆举行。本次活动旨在鼓励同学们相互学习，分享学习笔记，提高学习效率。活动分为三个环节，第一个环节是主题演讲，由学长学姐分享自己的学习方法和经验；第二个环节是自由分享，同学们可以结合自己的专业知识和学习经验进行分享；第三个环节是集体讨论，同学们可以对分享的内容进行提问和交流。活动现场气氛热烈，同学们积极参与，分享了自己的学习心得和笔记，不少同学表示受益匪浅。',
        'time': '2023-05-01 15:00:00',
        'comments': '36',
        'likes': '128',
        'image': 'assets/userinfo/post/post29.jpg',
        'tags': '游戏娱乐',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '参加校外实习的注意事项',
        'name': '冉忆敏',
        'text': '参加校外实习是大学生活的重要组成部分，对于学生的专业学习和职业发展具有重要意义。参加校外实习需要注意以下几点：1. 安全第一，遵守相关规定；2. 提前准备好所需材料；3. 充分了解实习单位和岗位信息；4. 认真学习实习相关知识和技能。希望能对你有所帮助',
        'time': '2022-7-31 22:31',
        'comments': '124',
        'likes': '3002',
        'image': 'assets/userinfo/post/post20.jpg',
        'tags': '实习',
        'comments_data': [],
      },
    ]
  },
  { 'name': '冉忆敏',
    'sex':'male',
    'age': '23',
    'fans':'1',
    'following': '9',
    'school': '浙江科技学院',
    'background': 'assets/userinfo/background16.jpg',
    'avatar': 'assets/userinfo/avatar16.jpg',
    'email': 'yanger@sina.com', 'phone':'139-7890-1234',
    'intro': '喜欢体育运动，尤其喜欢足球和篮球，经常会和朋友们一起踢球或打球。',
    'post' : [
      {
        'title': '参加校外实习的注意事项',
        'name': '冉忆敏',
        'text': '参加校外实习是大学生活的重要组成部分，对于学生的专业学习和职业发展具有重要意义。参加校外实习需要注意以下几点：1. 安全第一，遵守相关规定；2. 提前准备好所需材料；3. 充分了解实习单位和岗位信息；4. 认真学习实习相关知识和技能。希望能对你有所帮助',
        'time': '2022-7-31 22:31',
        'comments': '124',
        'likes': '3002',
        'image': 'assets/userinfo/post/post20.jpg',
        'tags': '实习',
        'comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '学校图书馆推出新的自助借还机',
        'name': '李石田',
        'text': '为提高学生借书的效率和方便程度，学校图书馆推出新的自助借还机。学生只需用学生卡刷一下机器，就可以自动借还图书。此外，新机器还可以查询图书信息和预订座位。希望学生们可以更加便捷地利用图书馆资源。',
        'time': '2022-11-01 09:10:00',
        'comments': '34',
        'likes': '189',
        'image': 'assets/userinfo/post/post44.jpg',
        'tags': '校内兼职',
        'comments_data': [],
      }
    ]
  },
  { 'name': '李石田',
    'sex':'男',
    'age': '30',
    'fans':'3',
    'following': '17','school': '浙江科技学院',
    'background': 'assets/userinfo/background17.jpg',
    'avatar': 'assets/userinfo/avatar17.jpg',
    'email': 'john@126.com', 'phone':'108-4298-091',
    'intro': '高级程序员，目前在阿里工作了7年，薪资百万，想进大厂？ 关注并私信我哦~',
    'post' : [
      {
        'title': '学校图书馆推出新的自助借还机','name': '李石田',
        'text': '为提高学生借书的效率和方便程度，学校图书馆推出新的自助借还机。学生只需用学生卡刷一下机器，就可以自动借还图书。此外，新机器还可以查询图书信息和预订座位。希望学生们可以更加便捷地利用图书馆资源。',
        'time': '2022-11-01 09:10:00',
        'comments': '34',
        'likes': '189',
        'image': 'assets/userinfo/post/post44.jpg',
        'tags': '校内兼职','comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '2023考研报名已经开始','name': '韩寒安',
        'text': '2023年全国硕士研究生招生考试报名已经开始，截止日期为9月15日。考生需认真阅读招生简章，按要求填写报名信息。同时，需要准备好各项资料，包括身份证、学历证书、毕业证书、成绩单等，保证填写的信息真实有效。祝愿大家考试顺利。',
        'time': '2023-08-01 09:00:00',
        'comments': '209',
        'likes': '784',
        'image': 'assets/userinfo/post/post40.jpg',
        'tags': '情感','comments_data': [],
      },
    ]
  },
  { 'name': '韩寒安',
    'sex':'male',
    'age': '21',
    'fans':'0',
    'following': '3','school': '浙江科技学院',
    'background': 'assets/userinfo/background18.jpg',
    'avatar': 'assets/userinfo/avatar18.jpg',
    'email': 'wuwu@126.com',
    'phone':'150-0987-6543',
    'intro': '热爱旅行，曾经背包旅行过多个国家，对各地的文化和美食都有着深入的了解和体验。',
    'post' : [
      {
        'title': '2023考研报名已经开始','name': '韩寒安',
        'text': '2023年全国硕士研究生招生考试报名已经开始，截止日期为9月15日。考生需认真阅读招生简章，按要求填写报名信息。同时，需要准备好各项资料，包括身份证、学历证书、毕业证书、成绩单等，保证填写的信息真实有效。祝愿大家考试顺利。',
        'time': '2023-08-01 09:00:00',
        'comments': '209',
        'likes': '784',
        'image': 'assets/userinfo/post/post40.jpg',
        'tags': '情感','comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '如何在学习中提高英语听力技能？','name': '黎明至暗',
        'text': '英语听力是学习英语的重要组成部分，但很多同学在学习过程中遇到了困难。为此，我们整理了一些提高英语听力技能的方法，包括多听、多练、背景知识预习等，希望可以帮助同学们更好地掌握英语听力。',
        'time': '2023-01-20 11:00:00',
        'comments': '56',
        'likes': '289',
        'image': 'assets/userinfo/post/post41.jpg',
        'tags': '家教','comments_data': [],
      }
    ]
  },
  { 'name': '黎明至暗',
    'sex':'female',
    'age': '33',
    'fans':'2',
    'following': '8','school': '浙江科技学院',
    'background': 'assets/userinfo/background19.jpg',
    'avatar': 'assets/userinfo/avatar19.jpg',
    'email': 'zhengba@sina.com',
    'phone':'139-7654-3210',
    'intro': '喜欢收集邮票和硬币，对历史和文化有着浓厚的兴趣，也经常会参加相关的文化活动和展览。',
    'post' : [
      {
        'title': '如何在学习中提高英语听力技能？','name': '黎明至暗',
        'text': '英语听力是学习英语的重要组成部分，但很多同学在学习过程中遇到了困难。为此，我们整理了一些提高英语听力技能的方法，包括多听、多练、背景知识预习等，希望可以帮助同学们更好地掌握英语听力。',
        'time': '2023-01-20 11:00:00',
        'comments': '56',
        'likes': '289',
        'image': 'assets/userinfo/post/post41.jpg',
        'tags': '家教','comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '如何有效地学习外语？','name': '史紫安',
        'text': '学习外语是很多人的愿望，但很多人在学习外语时却遇到了各种困难。为了帮助大家更好地学习外语，我们整理了以下几个建议。首先，建立良好的学习习惯，如每天定时学习、做好笔记、复习等。其次，多听、多说、多读、多写，提高语言输入和输出能力。再次，了解外语文化，从文化中学习语言，可以帮助学习者更好地理解和运用语言。最后，可以使用各种学习工具，如语音软件、阅读材料、语言学习网站等。只要坚持不懈地学习，相信大家一定能够学好外语。',
        'time': '2023-05-03 15:30:00',
        'comments': '43',
        'likes': '298',
        'image': 'assets/userinfo/post/post39.jpg',
        'tags': '校内兼职','comments_data': [],
      }
    ]
  },
  { 'name': '史紫安',
    'sex':'female',
    'age': '26',
    'fans':'9',
    'following': '7','school': '浙江科技学院',
    'background': 'assets/userinfo/background20.jpg',
    'avatar': 'assets/userinfo/avatar20.jpg',
    'email': 'huangsan@qq.com',
    'phone':'186-1234-5678',
    'intro': '热爱音乐，会弹吉他和钢琴，也喜欢唱歌，常常会在朋友圈分享自己的演奏和歌唱视频。',
    'post' : [
      {
        'title': '如何有效地学习外语？','name': '史紫安',
        'text': '学习外语是很多人的愿望，但很多人在学习外语时却遇到了各种困难。为了帮助大家更好地学习外语，我们整理了以下几个建议。首先，建立良好的学习习惯，如每天定时学习、做好笔记、复习等。其次，多听、多说、多读、多写，提高语言输入和输出能力。再次，了解外语文化，从文化中学习语言，可以帮助学习者更好地理解和运用语言。最后，可以使用各种学习工具，如语音软件、阅读材料、语言学习网站等。只要坚持不懈地学习，相信大家一定能够学好外语。',
        'time': '2023-05-03 15:30:00',
        'comments': '43',
        'likes': '298',
        'image': 'assets/userinfo/post/post39.jpg',
        'tags': '校内兼职','comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '做最好的自己','name': '七里香',
        'text': '最做好的自己，是为了能够通过一些措施，更好的安排自己的时间，调整和自身的生活和工作状态，开发自身的潜能，这是一整套系统的工程，而且是要由里到外，并且可执行的措施。能够总结出如何做最好的自己的人，至少本身是一个成功人士，不然没有办法为人师，即使为人师也没有说服力。而李开复博士就非常符合这个要求。李开复老师的履历就不一一细表了，实在没有听说过你可以去问度娘了，他写的《做最好的自己》这本书就阐述了如何能够整个系统化的把个人状态调整到最好，也就是如何成功。这里的成功不是指仅仅用金钱来衡量，而是做最好的自己，也就是不断超越自己，发挥自己的兴趣和特长，从而发掘出自己的潜力，主动选择适合自己的道路。如果能做到这样的成功，物质上的财富也会伴随产生的。成功的前提是建立在正确的价值观上。一个人价值观不正确，无论怎么努力，都会距离成功走偏，因为价值观是知道所有态度和行为的根本因素。而在正确的价值观背后，有六种人生态度对渴求成功的人来说最重要，分别是积极，同理心，自信，自省，勇气，胸怀。而只有人生态度还不行，还要有行为方式来承载价值观和人生态度，这样才能逐渐改变人生，不然就只停留在空想中。所以相对应的六种最基本的行为方式是寻求理想，发现兴趣，有效执行，努力学习，人机交流，合作沟通。如果按照这样的逻辑细化，就构成这样完整的一个成功同心圆。',
        'time': '2022-03-22 13:30:00',
        'comments': '654',
        'likes':'489',
        'image': 'assets/userinfo/post/post36.jpg',
        'tags': '嘻哈','comments_data': [],
      },
    ]
  },
  { 'name': '七里香',
    'sex':'female',
    'age': '25',
    'fans':'83',
    'following': '19','school': '浙江科技学院',
    'background': 'assets/userinfo/background21.jpg',
    'avatar': 'assets/userinfo/avatar21.jpg',
    'email': 'zhangqi@qq.com',
    'phone':'139-8765-4321',
    'intro': '喜欢宠物，有一只猫和一只狗，常常会在社交媒体上分享自己和宠物的生活点滴。',
    'post' : [
      {
        'title': '做最好的自己','name': '七里香',
        'text': '最做好的自己，是为了能够通过一些措施，更好的安排自己的时间，调整和自身的生活和工作状态，开发自身的潜能，这是一整套系统的工程，而且是要由里到外，并且可执行的措施。能够总结出如何做最好的自己的人，至少本身是一个成功人士，不然没有办法为人师，即使为人师也没有说服力。而李开复博士就非常符合这个要求。李开复老师的履历就不一一细表了，实在没有听说过你可以去问度娘了，他写的《做最好的自己》这本书就阐述了如何能够整个系统化的把个人状态调整到最好，也就是如何成功。这里的成功不是指仅仅用金钱来衡量，而是做最好的自己，也就是不断超越自己，发挥自己的兴趣和特长，从而发掘出自己的潜力，主动选择适合自己的道路。如果能做到这样的成功，物质上的财富也会伴随产生的。成功的前提是建立在正确的价值观上。一个人价值观不正确，无论怎么努力，都会距离成功走偏，因为价值观是知道所有态度和行为的根本因素。而在正确的价值观背后，有六种人生态度对渴求成功的人来说最重要，分别是积极，同理心，自信，自省，勇气，胸怀。而只有人生态度还不行，还要有行为方式来承载价值观和人生态度，这样才能逐渐改变人生，不然就只停留在空想中。所以相对应的六种最基本的行为方式是寻求理想，发现兴趣，有效执行，努力学习，人机交流，合作沟通。如果按照这样的逻辑细化，就构成这样完整的一个成功同心圆。',
        'time': '2022-03-22 13:30:00',
        'comments': '654',
        'likes':'489',
        'image': 'assets/userinfo/post/post36.jpg',
        'tags': '嘻哈','comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '学生会举办“文艺汇演”活动','name': '幸松月',
        'text': '为丰富同学们的课余生活，学生会将在学校举办“文艺汇演”活动。活动将包括歌曲演唱、舞蹈表演、相声小品等多种节目形式，展现同学们的才艺和风采。此外，活动还设置了抽奖和小游戏环节，增加互动和趣味性。欢迎同学们前来观看和参与。',
        'time': '2022-12-05 19:30:00',
        'comments': '123',
        'likes': '450',
        'image': 'assets/userinfo/post/post37.jpg',
        'tags': '情感'
      }
    ]
  },
  { 'name': '幸松月',
    'sex':'female',
    'age': '22',
    'fans':'109',
    'following': '26','school': '浙江科技学院',
    'background': 'assets/userinfo/background22.jpg',
    'avatar': 'assets/userinfo/avatar22.jpg',
    'email': 'liuwu@qq.com',
    'phone':'136-7890-2345',
    'intro': '热爱自然，喜欢探索自然和保护环境，经常会参加户外探险和环保活动。',
    'post' : [
      {
        'title': '学生会举办“文艺汇演”活动','name': '幸松月',
        'text': '为丰富同学们的课余生活，学生会将在学校举办“文艺汇演”活动。活动将包括歌曲演唱、舞蹈表演、相声小品等多种节目形式，展现同学们的才艺和风采。此外，活动还设置了抽奖和小游戏环节，增加互动和趣味性。欢迎同学们前来观看和参与。',
        'time': '2022-12-05 19:30:00',
        'comments': '123',
        'likes': '450',
        'image': 'assets/userinfo/post/post37.jpg',
        'tags': '情感','comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '学习小技巧：如何高效记忆英语单词','name': '习睿瑶',
        'text': '英语单词是学习英语的重要基础，但记忆单词常常是一个棘手的问题。下面介绍几个高效记忆英语单词的方法：1. 使用联想记忆法；2. 创造一个有趣的故事来记忆单词；3. 利用语境记忆。希望这些方法能够帮助大家更加轻松地记忆英语单词。',
        'time': '2022-10-20 15:45:00',
        'comments': '402',
        'likes': '1203',
        'image': 'assets/userinfo/post/post53.jpg',
        'tags': '吐槽爆料','comments_data': [],
      },
    ]
  },
  { 'name': '习睿瑶',
    'sex':'female',
    'age': '20',
    'fans':'0',
    'following': '1','school': '浙江科技学院',
    'background': 'assets/userinfo/background23.jpg',
    'avatar': 'assets/userinfo/avatar23.jpg',
    'email': 'sunjiu@qq.com',
    'phone':'150-8765-4321',
    'intro': '喜欢烹饪，擅长中式菜肴和西式烘焙，经常会在家中做出各种美食招待朋友。',
    'post': [
      {
        'title': '学习小技巧：如何高效记忆英语单词','name': '习睿瑶',
        'text': '英语单词是学习英语的重要基础，但记忆单词常常是一个棘手的问题。下面介绍几个高效记忆英语单词的方法：1. 使用联想记忆法；2. 创造一个有趣的故事来记忆单词；3. 利用语境记忆。希望这些方法能够帮助大家更加轻松地记忆英语单词。',
        'time': '2022-10-20 15:45:00',
        'comments': '402',
        'likes': '1203',
        'image': 'assets/userinfo/post/post53.jpg',
        'tags': '吐槽爆料','comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '学生会举办公益活动','name': '周三',
        'text': '学生会将于11月20日举办公益活动，为当地的贫困儿童送去温暖和关爱。学生会成员将会和志愿者们一起为孩子们准备礼物、食品和学习用品，帮助他们度过一个愉快的周末。此外，学生会还将为孩子们准备丰富的温馨晚餐。希望这能为他们带来更多的社会关注度，让更多的人认识他们、帮助他们。',
        'time': '2021-09-08 9:43',
        'comments': '984',
        'likes': '19462',
        'image': 'assets/userinfo/post/post50.jpg',
        'tags': '日常生活','comments_data': [],
      }
    ]
  },
  { 'name': '周三',
    'sex':'male',
    'age': '22',
    'fans':'0',
    'following': '1','school': '浙江科技学院',
    'background': 'assets/userinfo/background24.jpg',
    'avatar': 'assets/userinfo/avatar24.jpg',
    'email': 'zhousan@qq.com',
    'phone':'189-1234-5678',
    'intro': '沉迷于阅读科幻小说和漫画，对未来和科技充满好奇和探索欲。',
    'post': [
      {
        'title': '学生会举办公益活动','name': '周三',
        'text': '学生会将于11月20日举办公益活动，为当地的贫困儿童送去温暖和关爱。学生会成员将会和志愿者们一起为孩子们准备礼物、食品和学习用品，帮助他们度过一个愉快的周末。此外，学生会还将为孩子们准备丰富的温馨晚餐。希望这能为他们带来更多的社会关注度，让更多的人认识他们、帮助他们。',
        'time': '2021-09-08 9:43',
        'comments': '984',
        'likes': '19462',
        'image': 'assets/userinfo/post/post50.jpg',
        'tags': '日常生活','comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '校园招聘会即将举行','name': '庄尤莲',
        'text': '为帮助即将毕业的学生顺利就业，学校将举办校园招聘会。招聘会将邀请多家知名企业和机构到校招聘，并提供多种职位和岗位选择。同时，我们还将为学生提供求职指导和面试技巧培训，以帮助他们更好地应对就业挑战。我们希望通过这个平台，为学生和企业搭建起良好的交流和合作平台。',
        'time': '2022-11-01 10:00:00',
        'comments': '89',
        'likes': '422',
        'image': 'assets/userinfo/post/post60.jpg',
        'tags': '家教','comments_data': [],
      },
    ]
  },
  { 'name': '庄尤莲',
    'sex':'female',
    'age': '19',
    'fans':'40',
    'following': '109','school': '浙江科技学院',
    'background': 'assets/userinfo/background25.jpg',
    'avatar': 'assets/userinfo/avatar25.jpg',
    'email': 'qianjiu@qq.com',
    'phone':'136-7654-3210',
    'intro': '健身和跑步是我的长项，经常会去健身房或户外跑步，保持健康的体魄。',
    'post': [
      {
        'title': '校园招聘会即将举行','name': '庄尤莲',
        'text': '为帮助即将毕业的学生顺利就业，学校将举办校园招聘会。招聘会将邀请多家知名企业和机构到校招聘，并提供多种职位和岗位选择。同时，我们还将为学生提供求职指导和面试技巧培训，以帮助他们更好地应对就业挑战。我们希望通过这个平台，为学生和企业搭建起良好的交流和合作平台。',
        'time': '2022-11-01 10:00:00',
        'comments': '89',
        'likes': '422',
        'image': 'assets/userinfo/post/post60.jpg',
        'tags': '家教','comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '文化节即将开始','name': '卓方玉',
        'text': '学校将在10月初举行一年一度的文化节活动，各社团和学生组织将进行展示和表演，以展示学校的多元文化。届时还将有美食节和手工艺品展销活动，让学生们能够享受美食和艺术的双重盛宴。',
        'time': '2022-09-28 15:00:00',
        'comments': '81',
        'likes': '301',
        'image': 'assets/userinfo/post/post10.jpg',
        'tags': '家教','comments_data': [],
      },
      {
        'title': '人生的成长与反思',
        'name': 'Aaron',
        'text': '人生是一段成长的旅程，让我们分享自己在人生中的成长和反思，一起探索人生的意义和价值。',
        'time': '2023-05-26 13:15:00',
        'comments': '81',
        'likes': '653',
        'image': 'assets/userinfo/post/post87.jpg',
        'tags': '日常生活',
        'comments_data': []
      }
    ]
  },
  { 'name': '卓方玉',
    'sex':'female',
    'age': '19',
    'fans':'85',
    'following': '254','school': '浙江科技学院',
    'background': 'assets/userinfo/background26.jpg',
    'avatar': 'assets/userinfo/avatar26.jpg',
    'email': 'yangliu@163.com',
    'phone':'150-7890-1234',
    'intro': '喜欢手工制作，擅长编织和手工皮具制作，经常会制作出各种漂亮的手工作品。',
    'post': [
      {
        'title': '文化节即将开始','name': '卓方玉',
        'text': '学校将在10月初举行一年一度的文化节活动，各社团和学生组织将进行展示和表演，以展示学校的多元文化。届时还将有美食节和手工艺品展销活动，让学生们能够享受美食和艺术的双重盛宴。',
        'time': '2022-09-28 15:00:00',
        'comments': '81',
        'likes': '301',
        'image': 'assets/userinfo/post/post10.jpg',
        'tags': '家教','comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '新冠疫苗接种已经全面推行','name': 'Oliver Smith',
        'text': '为了应对新冠疫情，我国疫苗接种已经全面推行。接种疫苗是防止疫情传播和保障个人健康的重要手段，希望广大群众积极参与。',
        'time': '2023-04-28 09:30:00',
        'comments': '256',
        'likes': '1379',
        'image': 'assets/userinfo/post/post11.jpg',
        'tags': '家教','comments_data': [],
      }
    ]
  },
  { 'name': 'Hannah John',
    'age': '20',
    'sex':'male',
    'fans':'3',
    'following': '417','school': '浙江科技学院',
    'background': 'assets/userinfo/background27.jpg',
    'avatar': 'assets/userinfo/avatar27.jpg',
    'email': 'hannah@google.com',
    'phone':'555-555-1212',
    'intro': 'I am an avid runner and love participating in marathons. Age is just a number, and I plan to keep running for many more years to come.',
    'post': [
      {
        'title': '毕业生招聘会举行','name': 'Hannah Johnson',
        'text': '学校将于本月底举办毕业生招聘会，各知名企业和机构将派出代表前来招聘。希望毕业生们能够抓住机会，获得满意的就业机会。',
        'time': '2022-10-30 10:00:00',
        'comments': '132',
        'likes': '423',
        'image': 'assets/userinfo/post/post12.jpg',
        'tags': '家教','comments_data': [],
      },
    ],
    'likes': [
      {
        'title': '新冠疫苗接种已经全面推行','name': 'Oliver Smith',
        'text': '为了应对新冠疫情，我国疫苗接种已经全面推行。接种疫苗是防止疫情传播和保障个人健康的重要手段，希望广大群众积极参与。',
        'time': '2023-04-28 09:30:00',
        'comments': '256',
        'likes': '1379',
        'image': 'assets/userinfo/post/post11.jpg',
        'tags': '家教','comments_data': [],
      }
    ]
  },
  { 'name': 'Oliver Smith',
    'age': '21',
    'sex':'male',
    'fans':'0',
    'following': '215','school': '浙江科技学院',
    'background': 'assets/userinfo/background28.jpg',
    'avatar': 'assets/userinfo/avatar28.jpg',
    'email': 'oliver@google.com',
    'phone':'555-555-5555',
    'intro': 'I come from a family of engineers, and it was only natural for me to follow in their footsteps. I am passionate about technology and enjoy exploring the latest advancements.',
    'post': [
      {
        'title': '新冠疫苗接种已经全面推行','name': 'Oliver Smith',
        'text': '为了应对新冠疫情，我国疫苗接种已经全面推行。接种疫苗是防止疫情传播和保障个人健康的重要手段，希望广大群众积极参与。',
        'time': '2023-04-28 09:30:00',
        'comments': '256',
        'likes': '1379',
        'image': 'assets/userinfo/post/post11.jpg',
        'tags': '家教','comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '考研报名人数再创新高','name': 'Sophia Rodriguez',
        'text': '随着大学毕业生人数的增加，今年考研报名人数再次创下新高，竞争也越来越激烈。希望考生们把握好时间，认真备考，争取取得优异的成绩。',
        'time': '2023-04-25 12:15:00',
        'comments': '176',
        'likes': '943',
        'image': 'assets/userinfo/post/post14.jpg',
        'tags': '家教','comments_data': [],
      }
    ]
  },
  { 'name': 'Sophia Rodriguez',
    'age': '22',
    'sex':'female',
    'fans':'43',
    'following': '325','school': '浙江科技学院',
    'background': 'assets/userinfo/background29.jpg',
    'avatar': 'assets/userinfo/avatar29.jpg',
    'email': 'sophia@google.com',
    'phone':'555-123-4567',
    'intro': 'I come from a family of artists, and I have always loved expressing myself through painting. Age is just a number, and I plan to continue exploring this passion for many years to come.',
    'post': [
      {
        'title': '考研报名人数再创新高','name': 'Sophia Rodriguez',
        'text': '随着大学毕业生人数的增加，今年考研报名人数再次创下新高，竞争也越来越激烈。希望考生们把握好时间，认真备考，争取取得优异的成绩。',
        'time': '2023-04-25 12:15:00',
        'comments': '176',
        'likes': '943',
        'image': 'assets/userinfo/post/post14.jpg',
        'tags': '家教','comments_data': [],
      }
    ],
    'likes': [
      {
        'title': '考研报名人数再创新高','name': 'Sophia Rodriguez',
        'text': '随着大学毕业生人数的增加，今年考研报名人数再次创下新高，竞争也越来越激烈。希望考生们把握好时间，认真备考，争取取得优异的成绩。',
        'time': '2023-04-25 12:15:00',
        'comments': '176',
        'likes': '943',
        'image': 'assets/userinfo/post/post14.jpg',
        'tags': '家教','comments_data': [],
      },
      {
        'title': '人生的成长与反思',
        'name': 'Aaron',
        'text': '人生是一段成长的旅程，让我们分享自己在人生中的成长和反思，一起探索人生的意义和价值。',
        'time': '2023-05-26 13:15:00',
        'comments': '81',
        'likes': '653',
        'image': 'assets/userinfo/post/post87.jpg',
        'tags': '日常生活',
        'comments_data': []
      }
    ]
  },
  { 'name': 'William Davis',
    'age': '21',
    'sex':'male',
    'fans':'8',
    'following': '3','school': '浙江科技学院',
    'background': 'assets/userinfo/background30.jpg',
    'avatar': 'assets/userinfo/avatar30.jpg',
    'email': 'william@google.com',
    'phone':'555-987-6543',
    'intro': 'I come from a small town in the South where hunting and fishing were a way of life. I enjoy spending my weekends in the great outdoors, and I always come back with a great catch.',
    'post': [
      {
        'title': '海外留学的注意事项','name': 'William Davis',
        'text': '出国留学需要考虑很多问题，比如签证、住宿、交通、语言等。建议有意出国留学的学生提前做好准备，提前了解目的地国家的文化和风俗，以免出现不必要的麻烦。',
        'time': '2023-04-23 11:30:00',
        'comments': '312',
        'likes': '1978',
        'image': 'assets/userinfo/post/post15.jpg',
        'tags': '家教','comments_data': [],
      }
    ],
    'likes': [
      {
        'title': 'The Alchemist','name': 'John Doe',
        'text': 'One of my favorite books is "The Alchemist" by Paulo Coelho. This book is a beautiful and inspiring tale about following your dreams and discovering your purpose in life. It reminds us that the universe conspires to help us achieve our goals, and all we need is the courage to pursue them. Highly recommended!',
        'time': '2022-05-02 12:30:00',
        'comments': '127',
        'likes':'245',
        'image': '',
        'tags': '吐槽爆料','comments_data': [],
      },
      {
        'title': 'To Kill a Mockingbird','name': 'John Doe',
        'text': 'To Kill a Mockingbird by Harper Lee is a powerful and thought-provoking novel about racial injustice and the loss of innocence. Set in the 1930s in the deep south of the United States, it tells the story of a young girl named Scout and her experiences of growing up in a society plagued by prejudice and hate. This book is a must-read for anyone interested in understanding the complexities of race relations in America.',
        'time': '2022-05-05 14:20:00',
        'comments': '87',
        'likes':'327',
        'image': 'assets/userinfo/post/post75.jpg',
        'tags': '吐槽爆料','comments_data': [],
      },
    ]
  },
  {
    'avatar': 'assets/userinfo/avatar31.jpg',
    'name': 'John',
    'sex': 'male',
    'fans': '21',
    'following': '12',
    'background': 'assets/userinfo/background31.jpg',
    'school': '浙江科技学院',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'age': 25,
    'post' : [
      {
        'title': '校园生活中的友谊与成长',
        'name': 'John',
        'text': '在校园生活中，友谊和成长是不可或缺的。与同学们一起度过的时光，我们互相支持和成长，建立了深厚的友谊。',
        'time': '2023-05-15 14:20:00',
        'comments': '68',
        'likes': '562',
        'image': 'assets/userinfo/post/post91.jpg',
        'tags': '日常生活',
        'comments_data': []
      }
    ],
    'likes':[
      {
        'title': '海外留学的注意事项','name': 'William Davis',
        'text': '出国留学需要考虑很多问题，比如签证、住宿、交通、语言等。建议有意出国留学的学生提前做好准备，提前了解目的地国家的文化和风俗，以免出现不必要的麻烦。',
        'time': '2023-04-23 11:30:00',
        'comments': '312',
        'likes': '1978',
        'image': 'assets/userinfo/post/post15.jpg',
        'tags': '家教','comments_data': [],
      }
    ]
  },
  {
    'avatar': 'assets/userinfo/avatar32.jpg',
    'name': 'Daniel',
    'sex': 'male',
    'fans': '4',
    'following': '24',
    'background': 'assets/userinfo/background32.jpg',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'school': '浙江科技学院',
    'age': 30,
    'post' : [
      {
        'title': '学习方法与技巧分享',
        'name': 'Daniel',
        'text': '学习是人生中不可或缺的一部分，分享学习方法和技巧可以帮助他人更高效地学习。让我们一起探讨学习的乐趣和技巧。',
        'time': '2023-05-18 11:45:00',
        'comments': '128',
        'likes': '987',
        'image': 'assets/userinfo/post/post72.jpg',
        'tags': '学业疑难',
        'comments_data': []
      }
    ],
    'likes':[
      {
        'title': '校园生活中的友谊与成长',
        'name': 'John',
        'text': '在校园生活中，友谊和成长是不可或缺的。与同学们一起度过的时光，我们互相支持和成长，建立了深厚的友谊。',
        'time': '2023-05-15 14:20:00',
        'comments': '68',
        'likes': '562',
        'image': 'assets/userinfo/post/post91.jpg',
        'tags': '日常生活',
        'comments_data': []
      }
    ]
  },
  {
    'avatar': 'assets/userinfo/avatar33.jpg',
    'name': 'Ava Wilson',
    'sex': 'female',
    'fans': '0',
    'following': '3',
    'background': 'assets/userinfo/background33.jpg',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'school': '浙江科技学院',
    'age':19,
    'post' : [
      {
        'title': '校园恋爱的甜蜜与挑战',
        'name': 'Ava Wilson',
        'text': '校园是爱情的温床，校园恋爱经历中充满了甜蜜和挑战。让我们分享校园恋爱的故事和经验，一起谱写青春的浪漫。',
        'time': '2023-05-20 16:10:00',
        'comments': '92',
        'likes': '742',
        'image': 'assets/userinfo/post/post63.jpg',
        'tags': '情感',
        'comments_data': []
      }
    ],
    'likes':[
      {
        'title': '学习方法与技巧分享',
        'name': 'Daniel',
        'text': '学习是人生中不可或缺的一部分，分享学习方法和技巧可以帮助他人更高效地学习。让我们一起探讨学习的乐趣和技巧。',
        'time': '2023-05-18 11:45:00',
        'comments': '128',
        'likes': '987',
        'image': 'assets/userinfo/post/post72.jpg',
        'tags': '学业疑难',
        'comments_data': []
      },
      {
        'title': '人生的成长与反思',
        'name': 'Aaron',
        'text': '人生是一段成长的旅程，让我们分享自己在人生中的成长和反思，一起探索人生的意义和价值。',
        'time': '2023-05-26 13:15:00',
        'comments': '81',
        'likes': '653',
        'image': 'assets/userinfo/post/post87.jpg',
        'tags': '日常生活',
        'comments_data': []
      }
    ]
  },
  {
    'avatar': 'assets/userinfo/avatar34.jpg',
    'name': 'Liam Harris',
    'sex': 'female',
    'fans': '78',
    'following': '49',
    'background': 'assets/userinfo/background34.jpg',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'school': '浙江科技学院',
    'post' : [
      {
        'title': '追求梦想的道路',
        'name': 'Liam Harris',
        'text': '人生中，每个人都有自己的梦想。让我们一起分享追求梦想的艰辛和奋斗的故事，激励彼此勇往直前。',
        'time': '2023-05-22 09:55:00',
        'comments': '75',
        'likes': '619',
        'image': 'assets/userinfo/post/post84.jpg',
        'tags': '学业疑难',
        'comments_data': []
      }
    ],
    'likes':[
      {
        'title': '校园恋爱的甜蜜与挑战',
        'name': 'Ava Wilson',
        'text': '校园是爱情的温床，校园恋爱经历中充满了甜蜜和挑战。让我们分享校园恋爱的故事和经验，一起谱写青春的浪漫。',
        'time': '2023-05-20 16:10:00',
        'comments': '92',
        'likes': '742',
        'image': 'assets/userinfo/post/post63.jpg',
        'tags': '情感',
        'comments_data': []
      }
    ]
  },
  {
    'avatar': 'assets/userinfo/avatar35.jpg',
    'name': 'Thompson',
    'sex': 'male',
    'fans': '0',
    'following': '9',
    'background': 'assets/userinfo/background35.jpg',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'school': '浙江科技学院',
    'post' : [
      {
        'title': '校园生活中的精彩时刻',
        'name': 'Thompson',
        'text': '校园生活是我们宝贵的回忆，让我们分享校园生活中的精彩时刻，回顾那些难忘的瞬间，共同感受青春的活力。',
        'time': '2023-05-24 15:30:00',
        'comments': '43',
        'likes': '390',
        'image': 'assets/userinfo/post/post5.jpg',
        'tags': '时事新闻',
        'comments_data': []
      }
    ],
    'likes':[
      {
        'title': '追求梦想的道路',
        'name': 'Liam Harris',
        'text': '人生中，每个人都有自己的梦想。让我们一起分享追求梦想的艰辛和奋斗的故事，激励彼此勇往直前。',
        'time': '2023-05-22 09:55:00',
        'comments': '75',
        'likes': '619',
        'image': 'assets/userinfo/post/post84.jpg',
        'tags': '学业疑难',
        'comments_data': []
      }
    ]
  },
  {
    'avatar': 'assets/userinfo/avatar36.jpg',
    'name': 'James',
    'sex': 'male',
    'fans': '4',
    'following': '34',
    'background': 'assets/userinfo/background36.jpg',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'school': '浙江科技学院',
    'post' : [
      {
        'title': '学生兼职社团的文化交流',
        'name': 'Sophia Lee',
        'text': '学生兼职社团是丰富校园文化的重要力量。让我们分享学生社团的文化交流活动，一起感受多元文化的魅力。',
        'time': '2023-05-25 10:20:00',
        'comments': '56',
        'likes': '432',
        'image': 'assets/userinfo/post/post76.jpg',
        'tags': '校内兼职',
        'comments_data': []
      }
    ],
    'likes':[
      {
        'title': '校园生活中的精彩时刻',
        'name': 'Thompson',
        'text': '校园生活是我们宝贵的回忆，让我们分享校园生活中的精彩时刻，回顾那些难忘的瞬间，共同感受青春的活力。',
        'time': '2023-05-24 15:30:00',
        'comments': '43',
        'likes': '390',
        'image': 'assets/userinfo/post/post5.jpg',
        'tags': '时事新闻',
        'comments_data': []
      }
    ]
  },
  {
    'avatar': 'assets/userinfo/avatar37.jpg',
    'name': 'Aaron',
    'sex': 'male',
    'fans': '142',
    'following': '6',
    'background': 'assets/userinfo/background37.jpg',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'school': '浙江科技学院',
    'post' : [
      {
        'title': '人生的成长与反思',
        'name': 'Aaron',
        'text': '人生是一段成长的旅程，让我们分享自己在人生中的成长和反思，一起探索人生的意义和价值。',
        'time': '2023-05-26 13:15:00',
        'comments': '81',
        'likes': '653',
        'image': 'assets/userinfo/post/post87.jpg',
        'tags': '日常生活',
        'comments_data': []
      }
    ],
    'likes':[
      {
        'title': '学生兼职社团的文化交流',
        'name': 'Sophia Lee',
        'text': '学生兼职社团是丰富校园文化的重要力量。让我们分享学生社团的文化交流活动，一起感受多元文化的魅力。',
        'time': '2023-05-25 10:20:00',
        'comments': '56',
        'likes': '432',
        'image': 'assets/userinfo/post/post76.jpg',
        'tags': '校内兼职',
        'comments_data': []
      },
      {
        'title': '大学生活中的奇葩事',
        'name': 'Hank',
        'text': '大学生活充满了奇葩事情，让我们来一起吐槽一下那些令人啼笑皆非的经历，放松心情，释放压力。',
        'time': '2023-06-02 09:20:00',
        'comments': '128',
        'likes': '960',
        'image': 'assets/userinfo/post/post90.jpg',
        'tags': '吐槽爆料',
        'comments_data': []
      }
    ]
  },
  {
    'avatar': 'assets/userinfo/avatar38.jpg',
    'name': 'Edison',
    'sex': 'female',
    'fans': '214',
    'following': '13',
    'background': 'assets/userinfo/background38.jpg',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'school': '浙江科技学院',
    'post' : [
      {
        'title': '生活中的小确幸',
        'name': 'Edison',
        'text': '生活中有许多小确幸，让我们分享那些让我们开心的小事，感受生活的美好和快乐。',
        'time': '2023-05-30 11:50:00',
        'comments': '97',
        'likes': '785',
        'image': 'assets/userinfo/post/post59.jpg',
        'tags': '身边趣事',
        'comments_data': []
      }
    ],
    'likes':[
      {
        'title': '人生的成长与反思',
        'name': 'Aaron',
        'text': '人生是一段成长的旅程，让我们分享自己在人生中的成长和反思，一起探索人生的意义和价值。',
        'time': '2023-05-26 13:15:00',
        'comments': '81',
        'likes': '653',
        'image': 'assets/userinfo/post/post87.jpg',
        'tags': '日常生活',
        'comments_data': []
      }
    ]
  },
  {
    'avatar': 'assets/userinfo/avatar39.jpg',
    'name': 'Hank',
    'sex': 'male',
    'fans': '26',
    'following': '53',
    'background': 'assets/userinfo/background39.jpg',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'school': '浙江科技学院',
    'post' : [
      {
        'title': '大学生活中的奇葩事',
        'name': 'Hank',
        'text': '大学生活充满了奇葩事情，让我们来一起吐槽一下那些令人啼笑皆非的经历，放松心情，释放压力。',
        'time': '2023-06-02 09:20:00',
        'comments': '128',
        'likes': '960',
        'image': 'assets/userinfo/post/post90.jpg',
        'tags': '吐槽爆料',
        'comments_data': []
      }
    ],
    'likes':[
      {
        'title': '生活中的小确幸',
        'name': 'Edison',
        'text': '生活中有许多小确幸，让我们分享那些让我们开心的小事，感受生活的美好和快乐。',
        'time': '2023-05-30 11:50:00',
        'comments': '97',
        'likes': '785',
        'image': 'assets/userinfo/post/post59.jpg',
        'tags': '身边趣事',
        'comments_data': []
      }
    ]
  },
  {
    'name': 'John Doe',
    'home': 'New York,USA',
    'status': 'Flutter Developer',
    'age': '29',
    'sex':'male',
    'fans':'229',
    'school': '浙江科技学院',
    'following': '121',
    'background': 'assets/admin/background.jpg',
    'avatar': 'assets/admin/admin.jpg',
    'email': 'admin@google.com',
    'phone':'111-777-5555',
    'intro': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod felis quis sapien malesuada, a interdum est posuere. Sed auctor quis elit at vestibulum. Maecenas quis sodales enim, ac posuere elit. Sed euismod risus eu risus elementum vestibulum. Sed dictum odio id tellus gravida varius. Etiam pellentesque facilisis metus, vel sodales odio iaculis nec. Sed in velit eget velit varius faucibus. Ut vitae nisl ac risus consectetur blandit.',
    'post': [
      {
        'title': 'The Alchemist','name': 'John Doe',
        'text': 'One of my favorite books is "The Alchemist" by Paulo Coelho. This book is a beautiful and inspiring tale about following your dreams and discovering your purpose in life. It reminds us that the universe conspires to help us achieve our goals, and all we need is the courage to pursue them. Highly recommended!',
        'time': '2022-05-02 12:30:00',
        'comments': '127',
        'likes':'245',
        'tags': '吐槽爆料',
        'image': '',
        'comments_data': [],
      },
      {
        'title': 'To Kill a Mockingbird','name': 'John Doe',
        'text': 'To Kill a Mockingbird by Harper Lee is a powerful and thought-provoking novel about racial injustice and the loss of innocence. Set in the 1930s in the deep south of the United States, it tells the story of a young girl named Scout and her experiences of growing up in a society plagued by prejudice and hate. This book is a must-read for anyone interested in understanding the complexities of race relations in America.',
        'time': '2022-05-05 14:20:00',
        'comments': '87',
        'likes':'327',
        'image': 'assets/userinfo/post/post75.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      },
      {
        'title': 'The Great Gatsby','name': 'John Doe',
        'text': 'The Great Gatsby by F. Scott Fitzgerald is a classic American novel that explores themes of love, wealth, and the corruption of the American Dream. Set in the 1920s, it tells the story of Jay Gatsby, a wealthy man who is trying to win back the love of his life. This book is a masterpiece of modern literature and a must-read for anyone interested in the culture and history of the roaring twenties.',
        'time': '2022-05-03 10:45:00',
        'comments': '212',
        'likes':'452',
        'image': 'assets/userinfo/post/post85.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      },
      {
        'title': 'The Catcher in the Rye','name': 'John Doe',
        'text': 'The Catcher in the Rye by J.D. Salinger is a coming-of-age novel that tells the story of Holden Caulfield, a teenage boy who is struggling to find his place in the world. Set in the 1950s, it is a timeless classic that explores themes of teenage angst, alienation, and the search for meaning and purpose in life. This book is a must-read for anyone who has ever felt lost or confused in their journey through adolescence.',
        'time': '2022-05-01 08:15:00',
        'comments': '173',
        'likes':'387',
        'image': 'assets/userinfo/post/post37.jpg',
        'tags': '吐槽爆料',
        'comments_data': [],
      }
    ],
    'likes': [
      {
        'title': 'The Catcher in the Rye',
        'text':'哥们大雾其中没带计算器，纯手算，考了88',
        'name': 'Isabella Turner',
        'time': '2023-5-10 9:41',
        'comments': '456',
        'likes':'278',
        'tags': '吐槽爆料',
        'image': 'assets/userinfo/post/post37.jpg',
        'comments_data': [],
      },
      {
        'title': '留学咨询会即将举行','name': '晚风',
        'text': '为帮助有志于出国留学的学生更好地了解留学事宜，学校将举办留学咨询会。咨询会将邀请多名留学专家和校友分享他们的留学经验和心得，同时还将介绍各类留学项目和申请流程。',
        'time': '2022-10-05 13:30:00',
        'comments': '68',
        'likes': '311',
        'image': 'assets/userinfo/post/post15.jpg',
        'tags': '学业疑难',
        'comments_data': [],
      },
      {
        'title': '小黑子之新时代的IKUN','name': '赵娣-Ikun',
        'text': '真服了，小黑子那么多，黑的不够啊？？搞笑',
        'time': '2023-05-03 15:00:00',
        'tags': '吐槽爆料',
        'comments': '20',
        'likes':'50',
        'image': 'assets/userinfo/post/post57.jpg',
        'comments_data': [],
      },
    ],
    'followingList': [
      'Alexander Lee',
      '晚风',
      '凤城玫瑰',
      '向山而去',
      '皮卡丘',
      '唐知慧',
      '雪山',
      '迪迦~！',
      'Benjamin Green',
      '韩寒安',
      '黎明至暗',
      '史紫安',
    ],
    'followerList': [
      'Benjamin Green',
      '田曲文',
      '顾春英',
      '赵娣-Ikun',
      '晚风',
      '冉忆敏',
      'Emily Brown',
      '李石田',
      'Isabella Turner',
    ]
  }
];


List<Map<String, dynamic>> alle = [
  { 'name': 'Alexander Lee',
    'age': '22',
    'sex':'male',
    'fans':'229',
    'following': '121',
    'school': '浙江科技学院',
    'college': '信',
    'background': 'assets/userinfo/background1.jpg',
    'avatar': 'assets/userinfo/avatar1.jpg',
    'email': 'alexander@google.com',
    'phone':'555-555-5555',
    'intro': 'I come from a family of scientists, and I have always been fascinated by the mysteries of the universe. Astronomy is my passion, and I enjoy stargazing on clear nights.',
    'post': [
      {
        'title': 'My Trip to Hawaii',
        'name': 'Alexander Lee',
        'text': 'Last summer, I went on an amazing trip to Hawaii with my family. We spent two weeks exploring the islands and enjoying the beautiful beaches and scenery. Some of the highlights of the trip included hiking to the top of a volcano, swimming with dolphins, and trying all kinds of delicious Hawaiian food. It was truly an unforgettable experience!',
        'time': '2022-04-30 10:30:00',
        'image': 'assets/userinfo/post/post1.jpg',
        'comments': '303',
        'likes':'153',
      },
      {
        'title': 'The Alchemist','name': 'Alexander Lee',
        'text': 'One of my favorite books is "The Alchemist" by Paulo Coelho. This book is a beautiful and inspiring tale about following your dreams and discovering your purpose in life. It reminds us that the universe conspires to help us achieve our goals, and all we need is the courage to pursue them. Highly recommended!',
        'time': '2022-05-02 12:30:00',
        'comments': '127',
        'likes':'245',
        'image': 'assets/userinfo/post/post2.jpg'
      },
      {
        'title': '1984','name': 'Alexander Lee',
        'text': 'Another one of my favorite books is "1984" by George Orwell. This dystopian novel portrays a chilling vision of a totalitarian future, where individual freedom and free thought are suppressed. It is a warning against the dangers of authoritarianism and a call for vigilance against the erosion of our basic human rights. A must-read!',
        'time': '2022-04-28 19:00:00',
        'comments': '521',
        'likes':'347',
        'image': 'assets/userinfo/post/post3.jpg'
      },
      {
        'title': 'The Brothers Karamazov','name': 'Alexander Lee',
        'text': 'One of the greatest novels ever written is "The Brothers Karamazov" by Fyodor Dostoevsky. This masterpiece explores deep philosophical and religious themes through the story of three brothers and their father. It raises important questions about morality, free will, and the nature of God. It is a challenging but rewarding read!',
        'time': '2022-04-11 11:00:00',
        'comments': '456',
        'likes':'289',
        'image': 'assets/userinfo/post/post4.jpg'
      },
      {
        'title': "The Hitchhiker's Guide to the Galaxy",'name': 'Alexander Lee',
        'text': 'One of the funniest and most imaginative books I have ever read is "The Hitchhiker‘s Guide to the Galaxy" by Douglas Adams. This science fiction classic follows the misadventures of Arthur Dent, a hapless human who finds himself on a cosmic journey through space and time. It is a hilarious and clever satire of modern society and a celebration of the absurd. Highly recommended!',
        'time': '2022-04-08 18:30:00',
        'comments': '712',
        'likes':'431',
        'image': 'assets/userinfo/post/post5.jpg'
      },
      {
        'title': 'The Road','name': 'Alexander Lee',
        'text': 'One of the most powerful and haunting books I have ever read is "The Road" by Cormac McCarthy. This post-apocalyptic novel tells the story of a father and son who are journeying through a devastated and dangerous world. It is a harrowing exploration of love, survival, and the human spirit in the face of overwhelming adversity. A must-read!',
        'time': '2022-04-05 13:15:00',
        'comments': '358',
        'likes':'245',
        'image': 'assets/userinfo/post/post6.jpg'
      },
      {
        'title': 'The Diary of a Young Girl','name': 'Alexander Lee',
        'text': 'One of the most moving and inspiring books I have ever read is "The Diary of a Young Girl" by Anne Frank. This memoir tells the story of a young Jewish girl who is hiding with her family from the Nazis during World War II. It is a testament to the resilience and strength of the human spirit in the face of unimaginable cruelty and suffering. A must-read!',
        'time': '2022-04-01 09:00:00',
        'comments': '921',
        'likes':'632',
        'image': 'assets/userinfo/post/post7.jpg'
      },
    ],
    'likes': [
      {
        'title': 'The Catcher in the Rye','name': 'Isabella Turner',
        'text': 'One of the most thought-provoking books I have ever read is "The Catcher in the Rye" by J.D. Salinger. This coming-of-age novel follows the experiences of Holden Caulfield, a disillusioned teenager who is struggling to find his place in the world. It raises important questions about identity, conformity, and the meaning of life. A classic!',
        'time': '2022-04-26 10:15:00',
        'comments': '456',
        'likes':'278',
        'image': 'assets/userinfo/post/post37.jpg'
      },
      {
        'title': '小黑子之新时代的IKUN','name': '赵娣-Ikun',
        'text': '好地应对生活中的挑战和困难。当我们面对失败和挫折时，消极的想法会让我们陷入绝望，而积极的思考则能够激发我们的动力和勇气，让我们重新振作起来。此外，积极的思考还能够带来更多的机会和好运，因为它能够让我们更加敏锐地察觉周围的积极因素和机遇，从而抓住每一个机会。所以，让我们从现在开始，始终保持积极的思考方式，让它成为我们成功的助力。',
        'time': '2023-05-03 15:00:00',
        'comments': '20',
        'likes':'50',
        'image': 'assets/userinfo/post/post57.jpg'
      },
      {
        'title': '学生志愿者参加社区清洁活动','name': '晚风',
        'text': '今天，一群学生志愿者参加了社区的清洁活动，包括垃圾清理、植树等。他们以实际行动贡献社区，同时也提高了环境保护意识。我们希望更多的学生能够加入志愿者行列。',
        'time': '2022-05-11 08:30:00',
        'comments': '245',
        'likes': '623',
        'image': 'assets/userinfo/post/post80.jpg'
      },
      {
        'title': '学会自我调节','name': '晚风',
        'text': '生活中总会遇到各种各样的情况，有时候会感到失落、沮丧，甚至焦虑。学会自我调节是非常重要的，它能够帮助我们更好地面对困难和挫折。一些有效的自我调节技巧包括深呼吸、放松肌肉、运动、沉思等。当我们能够及时采取措施进行自我调节时，我们会更好地保持冷静和理智，从而更好地解决问题。',
        'time': '2023-05-03 16:30:00',
        'comments': '8',
        'likes':'25',
        'image': 'assets/userinfo/post/post23.jpg'
      },
    ]
  },
  { 'name': 'Isabella Turner',
    'age': '23',
    'sex': 'female',
    'fans':'2048',
    'following': '34',
    'background': 'assets/userinfo/background2.jpg',
    'avatar': 'assets/userinfo/avatar2.jpg',
    'email': 'isabella@google.com',
    'phone':'555-123-4567',
    'intro': 'I come from a family of artists, and I have always loved expressing myself through dance. ',
    'post': [
      {
        'title': 'The Catcher in the Rye',
        'text':'哥们大雾其中没带计算器，纯手算，考了88',
        'name': 'Isabella Turner',
        'time': '2023-5-10 9:41',
        'comments': '456',
        'likes':'278',
        'tags': '吐槽爆料',
        'image': 'assets/userinfo/post/post37.jpg'
      },
      {
        'title': 'The Catcher in the Rye','name': 'Isabella Turner',
        'text': 'One of the most thought-provoking books I have ever read is "The Catcher in the Rye" by J.D. Salinger. This coming-of-age novel follows the experiences of Holden Caulfield, a disillusioned teenager who is struggling to find his place in the world. It raises important questions about identity, conformity, and the meaning of life. A classic!',
        'time': '2022-04-26 10:15:00',
        'comments': '456',
        'likes':'278',
        'image': 'assets/userinfo/post/post37.jpg'
      },
      {
        'title': 'The Great Gatsby','name': 'Isabella Turner',
        'text': 'Another one of my favorite novels is "The Great Gatsby" by F. Scott Fitzgerald. Set in the roaring twenties, this book is a tragic tale of love, greed, and ambition. It offers a vivid portrait of the Jazz Age and explores themes such as social class, identity, and the American Dream. A timeless masterpiece!',
        'time': '2022-04-23 16:45:00',
        'comments': '654',
        'likes':'409',
        'image': 'assets/userinfo/post/post32.jpg'
      },
      {
        'title': 'Pride and Prejudice','name': 'Isabella Turner',
        'text': 'One of the greatest love stories ever written is "Pride and Prejudice" by Jane Austen. This classic novel tells the story of Elizabeth Bennet, a strong-willed and independent young woman, and Mr. Darcy, a wealthy and proud gentleman. It is a witty and charming tale about the complexities of romance and the importance of overcoming our prejudices. A timeless classic!',
        'time': '2022-04-19 09:30:00',
        'comments': '789',
        'likes':'521',
        'image': 'assets/userinfo/post/post15.jpg'
      },
      {
        'title': 'The Lord of the Rings','name': 'Isabella Turner',
        'text': 'One of the most epic and captivating stories ever written is "The Lord of the Rings" by J.R.R. Tolkien. This fantasy trilogy takes us on a journey through Middle-earth, where we encounter a cast of unforgettable characters, including hobbits, elves, dwarves, wizards, and orcs. It is a timeless tale of adventure, friendship, and the fight against evil. A must-read!',
        'time': '2022-04-15 14:20:00',
        'comments': '874',
        'likes':'632',
        'image': 'assets/userinfo/post/post17.jpg'
      },
    ],
    'likes': [
      {
        'title': '小黑子之新时代的IKUN','name': '赵娣-Ikun',
        'text': '好地应对生活中的挑战和困难。当我们面对失败和挫折时，消极的想法会让我们陷入绝望，而积极的思考则能够激发我们的动力和勇气，让我们重新振作起来。此外，积极的思考还能够带来更多的机会和好运，因为它能够让我们更加敏锐地察觉周围的积极因素和机遇，从而抓住每一个机会。所以，让我们从现在开始，始终保持积极的思考方式，让它成为我们成功的助力。',
        'time': '2023-05-03 15:00:00',
        'comments': '20',
        'likes':'50',
        'image': 'assets/userinfo/post/post57.jpg'
      },
      {
        'title': '学会自我调节','name': '晚风',
        'text': '生活中总会遇到各种各样的情况，有时候会感到失落、沮丧，甚至焦虑。学会自我调节是非常重要的，它能够帮助我们更好地面对困难和挫折。一些有效的自我调节技巧包括深呼吸、放松肌肉、运动、沉思等。当我们能够及时采取措施进行自我调节时，我们会更好地保持冷静和理智，从而更好地解决问题。',
        'time': '2023-05-03 16:30:00',
        'comments': '8',
        'likes':'25',
        'image': 'assets/userinfo/post/post23.jpg'
      },
      {
        'title': '保持积极心态','name': '晚风',
        'text': '积极心态能够带来更多的快乐和成功。无论在何种情况下，保持积极心态都能够让我们更好地面对挑战和困难。积极的想法能够让我们更加自信和勇敢，同时也能够吸引更多的好运和机会。为了保持积极心态，我们需要学会感恩、乐观、自信和宽容。这些都是一些积极的思维方式，能够让我们更好地面对生活中的各种挑战。',
        'time': '2023-05-03 17:00:00',
        'comments': '15',
        'likes':'35',
        'image': 'assets/userinfo/post/post25.jpg'
      },
    ]
  },
  { 'name': '赵娣-Ikun',
    'sex':'male',
    'age': '21',
    'fans':'1020',
    'following': '55',
    'background': 'assets/userinfo/background3.jpg',
    'avatar': 'assets/userinfo/avatar3.jpg',
    'email': 'zhaodi123@qq.com',
    'phone':'123-1233-192',
    'intro': '哈喽，我喜欢中分头，喜欢穿背带裤，会唱 跳 rap，还会唱《鸡你太美》。大三，来自浙江台州，热爱生活与编程，是个有趣的人',
    'post': [
      {
        'title': '小黑子之新时代的IKUN','name': '赵娣-Ikun',
        'text': '真服了，小黑子那么多，黑的不够啊？？搞笑',
        'time': '2023-05-03 15:00:00',
        'tags': '吐槽爆料',
        'comments': '20',
        'likes':'50',
        'image': 'assets/userinfo/post/post57.jpg'
      },
      {
        'title': '积极思考的力量','name': '赵娣-Ikun',
        'text': '积极思考的力量是巨大的。无论在何种情况下，积极的思考都能够帮助我们更好地应对生活中的挑战和困难。当我们面对失败和挫折时，消极的想法会让我们陷入绝望，而积极的思考则能够激发我们的动力和勇气，让我们重新振作起来。此外，积极的思考还能够带来更多的机会和好运，因为它能够让我们更加敏锐地察觉周围的积极因素和机遇，从而抓住每一个机会。所以，让我们从现在开始，始终保持积极的思考方式，让它成为我们成功的助力。',
        'time': '2023-05-03 15:00:00',
        'comments': '20',
        'likes':'50',
        'image': 'assets/userinfo/post/post42.jpg'
      },
    ],
    'likes': [
      {
        'title': '学会自我调节','name': '晚风',
        'text': '生活中总会遇到各种各样的情况，有时候会感到失落、沮丧，甚至焦虑。学会自我调节是非常重要的，它能够帮助我们更好地面对困难和挫折。一些有效的自我调节技巧包括深呼吸、放松肌肉、运动、沉思等。当我们能够及时采取措施进行自我调节时，我们会更好地保持冷静和理智，从而更好地解决问题。',
        'time': '2023-05-03 16:30:00',
        'comments': '8',
        'likes':'25',
        'image': 'assets/userinfo/post/post23.jpg'
      },
      {
        'title': '校园绿化活动开展','name': '皮卡丘',
        'text': '为了美化校园环境，学校开展了一次校园绿化活动，由志愿者和学生一同参与。他们在校园内植树、种花、修剪草坪等，为学校增添了生机和美丽。感谢所有参与者的努力。',
        'time': '2022-05-15 09:00:00',
        'comments': '178',
        'likes': '456',
        'image': 'assets/userinfo/post/post54.jpg'
      },
      {
        'title': '保持积极心态','name': '晚风',
        'text': '积极心态能够带来更多的快乐和成功。无论在何种情况下，保持积极心态都能够让我们更好地面对挑战和困难。积极的想法能够让我们更加自信和勇敢，同时也能够吸引更多的好运和机会。为了保持积极心态，我们需要学会感恩、乐观、自信和宽容。这些都是一些积极的思维方式，能够让我们更好地面对生活中的各种挑战。',
        'time': '2023-05-03 17:00:00',
        'comments': '15',
        'likes':'35',
        'image': 'assets/userinfo/post/post25.jpg'
      },
      {
        'title': '如何自律','name': '农古韵',
        'text': '自律是成功的关键，它可以帮助我们追求更高的目标和更好的未来。想要自律，需要制定明确的计划和目标，并坚持执行。此外，培养良好的习惯、保持健康的生活方式也是非常重要的。所以，要成为一个自律的人，需要付出不懈的努力。',
        'time': '2022-01-01 09:00:00',
        'comments': '127',
        'likes': '345',
        'image': 'assets/userinfo/post/post28.jpg'
      }
    ]
  },
  { 'name': '晚风',
    'sex':'male',
    'age': '25',
    'fans':'12',
    'following': '241',
    'background': 'assets/userinfo/background4.jpg',
    'avatar': 'assets/userinfo/avatar4.jpg',
    'email': '192740192@qq.com',
    'phone':'123-4567-8910',
    'intro': '喜欢打篮球、健身，闲暇时会弹弹吉他，也会做一些自动化小工具，对生活充满热情。',
    'post': [
      {
        'text': '昨晚梦到crush了 她好可爱呜呜 还梦到好朋友 发生了一个特别幸福的小事 梦到结束的时候也很恰当',
        'time': '2023-4-31 9:12',
        'name': '晚风',
        'comments': '0',
        'likes': '4',
        'tags': '身边趣事'
      },
      {
        'title': '留学咨询会即将举行','name': '晚风',
        'text': '为帮助有志于出国留学的学生更好地了解留学事宜，学校将举办留学咨询会。咨询会将邀请多名留学专家和校友分享他们的留学经验和心得，同时还将介绍各类留学项目和申请流程。',
        'time': '2022-10-05 13:30:00',
        'comments': '68',
        'likes': '311',
        'image': 'assets/userinfo/post/post15.jpg',
        'tags': '学业疑难'
      },
      {
        'title': 'Pride and Prejudice','name': 'Isabella Turner',
        'text': 'One of the greatest love stories ever written is "Pride and Prejudice" by Jane Austen. This classic novel tells the story of Elizabeth Bennet, a strong-willed and independent young woman, and Mr. Darcy, a wealthy and proud gentleman. It is a witty and charming tale about the complexities of romance and the importance of overcoming our prejudices. A timeless classic!',
        'time': '2022-04-19 09:30:00',
        'comments': '789',
        'likes':'521',
        'image': 'assets/userinfo/post/post15.jpg',
        'tags': '创作分析'
      },
      {
        'title': '学生志愿者参加社区清洁活动','name': '晚风',
        'text': '今天，一群学生志愿者参加了社区的清洁活动，包括垃圾清理、植树等。他们以实际行动贡献社区，同时也提高了环境保护意识。我们希望更多的学生能够加入志愿者行列。',
        'time': '2022-05-11 08:30:00',
        'comments': '245',
        'likes': '623',
        'image': 'https://example.com/volunteer-activity.jpg',
        'tags': '身边趣事'
      },
      {
        'title': '学会自我调节','name': '张言',
        'text': '生活中总会遇到各种各样的情况，有时候会感到失落、沮丧，甚至焦虑。学会自我调节是非常重要的，它能够帮助我们更好地面对困难和挫折。一些有效的自我调节技巧包括深呼吸、放松肌肉、运动、沉思等。当我们能够及时采取措施进行自我调节时，我们会更好地保持冷静和理智，从而更好地解决问题。',
        'time': '2023-05-03 16:30:00',
        'comments': '8',
        'likes':'25',
        'image': 'assets/userinfo/post/post23.jpg',
        'tags': '日常生活'
      },
      {
        'title': '保持积极心态','name': '张言',
        'text': '积极心态能够带来更多的快乐和成功。无论在何种情况下，保持积极心态都能够让我们更好地面对挑战和困难。积极的想法能够让我们更加自信和勇敢，同时也能够吸引更多的好运和机会。为了保持积极心态，我们需要学会感恩、乐观、自信和宽容。这些都是一些积极的思维方式，能够让我们更好地面对生活中的各种挑战。',
        'time': '2023-05-03 17:00:00',
        'comments': '15',
        'likes':'35',
        'image': 'assets/userinfo/post/post25.jpg',
        'tags': '日常生活'
      },
    ],
    'likes': [
      {
        'title': '如何自律','name': '农古韵',
        'text': '自律是成功的关键，它可以帮助我们追求更高的目标和更好的未来。想要自律，需要制定明确的计划和目标，并坚持执行。此外，培养良好的习惯、保持健康的生活方式也是非常重要的。所以，要成为一个自律的人，需要付出不懈的努力。',
        'time': '2022-01-01 09:00:00',
        'comments': '127',
        'likes': '345',
        'image': 'assets/userinfo/post/post28.jpg'
      }
    ]
  },
  { 'name': '农古韵',
    'sex':'female',
    'age': '19',
    'fans':'3',
    'following': '12',
    'background': 'assets/userinfo/background5.jpg',
    'avatar': 'assets/userinfo/avatar5.jpg',
    'email': 'wangwu@163.com',
    'phone':'135-7924-680',
    'intro': '喜欢看剧、玩游戏、打羽毛球，工作中主要负责机器人控制软件的开发和优化。',
    'post' : [
      {
        'title': '有效的时间管理','name': '农古韵',
        'text': '时间是有限的资源，有效的时间管理是非常重要的。在日常生活中，我们需要合理规划时间，合理安排工作和休息时间，以充分利用时间。一些有效的时间管理技巧包括制定计划、设置优先级、避免拖延、减少干扰等。当我们能够有效地管理时间时，我们会感到更加充实和满足，同时也能够提高我们的工作效率和生产力。',
        'time': '2023-05-03 16:00:00',
        'comments': '5',
        'likes':'20',
        'image': 'assets/userinfo/post/post29.jpg',
        'tags': '日常生活'
      },
      {
        'title': '如何自律','name': '农古韵',
        'text': '自律是成功的关键，它可以帮助我们追求更高的目标和更好的未来。想要自律，需要制定明确的计划和目标，并坚持执行。此外，培养良好的习惯、保持健康的生活方式也是非常重要的。所以，要成为一个自律的人，需要付出不懈的努力。',
        'time': '2022-01-01 09:00:00',
        'comments': '127',
        'likes': '345',
        'image': 'assets/userinfo/post/post28.jpg',
        'tags': '学业疑难'
      }
    ],
    'likes': [
      {
        'title': '团队合作的重要性','name': '任小谷',
        'text': '团队合作是任何组织或企业成功的关键之一。一个高效的团队能够将个人的优势转化为整体的优势，实现更高效的工作和更好的业绩。在团队中，每个成员都应该承担自己的责任，并且积极参与到团队的工作中来。此外，团队合作还能够增加成员之间的沟通和信任，减少误解和矛盾。当我们面对困难和挑战时，团队的支持和协作也能够帮助我们克服困难，取得成功。所以，无论在哪个领域，团队合作都是非常重要的。',
        'time': '2023-05-03 15:30:00',
        'comments': '10',
        'likes':'30',
        'image': 'assets/userinfo/post/post20.jpg',
        'tags': '吐槽爆料'
      },
    ]
  },
  { 'name': '任小谷',
    'sex':'female',
    'age': '20',
    'fans':'6',
    'following': '51',
    'background': 'assets/userinfo/background6.jpg',
    'avatar': 'assets/userinfo/avatar6.jpg',
    'email': 'renxiaogu408@google.com',
    'phone':'139-5762-920',
    'intro': '喜欢听音乐，尤其是流行歌曲，最近开始学习钢琴和吉他，对编程也有浓厚的兴趣。',
    'post' : [
      {
        'title': '团队合作的重要性','name': '任小谷',
        'text': '团队合作是任何组织或企业成功的关键之一。一个高效的团队能够将个人的优势转化为整体的优势，实现更高效的工作和更好的业绩。在团队中，每个成员都应该承担自己的责任，并且积极参与到团队的工作中来。此外，团队合作还能够增加成员之间的沟通和信任，减少误解和矛盾。当我们面对困难和挑战时，团队的支持和协作也能够帮助我们克服困难，取得成功。所以，无论在哪个领域，团队合作都是非常重要的。',
        'time': '2023-05-03 15:30:00',
        'comments': '10',
        'likes':'30',
        'image': 'assets/userinfo/post/post20.jpg',
        'tags': '吐槽爆料'
      },
      {
        'title': '学生社团举办音乐会','name': '任小谷',
        'text': '本周末，学生社团将举办一场音乐会，展示各种音乐风格和才华。这是一次难得的机会，让大家欣赏到不同的音乐表演和享受音乐的美好。欢迎所有人前来观看。',
        'time': '2022-05-06 19:00:00',
        'comments': '301',
        'likes': '789',
        'image': 'assets/userinfo/post/post29.jpg',
        'tags': '时事新闻'
      },
    ],
    'likes': [
      {
        'title': '学生论坛讨论未来的职业选择','name': '向山而去',
        'text': '学生论坛将在本周五举行，主题是“未来的职业选择”。我们邀请了多位职业人士来分享他们的经验和建议，并且提供了互动环节，让学生们有机会提问和交流。欢迎所有学生参加。',
        'time': '2022-04-08 18:30:00',
        'comments': '203',
        'likes': '567',
        'image': 'assets/userinfo/post/post42.jpg',
        'tags': '学业疑难'
      },
      {
        'title': '如何自律','name': '农古韵',
        'text': '自律是成功的关键，它可以帮助我们追求更高的目标和更好的未来。想要自律，需要制定明确的计划和目标，并坚持执行。此外，培养良好的习惯、保持健康的生活方式也是非常重要的。所以，要成为一个自律的人，需要付出不懈的努力。',
        'time': '2022-01-01 09:00:00',
        'comments': '127',
        'likes': '345',
        'image': 'assets/userinfo/post/post28.jpg',
        'tags': '日常生活'
      }
    ]
  },
  { 'name': '向山而去',
    'sex':'female',
    'age': '22',
    'fans':'0',
    'following': '3',
    'background': 'assets/userinfo/background7.jpg',
    'avatar': 'assets/userinfo/avatar7.jpg',
    'email': 'yepingchun@sina.com',
    'phone':'150-3456-788',
    'intro': '专注于物联网领域，研究智能家居、智能医疗等方面的技术，业余爱好是旅游和摄影。',
    'post' : [
      {
        'title': '学生论坛讨论未来的职业选择','name': '向山而去',
        'text': '学生论坛将在本周五举行，主题是“未来的职业选择”。我们邀请了多位职业人士来分享他们的经验和建议，并且提供了互动环节，让学生们有机会提问和交流。欢迎所有学生参加。',
        'time': '2022-04-08 18:30:00',
        'comments': '203',
        'likes': '567',
        'image': 'assets/userinfo/post/post42.jpg',
        'tags': '学业疑难'
      }
    ],
    'likes': [
      {
        'title': 'My Favorite Book','name': 'Emily Brown',
        'text': 'One of my all-time favorite books is "To Kill a Mockingbird" by Harper Lee. I first read it in high school, and it has stayed with me ever since. The book tells a powerful story about justice, prejudice, and the importance of standing up for what is right, even when it is difficult. I highly recommend it to anyone who hasn\'t read it yet!',
        'time': '2022-05-01 14:45:00',
        'comments': '542',
        'likes':'387',
        'image': 'assets/userinfo/post/post27.jpg'
      },
      {
        'title': '校友讲座：如何打造个人品牌','name': '皮卡丘',
        'text': '本周，学校邀请了一位校友来分享如何打造个人品牌。他分享了自己的经验和技巧，以及如何在职场中脱颖而出。学生们在听取他的演讲后受益匪浅。',
        'time': '2022-05-20 15:00:00',
        'comments': '224',
        'likes': '789',
        'image': 'assets/userinfo/post/post58.jpg'
      },
    ],

  },
  { 'name': 'Emily Brown',
    'age': '27',
    'sex': 'male',
    'fans': '931',
    'following': '22',
    'background': 'assets/userinfo/background8.jpg',
    'avatar': 'assets/userinfo/avatar8.jpg',
    'email': 'emily@google.com',
    'phone': '555-123-4567',
    'intro': 'My passion is photography and capturing beautiful moments in life. I come from a small town in the Midwest where I discovered my love for this art.',
    'post': [
      {
        'title': 'My Favorite Book','name': 'Emily Brown',
        'text': 'One of my all-time favorite books is "To Kill a Mockingbird" by Harper Lee. I first read it in high school, and it has stayed with me ever since. The book tells a powerful story about justice, prejudice, and the importance of standing up for what is right, even when it is difficult. I highly recommend it to anyone who hasn\'t read it yet!',
        'time': '2022-05-01 14:45:00',
        'comments': '542',
        'likes':'387',
        'image': 'assets/userinfo/post/post27.jpg',
        'tags': '日常生活'
      },
      {
        'title': 'The Name of the Wind','name': 'Emily Brown',
        'text': 'One of the most engaging and thrilling books I have ever read is "The Name of the Wind" by Patrick Rothfuss. This fantasy novel tells the story of a legendary wizard named Kvothe, who recounts his life story to a scribe. It is a beautifully written and intricately crafted tale of magic, adventure, and romance. The world-building is exceptional, and the characters are unforgettable. A must-read for fans of fantasy!',
        'time': '2022-03-28 15:40:00',
        'comments': '542',
        'likes':'387',
        'image': 'assets/userinfo/post/post31.jpg',
        'tags': '日常生活'
      },
      {
        'title': '1984','name': 'Emily Brown',
        'text': 'One of the most important and prophetic books ever written is "1984" by George Orwell. This dystopian novel depicts a totalitarian society where individuality and free thought are forbidden. It is a warning about the dangers of authoritarianism and the importance of defending our fundamental freedoms. A must-read for anyone concerned about the state of our world!',
        'time': '2022-03-25 10:20:00',
        'comments': '987',
        'likes':'702',
        'image': 'assets/userinfo/post/post43.jpg',
        'tags': '日常生活'
      },
    ],
    'likes': [
      {
        'title': '学校举办首届创业大赛','name': '唐知慧',
        'text': '为鼓励学生积极创新和创业，学校将举办首届创业大赛。比赛将由学校校友和企业家组成的评委团评选，提供奖金和支持给获奖的创业团队。此外，学校还将为参赛者提供相关培训和咨询服务，帮助他们在比赛中表现更好。我们希望通过这个平台，鼓励更多的学生参与到创业和创新中来。',
        'time': '2022-10-10 14:20:00',
        'comments': '78',
        'likes': '321',
        'image': 'assets/userinfo/post/post36.jpg',
        'tags': '时事新闻'
      }
    ]
  },
  { 'name': '皮卡丘',
    'sex':'male',
    'age': '24',
    'fans':'19',
    'following': '33',
    'background': 'assets/userinfo/background9.jpg',
    'avatar': 'assets/userinfo/avatar9.jpg',
    'email': 'lisi@sina.com',
    'phone':'178-2947-1101',
    'intro': '挑战自己挑战极限，这就是我生活的状态，目前在一家初创公司担任技术负责人，业余时间喜欢写一些小工具，做一些小项目。',
    'post' : [
      {
        'title': '校园绿化活动开展','name': '皮卡丘',
        'text': '为了美化校园环境，学校开展了一次校园绿化活动，由志愿者和学生一同参与。他们在校园内植树、种花、修剪草坪等，为学校增添了生机和美丽。感谢所有参与者的努力。',
        'time': '2022-05-15 09:00:00',
        'comments': '178',
        'likes': '456',
        'image': 'assets/userinfo/post/post54.jpg',
        'tags': '时事新闻'
      },
      {
        'title': '校友讲座：如何打造个人品牌','name': '皮卡丘',
        'text': '本周，学校邀请了一位校友来分享如何打造个人品牌。他分享了自己的经验和技巧，以及如何在职场中脱颖而出。学生们在听取他的演讲后受益匪浅。',
        'time': '2022-05-20 15:00:00',
        'comments': '224',
        'likes': '789',
        'image': 'assets/userinfo/post/post58.jpg',
        'tags': '时事新闻'
      }
    ],
    'likes': [
      {
        'title': '校园图书馆增加自习室数量','name': '雪山',
        'text': '为了更好地服务学生，校园图书馆增加了自习室数量。新的自习室位于图书馆三楼，提供了更加宽敞、安静的学习环境。此外，为了方便学生，图书馆还增加了电源插座和免费无线网络，使学生可以更加舒适地学习和研究。',
        'time': '2022-09-03 15:45:00',
        'comments': '55',
        'likes': '189',
        'image': 'assets/userinfo/post/post48.jpg'
      },
    ]
  },
  { 'name': '唐知慧',
    'sex':'female',
    'age': '19',
    'fans':'12490',
    'following': '23',
    'background': 'assets/userinfo/background10.jpg',
    'avatar': 'assets/userinfo/avatar10.jpg',
    'email': 'wangqi@qq.com',
    'phone':'136-7892-576',
    'intro': '阅读是我生活的一大乐趣，尤其喜欢读一些哲学和人生经验的书籍，同时也热衷于思考和探讨生命的意义和价值。',
    'post' : [
      {
        'title': '学校举办首届创业大赛','name': '唐知慧',
        'text': '为鼓励学生积极创新和创业，学校将举办首届创业大赛。比赛将由学校校友和企业家组成的评委团评选，提供奖金和支持给获奖的创业团队。此外，学校还将为参赛者提供相关培训和咨询服务，帮助他们在比赛中表现更好。我们希望通过这个平台，鼓励更多的学生参与到创业和创新中来。',
        'time': '2022-10-10 14:20:00',
        'comments': '78',
        'likes': '321',
        'image': 'assets/userinfo/post/post36.jpg',
        'tags': '嘻哈'
      }
    ],
    'likes': [
      {
        'title': '学生组织汉语角活动','name': '雪山',
        'text': '为了促进外国留学生的汉语交流和学习，学生组织了一次汉语角活动。他们与外国留学生进行了交流和讨论，分享了中华文化和中国风俗习惯，让外国留学生更好地融入中国社会。',
        'time': '2022-05-28 19:00:00',
        'comments': '256',
        'likes': '678',
        'image': 'assets/userinfo/post/post33.jpg'
      },
    ]
  },
  { 'name': '雪山',
    'sex':'male',
    'age': '22',
    'fans':'0',
    'following': '13',
    'background': 'assets/userinfo/background11.jpg',
    'avatar': 'assets/userinfo/avatar11.jpg',
    'email': 'zhaoliu@google.com',
    'phone':'189-3456-7890',
    'intro': '嘿嘿，爱好广泛，尤其是喜欢挑战自己，常常会参加各种体验活动和比赛，如攀岩、漂流、马拉松等。',
    'post' : [
      {
        'title': '学生组织汉语角活动','name': '雪山',
        'text': '为了促进外国留学生的汉语交流和学习，学生组织了一次汉语角活动。他们与外国留学生进行了交流和讨论，分享了中华文化和中国风俗习惯，让外国留学生更好地融入中国社会。',
        'time': '2022-05-28 19:00:00',
        'comments': '256',
        'likes': '678',
        'image': 'assets/userinfo/post/post33.jpg',
        'tags': '嘻哈'
      },
      {
        'title': '校园图书馆增加自习室数量','name': '雪山',
        'text': '为了更好地服务学生，校园图书馆增加了自习室数量。新的自习室位于图书馆三楼，提供了更加宽敞、安静的学习环境。此外，为了方便学生，图书馆还增加了电源插座和免费无线网络，使学生可以更加舒适地学习和研究。',
        'time': '2022-09-03 15:45:00',
        'comments': '55',
        'likes': '189',
        'image': 'assets/userinfo/post/post48.jpg',
        'tags': '实习'
      },
    ],
    'likes': [
      {
        'title': '学校举办校园文化艺术节','name': '国夏尔',
        'text': '本周，学校将举办校园文化艺术节，包括音乐、舞蹈、戏剧等多种形式的表演。所有学生都可以参加，并且有机会展示自己的才艺。欢迎大家前来观看。',
        'time': '2022-06-02 18:30:00',
        'comments': '301',
        'likes': '890',
        'image': 'assets/userinfo/post/post40.jpg'
      },
    ]
  },
  { 'name': '国夏尔',
    'sex':'male',
    'age': '23',
    'fans':'0',
    'following': '2',
    'background': 'assets/userinfo/background12.jpg',
    'avatar': 'assets/userinfo/avatar12.jpg',
    'email': 'sunyi@163.com',
    'phone':'139-0987-6543',
    'intro': '目前在一家互联网公司担任产品经理，对用户需求和市场趋势有着敏锐的洞察力和把控能力。',
    'post' : [
      {
        'title': '学校举办校园文化艺术节','name': '国夏尔',
        'text': '本周，学校将举办校园文化艺术节，包括音乐、舞蹈、戏剧等多种形式的表演。所有学生都可以参加，并且有机会展示自己的才艺。欢迎大家前来观看。',
        'time': '2022-06-02 18:30:00',
        'comments': '301',
        'likes': '890',
        'image': 'assets/userinfo/post/post40.jpg',
        'tags': '游戏娱乐'
      },
    ],
    'likes': [
      {
        'title': 'The Catcher in the Rye','name': 'Benjamin Green',
        'text': 'One of the most influential and controversial books of the 20th century is "The Catcher in the Rye" by J.D. Salinger. This novel follows the adventures of Holden Caulfield, a disaffected teenager who is struggling to find his place in the world. It is a powerful exploration of teenage angst, alienation, and the search for authenticity. A must-read for anyone who has ever felt lost or misunderstood!',
        'time': '2022-03-18 16:15:00',
        'comments': '786',
        'likes':'512',
        'image': 'assets/userinfo/post/post49.jpg'
      },
      {
        'title': '校园图书馆增加自习室数量','name': '雪山',
        'text': '为了更好地服务学生，校园图书馆增加了自习室数量。新的自习室位于图书馆三楼，提供了更加宽敞、安静的学习环境。此外，为了方便学生，图书馆还增加了电源插座和免费无线网络，使学生可以更加舒适地学习和研究。',
        'time': '2022-09-03 15:45:00',
        'comments': '55',
        'likes': '189',
        'image': 'assets/userinfo/post/post48.jpg'
      },
    ]
  },
  { 'name': 'Benjamin Green',
    'age': '33',
    'sex': 'male',
    'fans':'211',
    'following': '45',
    'background': 'assets/userinfo/background13.jpg',
    'avatar': 'assets/userinfo/avatar13.jpg',
    'email': 'benjamin@google.com',
    'phone':'555-987-6543',
    'intro': 'Growing up, I always loved to read and write. I come from a family of writers, and I am continuing that tradition by pursuing my dream of becoming a published author.',
    'post': [
      {
        'title': 'The Catcher in the Rye','name': 'Benjamin Green',
        'text': 'One of the most influential and controversial books of the 20th century is "The Catcher in the Rye" by J.D. Salinger. This novel follows the adventures of Holden Caulfield, a disaffected teenager who is struggling to find his place in the world. It is a powerful exploration of teenage angst, alienation, and the search for authenticity. A must-read for anyone who has ever felt lost or misunderstood!',
        'time': '2022-03-18 16:15:00',
        'comments': '786',
        'likes':'512',
        'image': 'assets/userinfo/post/post49.jpg',
        'tags': '家教'
      },
      {
        'title': 'The Great Gatsby','name': 'Benjamin Green',
        'text': 'One of the greatest American novels of all time is "The Great Gatsby" by F. Scott Fitzgerald. This classic tale of wealth, power, and the American Dream is set in the Roaring Twenties and features a cast of unforgettable characters, including the enigmatic Jay Gatsby and the cynical narrator Nick Carraway. It is a timeless portrait of a bygone era and a cautionary tale about the dangers of excess and obsession. A must-read!',
        'time': '2022-03-14 09:45:00',
        'comments': '998',
        'likes':'721',
        'image': 'assets/userinfo/post/post35.jpg',
        'tags': '情感'
      },
      {
        'title': 'Slaughterhouse-Five','name': 'Benjamin Green',
        'text': 'One of the most profound and poignant anti-war novels ever written is "Slaughterhouse-Five" by Kurt Vonnegut. This book follows the experiences of Billy Pilgrim, a soldier who becomes unstuck in time and travels to different moments in his life, including the firebombing of Dresden during World War II. It is a haunting and unforgettable meditation on the futility and horror of war, and the resilience of the human spirit. A must-read!',
        'time': '2022-03-07 14:30:00',
        'comments': '879',
        'likes':'632',
        'image': 'assets/userinfo/post/post27.jpg',
        'tags': '情感'
      },
    ],
    'likes': [
      {
        'title': '学生会举办新生见面会','name': '田曲文',
        'text': '为欢迎新生入学，学生会将在8月31日下午2点举办新生见面会。届时学生会将介绍学校的各项服务和社团活动，帮助新生快速适应大学生活。同时，还将邀请一些校友和知名企业家分享他们的大学经历和成功经验。我们期待着新生的加入，并为他们提供支持和帮助。',
        'time': '2022-08-25 10:30:00',
        'comments': '102',
        'likes': '265',
        'image': 'assets/userinfo/post/post46.jpg'
      },
    ]
  },
  { 'name': '田曲文',
    'sex':'male',
    'age': '24',
    'fans':'460',
    'following': '21',
    'background': 'assets/userinfo/background14.jpg',
    'avatar': 'assets/userinfo/avatar14.jpg',
    'email': 'zhoujiu@163.com', 'phone':'186-9876-5432',
    'intro': '已毕业的学长一枚~喜欢研究前沿科技，对量子计算、区块链等领域有着深入的研究，同时也是一名游戏迷。',
    'post' : [
      {
        'title': '学生会举办新生见面会','name': '田曲文',
        'text': '为欢迎新生入学，学生会将在8月31日下午2点举办新生见面会。届时学生会将介绍学校的各项服务和社团活动，帮助新生快速适应大学生活。同时，还将邀请一些校友和知名企业家分享他们的大学经历和成功经验。我们期待着新生的加入，并为他们提供支持和帮助。',
        'time': '2022-08-25 10:30:00',
        'comments': '102',
        'likes': '265',
        'image': 'assets/userinfo/post/post46.jpg',
        'tags': '创作分析'
      },
      {
        'title': '学校举办首届创业大赛','name': '田曲文',
        'text': '为鼓励学生积极创新和创业，学校将举办首届创业大赛。比赛将由学校校友和企业家组成的评委团评选，提供奖金和支持给获奖的创业团队。此外，学校还将为参赛者提供相关培训和咨询服务，帮助他们在比赛中表现更好。我们希望通过这个平台，鼓励更多的学生参与到创业和创新中来。',
        'time': '2022-10-10 14:20:00',
        'comments': '78',
        'likes': '321',
        'image': 'assets/userinfo/post/post24.jpg',
        'tags': '创作分析'
      },
    ],
    'likes': [
      {
        'title': '学习笔记分享会在图书馆成功举办','name': '顾春英',
        'text': '5月1日，由学生会主办的学习笔记分享会在学校图书馆举行。本次活动旨在鼓励同学们相互学习，分享学习笔记，提高学习效率。活动分为三个环节，第一个环节是主题演讲，由学长学姐分享自己的学习方法和经验；第二个环节是自由分享，同学们可以结合自己的专业知识和学习经验进行分享；第三个环节是集体讨论，同学们可以对分享的内容进行提问和交流。活动现场气氛热烈，同学们积极参与，分享了自己的学习心得和笔记，不少同学表示受益匪浅。',
        'time': '2023-05-01 15:00:00',
        'comments': '36',
        'likes': '128',
        'image': 'assets/userinfo/post/post29.jpg'
      },
    ]
  },
  { 'name': '顾春英',
    'sex':'female',
    'age': '21',
    'fans':'24957',
    'following': '49',
    'background': 'assets/userinfo/background15.jpg',
    'avatar': 'assets/userinfo/avatar15.jpg',
    'email': 'qianqi@163.com',
    'phone':'136-4567-8901',
    'intro': '热衷于画画和设计，尤其擅长手绘插画和海报设计，常常会将自己的设计分享到社交媒体上。',
    'post' : [
      {
        'title': '学习笔记分享会在图书馆成功举办','name': '顾春英',
        'text': '5月1日，由学生会主办的学习笔记分享会在学校图书馆举行。本次活动旨在鼓励同学们相互学习，分享学习笔记，提高学习效率。活动分为三个环节，第一个环节是主题演讲，由学长学姐分享自己的学习方法和经验；第二个环节是自由分享，同学们可以结合自己的专业知识和学习经验进行分享；第三个环节是集体讨论，同学们可以对分享的内容进行提问和交流。活动现场气氛热烈，同学们积极参与，分享了自己的学习心得和笔记，不少同学表示受益匪浅。',
        'time': '2023-05-01 15:00:00',
        'comments': '36',
        'likes': '128',
        'image': 'assets/userinfo/post/post29.jpg',
        'tags': '游戏娱乐'
      },
    ],
    'likes': [
      {
        'title': '参加校外实习的注意事项','name': '冉忆敏',
        'text': '参加校外实习是大学生活的重要组成部分，对于学生的专业学习和职业发展具有重要意义。参加校外实习需要注意以下几点：1. 安全第一，遵守相关规定；2. 提前准备好所需材料；3. 充分了解实习单位和岗位信息；4. 认真学习实习相关知识和技能。希望能对你有所帮助',
        'time': '2022-7-31 22:31',
        'comments': '124',
        'likes': '3002',
        'image': 'assets/userinfo/post/post20.jpg'
      },
    ]
  },
  { 'name': '冉忆敏',
    'sex':'male',
    'age': '23',
    'fans':'1',
    'following': '9',
    'background': 'assets/userinfo/background16.jpg',
    'avatar': 'assets/userinfo/avatar16.jpg',
    'email': 'yanger@sina.com', 'phone':'139-7890-1234',
    'intro': '喜欢体育运动，尤其喜欢足球和篮球，经常会和朋友们一起踢球或打球。',
    'post' : [
      {
        'title': '参加校外实习的注意事项','name': '冉忆敏',
        'text': '参加校外实习是大学生活的重要组成部分，对于学生的专业学习和职业发展具有重要意义。参加校外实习需要注意以下几点：1. 安全第一，遵守相关规定；2. 提前准备好所需材料；3. 充分了解实习单位和岗位信息；4. 认真学习实习相关知识和技能。希望能对你有所帮助',
        'time': '2022-7-31 22:31',
        'comments': '124',
        'likes': '3002',
        'image': 'assets/userinfo/post/post20.jpg',
        'tags': '实习'
      },
    ],
    'likes': [
      {
        'title': '学校图书馆推出新的自助借还机','name': '李石田',
        'text': '为提高学生借书的效率和方便程度，学校图书馆推出新的自助借还机。学生只需用学生卡刷一下机器，就可以自动借还图书。此外，新机器还可以查询图书信息和预订座位。希望学生们可以更加便捷地利用图书馆资源。',
        'time': '2022-11-01 09:10:00',
        'comments': '34',
        'likes': '189',
        'image': 'assets/userinfo/post/post44.jpg'
      }
    ]
  },
  { 'name': '李石田',
    'sex':'男',
    'age': '30',
    'fans':'3',
    'following': '17',
    'background': 'assets/userinfo/background17.jpg',
    'avatar': 'assets/userinfo/avatar17.jpg',
    'email': 'john@126.com', 'phone':'108-4298-091',
    'intro': '高级程序员，目前在阿里工作了7年，薪资百万，想进大厂？ 关注并私信我哦~',
    'post' : [
      {
        'title': '学校图书馆推出新的自助借还机','name': '李石田',
        'text': '为提高学生借书的效率和方便程度，学校图书馆推出新的自助借还机。学生只需用学生卡刷一下机器，就可以自动借还图书。此外，新机器还可以查询图书信息和预订座位。希望学生们可以更加便捷地利用图书馆资源。',
        'time': '2022-11-01 09:10:00',
        'comments': '34',
        'likes': '189',
        'image': 'assets/userinfo/post/post44.jpg',
        'tags': '校内兼职'
      }
    ],
    'likes': [
      {
        'title': '2023考研报名已经开始','name': '韩寒安',
        'text': '2023年全国硕士研究生招生考试报名已经开始，截止日期为9月15日。考生需认真阅读招生简章，按要求填写报名信息。同时，需要准备好各项资料，包括身份证、学历证书、毕业证书、成绩单等，保证填写的信息真实有效。祝愿大家考试顺利。',
        'time': '2023-08-01 09:00:00',
        'comments': '209',
        'likes': '784',
        'image': 'assets/userinfo/post/post40.jpg'
      },
    ]
  },
  { 'name': '韩寒安',
    'sex':'male',
    'age': '21',
    'fans':'0',
    'following': '3',
    'background': 'assets/userinfo/background18.jpg',
    'avatar': 'assets/userinfo/avatar18.jpg',
    'email': 'wuwu@126.com',
    'phone':'150-0987-6543',
    'intro': '热爱旅行，曾经背包旅行过多个国家，对各地的文化和美食都有着深入的了解和体验。',
    'post' : [
      {
        'title': '2023考研报名已经开始','name': '韩寒安',
        'text': '2023年全国硕士研究生招生考试报名已经开始，截止日期为9月15日。考生需认真阅读招生简章，按要求填写报名信息。同时，需要准备好各项资料，包括身份证、学历证书、毕业证书、成绩单等，保证填写的信息真实有效。祝愿大家考试顺利。',
        'time': '2023-08-01 09:00:00',
        'comments': '209',
        'likes': '784',
        'image': 'assets/userinfo/post/post40.jpg',
        'tags': '情感'
      },
    ],
    'likes':[
      {
        'title': '如何在学习中提高英语听力技能？','name': '巢乐芸',
        'text': '英语听力是学习英语的重要组成部分，但很多同学在学习过程中遇到了困难。为此，我们整理了一些提高英语听力技能的方法，包括多听、多练、背景知识预习等，希望可以帮助同学们更好地掌握英语听力。',
        'time': '2023-01-20 11:00:00',
        'comments': '56',
        'likes': '289',
        'image': 'assets/userinfo/post/post41.jpg'
      }
    ]
  },
  { 'name': '巢乐芸',
    'sex':'female',
    'age': '33',
    'fans':'2',
    'following': '8',
    'background': 'assets/userinfo/background19.jpg',
    'avatar': 'assets/userinfo/avatar19.jpg',
    'email': 'zhengba@sina.com',
    'phone':'139-7654-3210',
    'intro': '喜欢收集邮票和硬币，对历史和文化有着浓厚的兴趣，也经常会参加相关的文化活动和展览。',
    'post' : [
      {
        'title': '如何在学习中提高英语听力技能？','name': '巢乐芸',
        'text': '英语听力是学习英语的重要组成部分，但很多同学在学习过程中遇到了困难。为此，我们整理了一些提高英语听力技能的方法，包括多听、多练、背景知识预习等，希望可以帮助同学们更好地掌握英语听力。',
        'time': '2023-01-20 11:00:00',
        'comments': '56',
        'likes': '289',
        'image': 'assets/userinfo/post/post41.jpg',
        'tags': '家教'
      }
    ],
    'likes': [
      {
        'title': '参加校外实习的注意事项','name': '冉忆敏',
        'text': '参加校外实习是大学生活的重要组成部分，对于学生的专业学习和职业发展具有重要意义。参加校外实习需要注意以下几点：1. 安全第一，遵守相关规定；2. 提前准备好所需材料；3. 充分了解实习单位和岗位信息；4. 认真学习实习相关知识和技能。希望能对你有所帮助',
        'time': '2022-7-31 22:31',
        'comments': '124',
        'likes': '3002',
        'image': 'assets/userinfo/post/post20.jpg'
      },
    ]
  },
  { 'name': '史紫安',
    'sex':'female',
    'age': '26',
    'fans':'9',
    'following': '7',
    'background': 'assets/userinfo/background20.jpg',
    'avatar': 'assets/userinfo/avatar20.jpg',
    'email': 'huangsan@qq.com',
    'phone':'186-1234-5678',
    'intro': '热爱音乐，会弹吉他和钢琴，也喜欢唱歌，常常会在朋友圈分享自己的演奏和歌唱视频。',
    'post' : [
      {
        'title': '如何有效地学习外语？','name': '史紫安',
        'text': '学习外语是很多人的愿望，但很多人在学习外语时却遇到了各种困难。为了帮助大家更好地学习外语，我们整理了以下几个建议。首先，建立良好的学习习惯，如每天定时学习、做好笔记、复习等。其次，多听、多说、多读、多写，提高语言输入和输出能力。再次，了解外语文化，从文化中学习语言，可以帮助学习者更好地理解和运用语言。最后，可以使用各种学习工具，如语音软件、阅读材料、语言学习网站等。只要坚持不懈地学习，相信大家一定能够学好外语。',
        'time': '2023-05-03 15:30:00',
        'comments': '43',
        'likes': '298',
        'image': 'assets/userinfo/post/post39.jpg',
        'tags': '校内兼职'
      }
    ],
    'likes': [
      {
        'title': '参加校外实习的注意事项','name': '冉忆敏',
        'text': '参加校外实习是大学生活的重要组成部分，对于学生的专业学习和职业发展具有重要意义。参加校外实习需要注意以下几点：1. 安全第一，遵守相关规定；2. 提前准备好所需材料；3. 充分了解实习单位和岗位信息；4. 认真学习实习相关知识和技能。希望能对你有所帮助',
        'time': '2022-7-31 22:31',
        'comments': '124',
        'likes': '3002',
        'image': 'assets/userinfo/post/post20.jpg'
      },
    ]
  },
  { 'name': '许子爱',
    'sex':'female',
    'age': '25',
    'fans':'83',
    'following': '19',
    'background': 'assets/userinfo/background21.jpg',
    'avatar': 'assets/userinfo/avatar21.jpg',
    'email': 'zhangqi@qq.com',
    'phone':'139-8765-4321',
    'intro': '喜欢宠物，有一只猫和一只狗，常常会在社交媒体上分享自己和宠物的生活点滴。',
    'post' : [
      {
        'title': '做最好的自己','name': '许子爱',
        'text': '最做好的自己，是为了能够通过一些措施，更好的安排自己的时间，调整和自身的生活和工作状态，开发自身的潜能，这是一整套系统的工程，而且是要由里到外，并且可执行的措施。能够总结出如何做最好的自己的人，至少本身是一个成功人士，不然没有办法为人师，即使为人师也没有说服力。而李开复博士就非常符合这个要求。李开复老师的履历就不一一细表了，实在没有听说过你可以去问度娘了，他写的《做最好的自己》这本书就阐述了如何能够整个系统化的把个人状态调整到最好，也就是如何成功。这里的成功不是指仅仅用金钱来衡量，而是做最好的自己，也就是不断超越自己，发挥自己的兴趣和特长，从而发掘出自己的潜力，主动选择适合自己的道路。如果能做到这样的成功，物质上的财富也会伴随产生的。成功的前提是建立在正确的价值观上。一个人价值观不正确，无论怎么努力，都会距离成功走偏，因为价值观是知道所有态度和行为的根本因素。而在正确的价值观背后，有六种人生态度对渴求成功的人来说最重要，分别是积极，同理心，自信，自省，勇气，胸怀。而只有人生态度还不行，还要有行为方式来承载价值观和人生态度，这样才能逐渐改变人生，不然就只停留在空想中。所以相对应的六种最基本的行为方式是寻求理想，发现兴趣，有效执行，努力学习，人机交流，合作沟通。如果按照这样的逻辑细化，就构成这样完整的一个成功同心圆。',
        'time': '2022-03-22 13:30:00',
        'comments': '654',
        'likes':'489',
        'image': 'assets/userinfo/post/post36.jpg',
        'tags': '嘻哈'
      },
    ],
    'likes': [
      {
        'title': '参加校外实习的注意事项','name': '冉忆敏',
        'text': '参加校外实习是大学生活的重要组成部分，对于学生的专业学习和职业发展具有重要意义。参加校外实习需要注意以下几点：1. 安全第一，遵守相关规定；2. 提前准备好所需材料；3. 充分了解实习单位和岗位信息；4. 认真学习实习相关知识和技能。希望能对你有所帮助',
        'time': '2022-7-31 22:31',
        'comments': '124',
        'likes': '3002',
        'image': 'assets/userinfo/post/post20.jpg'
      },
    ]
  },
  { 'name': '幸松月',
    'sex':'female',
    'age': '22',
    'fans':'109',
    'following': '26',
    'background': 'assets/userinfo/background22.jpg',
    'avatar': 'assets/userinfo/avatar22.jpg',
    'email': 'liuwu@qq.com',
    'phone':'136-7890-2345',
    'intro': '热爱自然，喜欢探索自然和保护环境，经常会参加户外探险和环保活动。',
    'post' : [
      {
        'title': '学生会举办“文艺汇演”活动','name': '幸松月',
        'text': '为丰富同学们的课余生活，学生会将在学校举办“文艺汇演”活动。活动将包括歌曲演唱、舞蹈表演、相声小品等多种节目形式，展现同学们的才艺和风采。此外，活动还设置了抽奖和小游戏环节，增加互动和趣味性。欢迎同学们前来观看和参与。',
        'time': '2022-12-05 19:30:00',
        'comments': '123',
        'likes': '450',
        'image': 'assets/userinfo/post/post37.jpg',
        'tags': '情感'
      }
    ],
    'likes':[
      {
        'title': '学习小技巧：如何高效记忆英语单词','name': '习睿瑶',
        'text': '英语单词是学习英语的重要基础，但记忆单词常常是一个棘手的问题。下面介绍几个高效记忆英语单词的方法：1. 使用联想记忆法；2. 创造一个有趣的故事来记忆单词；3. 利用语境记忆。希望这些方法能够帮助大家更加轻松地记忆英语单词。',
        'time': '2022-10-20 15:45:00',
        'comments': '402',
        'likes': '1203',
        'image': 'assets/userinfo/post/post53.jpg'
      },
    ]
  },
  { 'name': '习睿瑶',
    'sex':'female',
    'age': '20',
    'fans':'0',
    'following': '1',
    'background': 'assets/userinfo/background23.jpg',
    'avatar': 'assets/userinfo/avatar23.jpg',
    'email': 'sunjiu@qq.com',
    'phone':'150-8765-4321',
    'intro': '喜欢烹饪，擅长中式菜肴和西式烘焙，经常会在家中做出各种美食招待朋友。',
    'post': [
      {
        'title': '学习小技巧：如何高效记忆英语单词','name': '习睿瑶',
        'text': '英语单词是学习英语的重要基础，但记忆单词常常是一个棘手的问题。下面介绍几个高效记忆英语单词的方法：1. 使用联想记忆法；2. 创造一个有趣的故事来记忆单词；3. 利用语境记忆。希望这些方法能够帮助大家更加轻松地记忆英语单词。',
        'time': '2022-10-20 15:45:00',
        'comments': '402',
        'likes': '1203',
        'image': 'assets/userinfo/post/post53.jpg',
        'tags': '吐槽爆料'
      },
    ],
    'likes':[
      {
        'title': '学生会举办公益活动','name': '周三',
        'text': '学生会将于11月20日举办公益活动，为当地的贫困儿童送去温暖和关爱。学生会成员将会和志愿者们一起为孩子们准备礼物、食品和学习用品，帮助他们度过一个愉快的周末。此外，学生会还将为孩子们准备丰富的温馨晚餐。希望这能为他们带来更多的社会关注度，让更多的人认识他们、帮助他们。',
        'time': '2021-09-08 9:43',
        'comments': '984',
        'likes': '19462',
        'image': 'assets/userinfo/post/post50.jpg'
      }
    ]
  },
  { 'name': '周三',
    'sex':'male',
    'age': '22',
    'fans':'0',
    'following': '1',
    'background': 'assets/userinfo/background24.jpg',
    'avatar': 'assets/userinfo/avatar24.jpg',
    'email': 'zhousan@qq.com',
    'phone':'189-1234-5678',
    'intro': '沉迷于阅读科幻小说和漫画，对未来和科技充满好奇和探索欲。',
    'post': [
      {
        'title': '学生会举办公益活动','name': '周三',
        'text': '学生会将于11月20日举办公益活动，为当地的贫困儿童送去温暖和关爱。学生会成员将会和志愿者们一起为孩子们准备礼物、食品和学习用品，帮助他们度过一个愉快的周末。此外，学生会还将为孩子们准备丰富的温馨晚餐。希望这能为他们带来更多的社会关注度，让更多的人认识他们、帮助他们。',
        'time': '2021-09-08 9:43',
        'comments': '984',
        'likes': '19462',
        'image': 'assets/userinfo/post/post50.jpg',
        'tags': '日常生活'
      }
    ],
    'likes': [
      {
        'title': '校园招聘会即将举行','name': '庄尤莲',
        'text': '为帮助即将毕业的学生顺利就业，学校将举办校园招聘会。招聘会将邀请多家知名企业和机构到校招聘，并提供多种职位和岗位选择。同时，我们还将为学生提供求职指导和面试技巧培训，以帮助他们更好地应对就业挑战。我们希望通过这个平台，为学生和企业搭建起良好的交流和合作平台。',
        'time': '2022-11-01 10:00:00',
        'comments': '89',
        'likes': '422',
        'image': 'assets/userinfo/post/post60.jpg'
      },
    ]
  },
  { 'name': '庄尤莲',
    'sex':'female',
    'age': '19',
    'fans':'40',
    'following': '109',
    'background': 'assets/userinfo/background25.jpg',
    'avatar': 'assets/userinfo/avatar25.jpg',
    'email': 'qianjiu@qq.com',
    'phone':'136-7654-3210',
    'intro': '健身和跑步是我的长项，经常会去健身房或户外跑步，保持健康的体魄。',
    'post': [
      {
        'title': '校园招聘会即将举行','name': '庄尤莲',
        'text': '为帮助即将毕业的学生顺利就业，学校将举办校园招聘会。招聘会将邀请多家知名企业和机构到校招聘，并提供多种职位和岗位选择。同时，我们还将为学生提供求职指导和面试技巧培训，以帮助他们更好地应对就业挑战。我们希望通过这个平台，为学生和企业搭建起良好的交流和合作平台。',
        'time': '2022-11-01 10:00:00',
        'comments': '89',
        'likes': '422',
        'image': 'assets/userinfo/post/post60.jpg',
        'tags': '家教'
      },
    ],
    'likes': [
      {
        'title': '文化节即将开始','name': '卓方玉',
        'text': '学校将在10月初举行一年一度的文化节活动，各社团和学生组织将进行展示和表演，以展示学校的多元文化。届时还将有美食节和手工艺品展销活动，让学生们能够享受美食和艺术的双重盛宴。',
        'time': '2022-09-28 15:00:00',
        'comments': '81',
        'likes': '301',
        'image': 'assets/userinfo/post/post10.jpg'
      }
    ]
  },
  { 'name': '卓方玉',
    'sex':'female',
    'age': '19',
    'fans':'85',
    'following': '254',
    'background': 'assets/userinfo/background26.jpg',
    'avatar': 'assets/userinfo/avatar26.jpg',
    'email': 'yangliu@163.com',
    'phone':'150-7890-1234',
    'intro': '喜欢手工制作，擅长编织和手工皮具制作，经常会制作出各种漂亮的手工作品。',
    'post': [
      {
        'title': '文化节即将开始','name': '卓方玉',
        'text': '学校将在10月初举行一年一度的文化节活动，各社团和学生组织将进行展示和表演，以展示学校的多元文化。届时还将有美食节和手工艺品展销活动，让学生们能够享受美食和艺术的双重盛宴。',
        'time': '2022-09-28 15:00:00',
        'comments': '81',
        'likes': '301',
        'image': 'assets/userinfo/post/post10.jpg',
        'tags': '家教'
      },
    ],
    'likes': [
      {
        'title': '毕业生招聘会举行','name': 'Hannah Johnson',
        'text': '学校将于本月底举办毕业生招聘会，各知名企业和机构将派出代表前来招聘。希望毕业生们能够抓住机会，获得满意的就业机会。',
        'time': '2022-10-30 10:00:00',
        'comments': '132',
        'likes': '423',
        'image': 'assets/userinfo/post/post12.jpg'
      }
    ]
  },
  { 'name': 'Hannah Johnson',
    'age': '20',
    'sex':'male',
    'fans':'3',
    'following': '417',
    'background': 'assets/userinfo/background27.jpg',
    'avatar': 'assets/userinfo/avatar27.jpg',
    'email': 'hannah@google.com',
    'phone':'555-555-1212',
    'intro': 'I am an avid runner and love participating in marathons. Age is just a number, and I plan to keep running for many more years to come.',
    'post': [
      {
        'title': '毕业生招聘会举行','name': 'Hannah Johnson',
        'text': '学校将于本月底举办毕业生招聘会，各知名企业和机构将派出代表前来招聘。希望毕业生们能够抓住机会，获得满意的就业机会。',
        'time': '2022-10-30 10:00:00',
        'comments': '132',
        'likes': '423',
        'image': 'assets/userinfo/post/post12.jpg',
        'tags': '家教'
      },
    ],
    'likes': [
      {
        'title': '新冠疫苗接种已经全面推行','name': 'Oliver Smith',
        'text': '为了应对新冠疫情，我国疫苗接种已经全面推行。接种疫苗是防止疫情传播和保障个人健康的重要手段，希望广大群众积极参与。',
        'time': '2023-04-28 09:30:00',
        'comments': '256',
        'likes': '1379',
        'image': 'assets/userinfo/post/post11.jpg'
      }
    ]
  },
  {
    'name': 'Oliver Smith',
    'age': '21',
    'sex':'male',
    'fans':'0',
    'following': '215',
    'background': 'assets/userinfo/background28.jpg',
    'avatar': 'assets/userinfo/avatar28.jpg',
    'email': 'oliver@google.com',
    'phone':'555-555-5555',
    'intro': 'I come from a family of engineers, and it was only natural for me to follow in their footsteps. I am passionate about technology and enjoy exploring the latest advancements.',
    'post': [
      {
        'title': '新冠疫苗接种已经全面推行','name': 'Oliver Smith',
        'text': '为了应对新冠疫情，我国疫苗接种已经全面推行。接种疫苗是防止疫情传播和保障个人健康的重要手段，希望广大群众积极参与。',
        'time': '2023-04-28 09:30:00',
        'comments': '256',
        'likes': '1379',
        'image': 'assets/userinfo/post/post11.jpg',
        'tags': '家教'
      }
    ],
    'likes': [
      {
        'title': '考研报名人数再创新高','name': 'Sophia Rodriguez',
        'text': '随着大学毕业生人数的增加，今年考研报名人数再次创下新高，竞争也越来越激烈。希望考生们把握好时间，认真备考，争取取得优异的成绩。',
        'time': '2023-04-25 12:15:00',
        'comments': '176',
        'likes': '943',
        'image': 'assets/userinfo/post/post14.jpg'
      }
    ]
  },
  { 'name': 'Sophia Rodriguez',
    'age': '22',
    'sex':'female',
    'fans':'43',
    'following': '325',
    'background': 'assets/userinfo/background29.jpg',
    'avatar': 'assets/userinfo/avatar29.jpg',
    'email': 'sophia@google.com',
    'phone':'555-123-4567',
    'intro': 'I come from a family of artists, and I have always loved expressing myself through painting. Age is just a number, and I plan to continue exploring this passion for many years to come.',
    'post': [
      {
        'title': '考研报名人数再创新高','name': 'Sophia Rodriguez',
        'text': '随着大学毕业生人数的增加，今年考研报名人数再次创下新高，竞争也越来越激烈。希望考生们把握好时间，认真备考，争取取得优异的成绩。',
        'time': '2023-04-25 12:15:00',
        'comments': '176',
        'likes': '943',
        'image': 'assets/userinfo/post/post14.jpg',
        'tags': '家教'
      }
    ],
    'likes': [
      {
        'title': '海外留学的注意事项','name': 'William Davis',
        'text': '出国留学需要考虑很多问题，比如签证、住宿、交通、语言等。建议有意出国留学的学生提前做好准备，提前了解目的地国家的文化和风俗，以免出现不必要的麻烦。',
        'time': '2023-04-23 11:30:00',
        'comments': '312',
        'likes': '1978',
        'image': 'assets/userinfo/post/post15.jpg'
      }
    ]
  },
  { 'name': 'William Davis',
    'age': '21',
    'sex':'male',
    'fans':'8',
    'following': '3',
    'background': 'assets/userinfo/background30.jpg',
    'avatar': 'assets/userinfo/avatar30.jpg',
    'email': 'william@google.com',
    'phone':'555-987-6543',
    'intro': 'I come from a small town in the South where hunting and fishing were a way of life. I enjoy spending my weekends in the great outdoors, and I always come back with a great catch.',
    'post': [
      {
        'title': '海外留学的注意事项','name': 'William Davis',
        'text': '出国留学需要考虑很多问题，比如签证、住宿、交通、语言等。建议有意出国留学的学生提前做好准备，提前了解目的地国家的文化和风俗，以免出现不必要的麻烦。',
        'time': '2023-04-23 11:30:00',
        'comments': '312',
        'likes': '1978',
        'image': 'assets/userinfo/post/post15.jpg',
        'tags': '家教'
      }
    ],
    'likes': [
      {
        'title': '海外留学的注意事项','name': 'William Davis',
        'text': '出国留学需要考虑很多问题，比如签证、住宿、交通、语言等。建议有意出国留学的学生提前做好准备，提前了解目的地国家的文化和风俗，以免出现不必要的麻烦。',
        'time': '2023-04-23 11:30:00',
        'comments': '312',
        'likes': '1978',
        'image': 'assets/userinfo/post/post15.jpg'
      }
    ]
  },
];
