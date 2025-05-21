insert into people(name, national_id)
values
    ('Ali Ahmadi', '4650299218'),
    ('Mahsa Moradi', '4650266128');

insert into students (person_id, student_number, major)
values (1, '40313044', 'Math');

insert into professors (person_id, service_number, department, scientific_degree)
values (2, '40213022', 'Computer science', 'Master');

insert into foods (name, price)
values
    ('Ghorme sabzi', 1200),
    ('Jooje', 1500);

insert into menus (date, food_id)
values
    ('2025-02-03', 1),
    ('2025-02-05', 2);

insert into ordrers (menu_id, person_id)
values
    (1, 2),
    (1, 2),
    (2, 2),
    (2, 1);

