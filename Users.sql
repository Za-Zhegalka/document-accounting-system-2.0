CREATE DATABASE users;
USE users;


CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    username varchar(50) UNIQUE,
    password varchar(50),
    role varchar(50)
    );


INSERT INTO users (username, password, role) VALUES
    ("Главный менеджер", "admin_password", "Администратор"),
        ("Специалист отделения", "operator_password", "Оператор"),
        ("Секретарь", "user_password", "Пользователь"),
        ("Заказчик", "guest_password", "Внешний пользователь");


CREATE TABLE IF NOT EXISTS actions (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    action varchar(50),
    user varchar(50),
    time varchar(50)
    );


CREATE TABLE IF NOT EXISTS files (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name varchar(50),
    sender varchar(50),
    time varchar(50),
    status varchar(50)
    );
