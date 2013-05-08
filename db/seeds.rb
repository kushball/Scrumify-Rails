# This seeds file was generated on:  01/18/2012 at 02:02 AM

#  Florian Belliard
user = User.create(
  :email                  => 'florianbelliard@gmail.com',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Florian',
  :last_name              => 'Belliard',
  :discussion_section_1   => 2,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'pub@jeromequere.fr,blanc.hadrien@gmail.com,sacha.ott@gmail.com',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Stanley Chen
user = User.create(
  :email                  => 'stanchen43@gmail.com',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Stanley',
  :last_name              => 'Chen',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'mifelix@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Sacha Ott
user = User.create(
  :email                  => 'sacha.ott@gmail.com',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sacha',
  :last_name              => 'Ott',
  :discussion_section_1   => 2,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'blanc.hadrien@gmail.com,florianbelliard@gmail.com,pub@jeromequere.fr',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Jerome Quere
user = User.create(
  :email                  => 'pub@jeromequere.fr',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jerome',
  :last_name              => 'Quere',
  :discussion_section_1   => 1,
  :discussion_section_2   => 1,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'florianbelliard@gmail.com,sacha.ott@gmail.com,blanc.hadrien@gmail.com',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Karlin Wiens
user = User.create(
  :email                  => 'kwiens1988@pointloma.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Karlin',
  :last_name              => 'Wiens',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Erica Hang
user = User.create(
  :email                  => 'erhang@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Erica',
  :last_name              => 'Hang',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'nihashem@ucsd.edu,bshokati@ucsd.edu,echaddoc@ucsd.edu,j8sandov@ucsd.edu,mivora@ucsd.edu,ebeddows@ucsd.edu,vharihar@ucsd.edu,cbaltier@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id}
])


#  Stephanie Ho
user = User.create(
  :email                  => 'skho@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Stephanie',
  :last_name              => 'Ho',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'ktngo@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Hadrien Blanc
user = User.create(
  :email                  => 'blanc.hadrien@gmail.com',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Hadrien',
  :last_name              => 'Blanc',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'sacha.ott@gmail.com,pub@jeromequere.fr,florianbelliard@gmail.com',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Brian Lai
user = User.create(
  :email                  => 'bjlai@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Brian',
  :last_name              => 'Lai',
  :discussion_section_1   => 1,
  :discussion_section_2   => 3,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'gowong@ucsd.edu,s1cha@ucsd.edu,d7yu@ucsd.edu,zicao@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Mari Koba
user = User.create(
  :email                  => 'mkoba@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Mari',
  :last_name              => 'Koba',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kenneth Truong
user = User.create(
  :email                  => 'k2truong@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kenneth',
  :last_name              => 'Truong',
  :discussion_section_1   => 2,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Zhanzhan He
user = User.create(
  :email                  => 'z6he@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Zhanzhan',
  :last_name              => 'He',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  SHEUNG CHIT WAN
user = User.create(
  :email                  => 'scwan@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'SHEUNG CHIT',
  :last_name              => 'WAN',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'lorines@ucsd.edu,dechen@ucsd.edu,tsuzuki@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Kevin Liao
user = User.create(
  :email                  => 'ksliao@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kevin',
  :last_name              => 'Liao',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'd7yu@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Joshua Yudice
user = User.create(
  :email                  => 'jyudice@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Joshua',
  :last_name              => 'Yudice',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jsabilla@ucsd.edu,npappagi@ucsd.edu,jgilless@ucsd.edu,jkchang@ucsd.edu,dtsuneka@ucsd.edu,j8ngo@ucsd.edu,swngo@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Nima Hashemi
user = User.create(
  :email                  => 'nihashem@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Nima',
  :last_name              => 'Hashemi',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'bshokati@ucsd.edu,j8sandov@ucsd.edu,ebeddows@ucsd.edu,erhang@ucsd.edu,cbaltier@ucsd.edu,mivora@ucsd.edu,vharihar@ucsd.edu,echaddoc@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id}
])


#  Nelson Mei
user = User.create(
  :email                  => 'nemei@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Nelson',
  :last_name              => 'Mei',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id}
])


#  Justin Cha
user = User.create(
  :email                  => 'jwcha@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Justin',
  :last_name              => 'Cha',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Adam Kuipers
user = User.create(
  :email                  => 'akuipers@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Adam',
  :last_name              => 'Kuipers',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'bcta@ucsd.edu,c7lewis@ucsd.edu,mjammala@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Hung Viet Tran
user = User.create(
  :email                  => 'h6tran@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Hung Viet',
  :last_name              => 'Tran',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'mchetlap@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Sahil Shah
user = User.create(
  :email                  => 'sps001@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sahil',
  :last_name              => 'Shah',
  :discussion_section_1   => 2,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jsabilla@ucsd.edu,npappagi@ucsd.edu,dtsuneka@ucsd.edu,j8ngo@ucsd.edu,swngo@ucsd.edu,jgilless@ucsd.edu,jyudice@ucsd.edu,vivenkat@ucsd.edu,jkchang@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Shun Lui
user = User.create(
  :email                  => 's1lui@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Shun',
  :last_name              => 'Lui',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'zicao@ucsd.edu,knchao@ucsd.edu,lcam@ucsd.edu,hhho@ucsd.edu,k2truong@ucsd.edu,wavillan@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Ryan Rose
user = User.create(
  :email                  => 'rrose@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Ryan',
  :last_name              => 'Rose',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jcampos@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Scott Finkel
user = User.create(
  :email                  => 'safinkel@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Scott',
  :last_name              => 'Finkel',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'm1dalton@ucsd.edu,kstock@ucsd.edu,pjwilcox@ucsd.edu,jcolby@ucsd.edu,eching@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Gordon Wong
user = User.create(
  :email                  => 'gowong@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Gordon',
  :last_name              => 'Wong',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 0,
  :preferred_teammates    => 's1cha@ucsd.edu,bjlai@ucsd.edu,zicao@ucsd.edu,d7yu@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Varun Hariharan
user = User.create(
  :email                  => 'vharihar@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Varun',
  :last_name              => 'Hariharan',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'bshokati@ucsd.edu,cbaltier@ucsd.edu,erhang@ucsd.edu,echaddoc@ucsd.edu,nihashem@ucsd.edu,mivora@ucsd.edu,j8sandov@ucsd.edu,ebeddows@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id}
])


#  Lisa Ke
user = User.create(
  :email                  => 'lke@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Lisa',
  :last_name              => 'Ke',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Kylie Taitano
user = User.create(
  :email                  => 'ktaitano@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kylie',
  :last_name              => 'Taitano',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'dbhuynh@ucsd.edu,abhave@ucsd.edu,kehung@ucsd.edu,mchetlap@ucsd.edu,kkoa@ucsd.edu,akhumsaa@ucsd.edu,reli@ucsd.edu,b1hsu@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Jose Chen
user = User.create(
  :email                  => 'jmchen@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jose',
  :last_name              => 'Chen',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'yaz014@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Aditya Bhave
user = User.create(
  :email                  => 'abhave@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Aditya',
  :last_name              => 'Bhave',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'kkoa@ucsd.edu,ktaitano@ucsd.edu,dbhuynh@ucsd.edu,kehung@ucsd.edu,akhumsaa@ucsd.edu,b1hsu@ucsd.edu,mchetlap@ucsd.edu,reli@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Howard Ho
user = User.create(
  :email                  => 'hhho@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Howard',
  :last_name              => 'Ho',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'k2truong@ucsd.edu,wavillan@ucsd.edu,lcam@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id}
])


#  Kirsten Koa
user = User.create(
  :email                  => 'kkoa@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kirsten',
  :last_name              => 'Koa',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abhave@ucsd.edu,b1hsu@ucsd.edu,dbhuynh@ucsd.edu,ktaitano@ucsd.edu,wiguo@ucsd.edu,reli@ucsd.edu,akhumsaa@ucsd.edu,hhho@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Bosung Seo
user = User.create(
  :email                  => 'boseo@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Bosung',
  :last_name              => 'Seo',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 3,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Eliskhan  Sheripov
user = User.create(
  :email                  => 'ebeddows@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Eliskhan ',
  :last_name              => 'Sheripov',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'bshokati@ucsd.edu,j8sandov@ucsd.edu,vharihar@ucsd.edu,cbaltier@ucsd.edu,erhang@ucsd.edu,mivora@ucsd.edu,nihashem@ucsd.edu,echaddoc@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id}
])


#  Justin Kang
user = User.create(
  :email                  => 'jsk071@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Justin',
  :last_name              => 'Kang',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id}
])


#  Yos Sugianto
user = User.create(
  :email                  => 'ysugiant@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Yos',
  :last_name              => 'Sugianto',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'etanuwid@ucsd.edu,ncai@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Mahathee Chetlapalli
user = User.create(
  :email                  => 'mchetlap@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Mahathee',
  :last_name              => 'Chetlapalli',
  :discussion_section_1   => 2,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'ktaitano@ucsd.edu,dbhuynh@ucsd.edu,kkoa@ucsd.edu,abhave@ucsd.edu,b1hsu@ucsd.edu,reli@ucsd.edu,akhumsaa@ucsd.edu,kehung@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Beijing Lu
user = User.create(
  :email                  => 'belu@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Beijing',
  :last_name              => 'Lu',
  :discussion_section_1   => 0,
  :discussion_section_2   => 3,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Dan Tsunekawa
user = User.create(
  :email                  => 'dtsuneka@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Dan',
  :last_name              => 'Tsunekawa',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'j8ngo@ucsd.edu,sps001@ucsd.edu,swngo@ucsd.edu,npappagi@ucsd.edu,vivenkat@ucsd.edu,jsabilla@ucsd.edu,jgilless@ucsd.edu,jyudice@ucsd.edu,jkchang@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Kevin Ngo
user = User.create(
  :email                  => 'ktngo@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kevin',
  :last_name              => 'Ngo',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'skho@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Ryan Kuo
user = User.create(
  :email                  => 'rykuo@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Ryan',
  :last_name              => 'Kuo',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jehirst@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id}
])


#  Elizabeth Ching
user = User.create(
  :email                  => 'eching@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Elizabeth',
  :last_name              => 'Ching',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'mivora@ucsd.edu,rpaseman@ucsd.edu,safinkel@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Behzad Shokati
user = User.create(
  :email                  => 'bshokati@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Behzad',
  :last_name              => 'Shokati',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'echaddoc@ucsd.edu,ebeddows@ucsd.edu,j8sandov@ucsd.edu,vharihar@ucsd.edu,cbaltier@ucsd.edu,erhang@ucsd.edu,mivora@ucsd.edu,nihashem@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id}
])


#  Jacob Norris
user = User.create(
  :email                  => 'j2norris@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jacob',
  :last_name              => 'Norris',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Kin Kei  Wong
user = User.create(
  :email                  => 'kkw009@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kin Kei ',
  :last_name              => 'Wong',
  :discussion_section_1   => 1,
  :discussion_section_2   => 3,
  :discussion_section_3   => 0,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id}
])


#  Alexander Morris
user = User.create(
  :email                  => 'admorris@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Alexander',
  :last_name              => 'Morris',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'snmillar@ucsd.edu,akuipers@ucsd.edu,mjammala@ucsd.edu,lrace@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Chelsea  Baltierra
user = User.create(
  :email                  => 'cbaltier@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Chelsea ',
  :last_name              => 'Baltierra',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'bshokati@ucsd.edu,nihashem@ucsd.edu,echaddoc@ucsd.edu,mivora@ucsd.edu,ebeddows@ucsd.edu,j8sandov@ucsd.edu,vharihar@ucsd.edu,erhang@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id}
])


#  Sam Bartleman
user = User.create(
  :email                  => 'sbartlem@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sam',
  :last_name              => 'Bartleman',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Lisa Chen
user = User.create(
  :email                  => 'lwchen@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Lisa',
  :last_name              => 'Chen',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'jnt002@ucsd.edu,rykuo@ucsd.edu,ashilova@ucsd.edu,sogao@ucsd.edu,wiguo@ucsd.edu,nemei@ucsd.edu,bshokati@ucsd.edu,ake@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Brian Ta
user = User.create(
  :email                  => 'bcta@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Brian',
  :last_name              => 'Ta',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'akuipers@ucsd.edu,mjammala@ucsd.edu,c7lewis@ucsd.edu,lrace@ucsd.edu,snmillar@ucsd.edu,admorris@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Lincoln Race
user = User.create(
  :email                  => 'lrace@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Lincoln',
  :last_name              => 'Race',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'snmillar@ucsd.edu,mjammala@ucsd.edu,admorris@ucsd.edu,akuipers@ucsd.edu,c7lewis@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id}
])


#  Sara Millar
user = User.create(
  :email                  => 'snmillar@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sara',
  :last_name              => 'Millar',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'admorris@ucsd.edu,lrace@ucsd.edu,mjammala@ucsd.edu,bcta@ucsd.edu,c7lewis@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Dennis Chen
user = User.create(
  :email                  => 'dechen@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Dennis',
  :last_name              => 'Chen',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'lorines@ucsd.edu,tsuzuki@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id}
])


#  Leonardo Benevides
user = User.create(
  :email                  => 'leonardobenevides.puc@gmail.com',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Leonardo',
  :last_name              => 'Benevides',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kenney Cheung
user = User.create(
  :email                  => 'k4cheung@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kenney',
  :last_name              => 'Cheung',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Enrico Tanuwidjaja
user = User.create(
  :email                  => 'etanuwid@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Enrico',
  :last_name              => 'Tanuwidjaja',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'ysugiant@ucsd.edu,ncai@ucsd.edu,s1lui@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Leon Cam
user = User.create(
  :email                  => 'lcam@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Leon',
  :last_name              => 'Cam',
  :discussion_section_1   => 1,
  :discussion_section_2   => 1,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'hhho@ucsd.edu,s1lui@ucsd.edu,knchao@ucsd.edu,zicao@ucsd.edu,k2truong@ucsd.edu,wavillan@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Raymond Paseman
user = User.create(
  :email                  => 'rpaseman@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Raymond',
  :last_name              => 'Paseman',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Shaun Dowling
user = User.create(
  :email                  => 'smdowlin@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Shaun',
  :last_name              => 'Dowling',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Sepehr Safii
user = User.create(
  :email                  => 'sesafii@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sepehr',
  :last_name              => 'Safii',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Wilson Villanueva
user = User.create(
  :email                  => 'wavillan@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Wilson',
  :last_name              => 'Villanueva',
  :discussion_section_1   => 2,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'hhho@ucsd.edu,a1bernar@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Brian Hsu
user = User.create(
  :email                  => 'b1hsu@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Brian',
  :last_name              => 'Hsu',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'kkoa@ucsd.edu,ktaitano@ucsd.edu,dbhuynh@ucsd.edu,reli@ucsd.edu,akhumsaa@ucsd.edu,mchetlap@ucsd.edu,abhave@ucsd.edu,kehung@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Juan Campos
user = User.create(
  :email                  => 'jcampos@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Juan',
  :last_name              => 'Campos',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'rrose@ucsd.edu,tjjensen@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Jack Gersten
user = User.create(
  :email                  => 'jagerste@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jack',
  :last_name              => 'Gersten',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id}
])


#  Kittinan Ponkaew
user = User.create(
  :email                  => 'kponkaew@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kittinan',
  :last_name              => 'Ponkaew',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'tdanh@ucsd.edu,yaz014@ucsd.edu,jmchen@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Theresa  Danh
user = User.create(
  :email                  => 'tdanh@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Theresa ',
  :last_name              => 'Danh',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'kponkaew@ucsd.edu,yaz014@ucsd.edu,jmchen@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Jonathan Yuan
user = User.create(
  :email                  => 'j4yuan@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jonathan',
  :last_name              => 'Yuan',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  John Emanuelle Sabilla
user = User.create(
  :email                  => 'jsabilla@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'John Emanuelle',
  :last_name              => 'Sabilla',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'sps001@ucsd.edu,j8ngo@ucsd.edu,dtsuneka@ucsd.edu,jgilless@ucsd.edu,jyudice@ucsd.edu,vivenkat@ucsd.edu,npappagi@ucsd.edu,jkchang@ucsd.edu,swngo@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Jeffrey Ngo
user = User.create(
  :email                  => 'j8ngo@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jeffrey',
  :last_name              => 'Ngo',
  :discussion_section_1   => 2,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jkchang@ucsd.edu,jsabilla@ucsd.edu,dtsuneka@ucsd.edu,npappagi@ucsd.edu,sps001@ucsd.edu,swngo@ucsd.edu,vivenkat@ucsd.edu,jyudice@ucsd.edu,jgilless@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Jason Sandoval
user = User.create(
  :email                  => 'j8sandov@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jason',
  :last_name              => 'Sandoval',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'bshokati@ucsd.edu,ebeddows@ucsd.edu,echaddoc@ucsd.edu,vharihar@ucsd.edu,cbaltier@ucsd.edu,erhang@ucsd.edu,mivora@ucsd.edu,nihashem@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id}
])


#  Alan Khumsaard
user = User.create(
  :email                  => 'akhumsaa@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Alan',
  :last_name              => 'Khumsaard',
  :discussion_section_1   => 2,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'dbhuynh@ucsd.edu,ktaitano@ucsd.edu,kkoa@ucsd.edu,mchetlap@ucsd.edu,kehung@ucsd.edu,b1hsu@ucsd.edu,reli@ucsd.edu,abhave@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id}
])


#  Allen Bernardo Jr
user = User.create(
  :email                  => 'a1bernar@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Allen',
  :last_name              => 'Bernardo Jr',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'wavillan@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Vinay Venkatesh
user = User.create(
  :email                  => 'vivenkat@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Vinay',
  :last_name              => 'Venkatesh',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jsabilla@ucsd.edu,sps001@ucsd.edu,j8ngo@ucsd.edu,jkchang@ucsd.edu,swngo@ucsd.edu,dtsuneka@ucsd.edu,npappagi@ucsd.edu,jyudice@ucsd.edu,jgilless@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Sherry Cha
user = User.create(
  :email                  => 's1cha@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sherry',
  :last_name              => 'Cha',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'gowong@ucsd.edu,zicao@ucsd.edu,d7yu@ucsd.edu,bjlai@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Anne Brookes
user = User.create(
  :email                  => 'abrookes@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Anne',
  :last_name              => 'Brookes',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'amgarlan@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Michael Yokoi
user = User.create(
  :email                  => 'myokoi@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Michael',
  :last_name              => 'Yokoi',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Joshua Gilless
user = User.create(
  :email                  => 'jgilless@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Joshua',
  :last_name              => 'Gilless',
  :discussion_section_1   => 2,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jyudice@ucsd.edu,jsabilla@ucsd.edu,vivenkat@ucsd.edu,j8ngo@ucsd.edu,dtsuneka@ucsd.edu,sps001@ucsd.edu,swngo@ucsd.edu,jkchang@ucsd.edu,npappagi@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Nico Pappagianis
user = User.create(
  :email                  => 'npappagi@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Nico',
  :last_name              => 'Pappagianis',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jsabilla@ucsd.edu,sps001@ucsd.edu,jkchang@ucsd.edu,swngo@ucsd.edu,j8ngo@ucsd.edu,jyudice@ucsd.edu,jgilless@ucsd.edu,vivenkat@ucsd.edu,dtsuneka@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kevin Hung
user = User.create(
  :email                  => 'kehung@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kevin',
  :last_name              => 'Hung',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'akhumsaa@ucsd.edu,dbhuynh@ucsd.edu,b1hsu@ucsd.edu,ktaitano@ucsd.edu,kkoa@ucsd.edu,abhave@ucsd.edu,mchetlap@ucsd.edu,reli@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Michael Chao
user = User.create(
  :email                  => 'mmchao@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Michael',
  :last_name              => 'Chao',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'tyc007@ucsd.edu,ake@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Rentao Li
user = User.create(
  :email                  => 'reli@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Rentao',
  :last_name              => 'Li',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'kkoa@ucsd.edu,akhumsaa@ucsd.edu,b1hsu@ucsd.edu,dbhuynh@ucsd.edu,mchetlap@ucsd.edu,ktaitano@ucsd.edu,abhave@ucsd.edu,kehung@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Scott Ngo
user = User.create(
  :email                  => 'swngo@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Scott',
  :last_name              => 'Ngo',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'j8ngo@ucsd.edu,vivenkat@ucsd.edu,jsabilla@ucsd.edu,dtsuneka@ucsd.edu,npappagi@ucsd.edu,sps001@ucsd.edu,jyudice@ucsd.edu,jkchang@ucsd.edu,jgilless@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Tzu-Lin Liu
user = User.create(
  :email                  => 'tzliu@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Tzu-Lin',
  :last_name              => 'Liu',
  :discussion_section_1   => 2,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jmj010@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Tony Chan
user = User.create(
  :email                  => 'tyc007@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Tony',
  :last_name              => 'Chan',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'mmchao@ucsd.edu,ake@ucsd.edu,gowong@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id}
])


#  Derek Huynh
user = User.create(
  :email                  => 'dbhuynh@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Derek',
  :last_name              => 'Huynh',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abhave@ucsd.edu,b1hsu@ucsd.edu,kkoa@ucsd.edu,ktaitano@ucsd.edu,akhumsaa@ucsd.edu,mchetlap@ucsd.edu,kehung@ucsd.edu,reli@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Arun Mehta
user = User.create(
  :email                  => 'a2mehta@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Arun',
  :last_name              => 'Mehta',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'nihashem@ucsd.edu,kstock@ucsd.edu,sbartlem@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Madhav Srinivasan
user = User.create(
  :email                  => 'masriniv@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Madhav',
  :last_name              => 'Srinivasan',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Jacob Haile
user = User.create(
  :email                  => 'jhaile@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jacob',
  :last_name              => 'Haile',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id}
])


#  Ivy Chen
user = User.create(
  :email                  => 'ivchen@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Ivy',
  :last_name              => 'Chen',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Aditya  Mangipudi
user = User.create(
  :email                  => 'amangipu@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Aditya ',
  :last_name              => 'Mangipudi',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Dustin Yu
user = User.create(
  :email                  => 'd7yu@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Dustin',
  :last_name              => 'Yu',
  :discussion_section_1   => 1,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'gowong@ucsd.edu,s1cha@ucsd.edu,bjlai@ucsd.edu,zicao@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Yalin Zhang
user = User.create(
  :email                  => 'yaz014@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Yalin',
  :last_name              => 'Zhang',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'jmchen@ucsd.edu,tdanh@ucsd.edu,kponkaew@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Ziqi Cao
user = User.create(
  :email                  => 'zicao@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Ziqi',
  :last_name              => 'Cao',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'gowong@ucsd.edu,knchao@ucsd.edu,s1lui@ucsd.edu,s1cha@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  miguel felix
user = User.create(
  :email                  => 'mifelix@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'miguel',
  :last_name              => 'felix',
  :discussion_section_1   => 2,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'stanchen43@gmail.com',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Jason Jung
user = User.create(
  :email                  => 'jmj010@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jason',
  :last_name              => 'Jung',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'tzliu@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Tsukumi Suzuki
user = User.create(
  :email                  => 'tsuzuki@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Tsukumi',
  :last_name              => 'Suzuki',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'dechen@ucsd.edu,lorines@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  DongBin koo
user = User.create(
  :email                  => 'dkoo@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'DongBin',
  :last_name              => 'koo',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'm1park@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Justin denBroeder
user = User.create(
  :email                  => 'jdenbroe@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Justin',
  :last_name              => 'denBroeder',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 0,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Chih Yuan Chen
user = User.create(
  :email                  => 'cyc027@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Chih Yuan',
  :last_name              => 'Chen',
  :discussion_section_1   => 1,
  :discussion_section_2   => 3,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Chase Murphy
user = User.create(
  :email                  => 'c5murphy@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Chase',
  :last_name              => 'Murphy',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Minjea Park
user = User.create(
  :email                  => 'm1park@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Minjea',
  :last_name              => 'Park',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'dkoo@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id}
])


#  Melissa Canivel
user = User.create(
  :email                  => 'mcanivel@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Melissa',
  :last_name              => 'Canivel',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kuong Chao
user = User.create(
  :email                  => 'knchao@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kuong',
  :last_name              => 'Chao',
  :discussion_section_1   => 2,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 's1lui@ucsd.edu,zicao@ucsd.edu,hhho@ucsd.edu,lcam@ucsd.edu,wavillan@ucsd.edu,k2truong@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Mishika Vora
user = User.create(
  :email                  => 'mivora@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Mishika',
  :last_name              => 'Vora',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'bshokati@ucsd.edu,echaddoc@ucsd.edu,ebeddows@ucsd.edu,cbaltier@ucsd.edu,j8sandov@ucsd.edu,vharihar@ucsd.edu,erhang@ucsd.edu,nihashem@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id}
])


#  Jonathan Colby
user = User.create(
  :email                  => 'jcolby@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jonathan',
  :last_name              => 'Colby',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'pjwilcox@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kevin Nevalsky
user = User.create(
  :email                  => 'knevalsk@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kevin',
  :last_name              => 'Nevalsky',
  :discussion_section_1   => 1,
  :discussion_section_2   => 1,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'echaddoc@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Parry Wilcox
user = User.create(
  :email                  => 'pjwilcox@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Parry',
  :last_name              => 'Wilcox',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'jcolby@ucsd.edu,m1dalton@ucsd.edu,safinkel@ucsd.edu,kstock@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Nai (Winston) Cai
user = User.create(
  :email                  => 'ncai@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Nai (Winston)',
  :last_name              => 'Cai',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'etanuwid@ucsd.edu,ysugiant@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Molly Dalton
user = User.create(
  :email                  => 'm1dalton@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Molly',
  :last_name              => 'Dalton',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'pjwilcox@ucsd.edu,safinkel@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Mana Jammalamadaka
user = User.create(
  :email                  => 'mjammala@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Mana',
  :last_name              => 'Jammalamadaka',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'akuipers@ucsd.edu,bcta@ucsd.edu,c7lewis@ucsd.edu,snmillar@ucsd.edu,lrace@ucsd.edu,admorris@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Elizabeth Chaddock
user = User.create(
  :email                  => 'echaddoc@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Elizabeth',
  :last_name              => 'Chaddock',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'bshokati@ucsd.edu,nihashem@ucsd.edu,erhang@ucsd.edu,ebeddows@ucsd.edu,j8sandov@ucsd.edu,vharihar@ucsd.edu,cbaltier@ucsd.edu,mivora@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id}
])


#  Leopoldo Orines
user = User.create(
  :email                  => 'lorines@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Leopoldo',
  :last_name              => 'Orines',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'dechen@ucsd.edu,tsuzuki@ucsd.edu,scwan@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Kyle Stock
user = User.create(
  :email                  => 'kstock@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kyle',
  :last_name              => 'Stock',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'a2mehta@ucsd.edu,safinkel@ucsd.edu,pjwilcox@ucsd.edu,sogao@ucsd.edu,jcolby@ucsd.edu,m1dalton@ucsd.edu,gowong@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Jonathan Chang
user = User.create(
  :email                  => 'jkchang@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jonathan',
  :last_name              => 'Chang',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'j8ngo@ucsd.edu,jsabilla@ucsd.edu,dtsuneka@ucsd.edu,npappagi@ucsd.edu,vivenkat@ucsd.edu,sps001@ucsd.edu,swngo@ucsd.edu,jgilless@ucsd.edu,jyudice@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Corbin Lewis
user = User.create(
  :email                  => 'c7lewis@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Corbin',
  :last_name              => 'Lewis',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'akuipers@ucsd.edu,bcta@ucsd.edu,lrace@ucsd.edu,snmillar@ucsd.edu,admorris@ucsd.edu,amgarlan@ucsd.edu,mjammala@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Christopher Tung
user = User.create(
  :email                  => 'cstung@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Christopher',
  :last_name              => 'Tung',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Brad Shein
user = User.create(
  :email                  => 'bshein@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Brad',
  :last_name              => 'Shein',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Asher Garland
user = User.create(
  :email                  => 'amgarlan@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Asher',
  :last_name              => 'Garland',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abrookes@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Gina Chen
user = User.create(
  :email                  => 'g8chen@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Gina',
  :last_name              => 'Chen',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'yaz014@ucsd.edu,jmchen@ucsd.edu,tdanh@ucsd.edu,kponkaew@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Song Gao
user = User.create(
  :email                  => 'sogao@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Song',
  :last_name              => 'Gao',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'safinkel@ucsd.edu,kstock@ucsd.edu,pjwilcox@ucsd.edu',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Akira Torrijos
user = User.create(
  :email                  => 'atorrijo@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Akira',
  :last_name              => 'Torrijos',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id}
])


#  Nishaad Ajani
user = User.create(
  :email                  => 'najani@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Nishaad',
  :last_name              => 'Ajani',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Tyler Jensen
user = User.create(
  :email                  => 'tjjensen@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Tyler',
  :last_name              => 'Jensen',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => '',
  :signup_status          => 'completed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])