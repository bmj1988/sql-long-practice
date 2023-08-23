DROP TABLE IF EXISTS customers;
drop table if exists coffee_orders;

Create Table customers (
  id integer primary key autoincrement,
  name varchar(40) NOT NULL,
  phone numeric (10,0) UNIQUE,
  email varchar(255) UNIQUE,
  points integer DEFAULT 5,
  created_at timestamp default current_time NOT NULL
);

CREATE Table coffee_orders (
    id integer primary key autoincrement,
    is_redeemed boolean default "FALSE",
    ordered_at timestamp default current_time NOT NULL,
    user_id NOT NULL,
    foreign key (user_id) references customers(id)
);
