INSERT INTO officeadresses (office_name, street, city, region, country, postal_code, contact_email, contact_phone, working_hours)
VALUES ('Офис01', 'Пр. Стачек, 22', 'Вологда', 'Вологодская обл.', 'Россия', 160023, 'office01@bank.ru', '253647', '09:00-21:00'),
('Офис02', 'Ул. Свободы, 4', 'Москва', 'Московская обл.', 'Россия', 630145, 'office02@bank.ru', '867904', '09:00-21:00'),
('Офис03', 'Ул. Тереза, 13', 'Киров', 'Кировская обл.', 'Россия', 346578, 'office03@bank.ru', '987456', '09:00-21:00'),
('Офис04', 'Ул. Новаторов, 56', 'Москва', 'Московская обл.', 'Россия', 576489, 'office04@bank.ru', '387465', '09:00-21:00'),
('Офис05', 'Ул. Веткина, 45', 'Санкт-Петербург', 'Ленинградская обл.', 'Россия', 710589, 'office05@bank.ru', '845693', '09:00-21:00');

INSERT INTO clients (first_name, middle_name, last_name, date_of_birth, passport_data, phone, email, registration_date)
VALUES ('Иван', 'Иванович', 'Иванов', '1973-02-04', '1111 111111', '+71111111111', 'client01@site.ru', '2016-12-15T12:44:16'),
('Петр', 'Петрович', 'Петров', '1986-08-12', '2222 222222', '+72222222222', 'client02@site.ru', '2017-03-21T09:15:32'),
('Денис', 'Денисович', 'Денисов', '2000-12-18', '3333 333333', '+73333333333', 'client03@site.ru', '2018-05-10T14:22:45'),
('Федор', 'Федорович', 'Федоров', '1995-03-09', '4444 444444', '+74444444444', 'client04@site.ru', '2019-07-08T11:38:19'),
('Андрей', 'Андреевич', 'Андреев', '1973-05-20', '5555 555555', '+75555555555', 'client05@site.ru', '2020-01-17T16:51:03'),
('Алексей', 'Алексеевич', 'Алексеев', '1979-02-04', '6666 666666', '+76666666666', 'client06@site.ru', '2021-02-22T08:47:27'),
('Василий', 'Васильевич', 'Васильев', '1981-11-04', '7777 777777', '+77777777777', 'client07@site.ru', '2021-09-30T19:03:58'),
('Максим', 'Максимович', 'Максимов', '1997-09-25', '8888 888888', '+78888888888', 'client08@site.ru', '2022-04-05T13:12:34'),
('Дмитрий', 'Дмитриевич', 'Дмитов', '1996-07-14', '9999 999999', '+79999999999', 'client09@site.ru', '2022-11-11T10:29:41'),
('Михаил', 'Геннадьевич', 'Волков', '1992-05-17', '0000 000000', '+70000000000', 'client10@site.ru', '2023-06-19T15:47:12');

INSERT INTO order_status (status)
VALUES ('принят'),
('обрабатывается'),
('в работе'),
('отменен'),
('завершен');

INSERT INTO currency_type (currency)
VALUES ('RUB'),
('USD'),
('EUR'),
('CNY'),
('AED');

INSERT INTO orders (client_id, office_id, order_amount, currency_id, order_date, status_id, planned_date, comission, receipt_code, actual_date, cancellation_date,cancellation_comments, initiator)
VALUES (2, 1, 500000, 1, '2025-10-01T10:30:00', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2025-10-01T10:30:00')) WHEN 1 THEN 2 ELSE 1 END, '2025-10-01T10:30:00'), 1, '100001', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2025-10-01T10:30:00')) WHEN 1 THEN 3 ELSE 2 END, DATEADD(DAY, 2, '2025-10-01T10:30:00')), NULL, NULL, NULL),
(4, 2, 30000, 4, '2025-10-08T09:00:00', 4, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2025-10-08T09:00:00')) WHEN 1 THEN 2 ELSE 1 END, '2025-10-08T09:00:00'), 1, '100009', NULL, '2025-10-13T15:45:00', 'Отказ клиента', 2),
(8, 4, 8300, 5, '2025-10-10T09:55:36', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2025-10-10T09:55:36')) WHEN 1 THEN 2 ELSE 1 END, '2025-10-10T09:55:36'), 1, '100023', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 4, '2025-10-10T10:40:25')) WHEN 1 THEN 5 ELSE 4 END, DATEADD(DAY, 4, '2025-10-10T10:40:25')), NULL, NULL, NULL),
(7, 1, 10000, 5, '2025-10-15T09:15:32', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2025-10-15T09:15:32')) WHEN 1 THEN 3 ELSE 2 END, '2025-10-15T09:15:32'), 1, '100002', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 6, '2025-10-15T09:15:32')) WHEN 1 THEN 7 ELSE 6 END, DATEADD(DAY, 6, '2025-10-15T09:15:32')), NULL, NULL, NULL),
(1, 5, 730000, 1, '2025-10-17T08:15:24', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2025-10-17T08:15:24')) WHEN 1 THEN 2 ELSE 1 END, '2025-10-17T08:15:24'), 1, '100027', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 7, '2025-10-17T17:15:24')) WHEN 1 THEN 8 ELSE 7 END, DATEADD(DAY, 7, '2025-10-17T17:15:24')), NULL, NULL, NULL),
(5, 2, 800000, 1, '2025-10-22T15:40:12', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2025-10-22T15:40:12')) WHEN 1 THEN 3 ELSE 2 END, '2025-10-22T15:40:12'), 1, '100010', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 4, '2025-10-22T15:40:12')) WHEN 1 THEN 5 ELSE 4 END, DATEADD(DAY, 4, '2025-10-22T15:40:12')), NULL, NULL, NULL),
(10, 3, 27200, 5, '2025-10-29T13:55:11', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2025-10-29T13:55:11')) WHEN 1 THEN 3 ELSE 2 END, '2025-10-29T13:55:11'), 1, '100017', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 5, '2025-10-29T13:55:11')) WHEN 1 THEN 6 ELSE 5 END, DATEADD(DAY, 5, '2025-10-29T13:55:11')), NULL, NULL, NULL),
(2, 1, 7500, 2, '2025-11-05T14:20:45', 4, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 3, '2025-11-05T14:20:45')) WHEN 1 THEN 4 ELSE 3 END, '2025-11-05T14:20:45'), 1, '100003', NULL, '2025-11-08T11:30:00', 'Отказ клиента', 2),
(9, 2, 18000, 4, '2025-11-12T12:35:41', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 3, '2025-11-12T12:35:41')) WHEN 1 THEN 4 ELSE 3 END, '2025-11-12T12:35:41'), 1, '100011', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 9, '2025-11-12T12:35:41')) WHEN 1 THEN 10 ELSE 9 END, DATEADD(DAY, 9, '2025-11-12T12:35:41')), NULL, NULL, NULL),
(6, 3, 8900, 2, '2025-11-19T10:30:44', 4, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 3, '2025-11-19T10:30:44')) WHEN 1 THEN 4 ELSE 3 END, '2025-11-19T10:30:44'), 1, '100018', NULL, '2025-11-26T16:40:00', 'Отказ клиента', 6),
(7, 1, 2500, 3, '2025-11-20T11:45:22', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2025-11-20T11:45:22')) WHEN 1 THEN 2 ELSE 1 END, '2025-11-20T11:45:22'), 1, '100004', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 5, '2025-11-20T11:45:22')) WHEN 1 THEN 6 ELSE 5 END, DATEADD(DAY, 5, '2025-11-20T11:45:22')), NULL, NULL, NULL),
(8, 4, 10000, 2, '2025-11-25T14:30:48', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2025-11-25T14:30:48')) WHEN 1 THEN 2 ELSE 1 END, '2025-11-25T14:30:48'), 1, '100024', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 4, '2025-11-25T14:30:48')) WHEN 1 THEN 5 ELSE 4 END, DATEADD(DAY, 4, '2025-11-25T14:30:48')), NULL, NULL, NULL),
(4, 2, 4200000, 1, '2025-11-26T10:05:17', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2025-11-26T10:05:17')) WHEN 1 THEN 2 ELSE 1 END, '2025-11-26T10:05:17'), 1, '100012', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 3, '2025-11-26T10:05:17')) WHEN 1 THEN 4 ELSE 3 END, DATEADD(DAY, 3, '2025-11-26T10:05:17')), NULL, NULL, NULL),
(3, 5, 15800, 5, '2025-11-28T13:25:37', 4, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 3, '2025-11-28T13:25:37')) WHEN 1 THEN 4 ELSE 3 END, '2025-11-28T13:25:37'), 1, '100028', NULL, '2025-12-24T00:00:00', 'Истек срок ожидания', NULL),
(2, 1, 8500, 2, '2025-12-03T13:25:37', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2025-12-03T13:25:37')) WHEN 1 THEN 3 ELSE 2 END, '2025-12-03T13:25:37'), 1, '100005', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 0, '2025-12-05T13:25:37')) WHEN 1 THEN 1 ELSE 0 END, DATEADD(DAY, 2, '2025-12-03T13:25:37')), NULL, NULL, NULL),
(10, 3, 4400, 3, '2025-12-09T08:20:33', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2025-12-09T08:20:33')) WHEN 1 THEN 2 ELSE 1 END, '2025-12-09T08:20:33'), 1, '100019', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 8, '2025-12-09T08:20:33')) WHEN 1 THEN 9 ELSE 8 END, DATEADD(DAY, 8, '2025-12-09T08:20:33')), NULL, NULL, NULL),
(5, 2, 15000, 5, '2025-12-10T14:50:28', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2025-12-10T14:50:28')) WHEN 1 THEN 3 ELSE 2 END, '2025-12-10T14:50:28'), 1, '100013', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 7, '2025-12-10T14:50:28')) WHEN 1 THEN 8 ELSE 7 END, DATEADD(DAY, 7, '2025-12-10T14:50:28')), NULL, NULL, NULL),
(7, 1, 12000, 5, '2025-12-18T11:10:55', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2025-12-18T11:10:55')) WHEN 1 THEN 2 ELSE 1 END, '2025-12-18T11:10:55'), 1, '100006', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 8, '2025-12-18T11:10:55')) WHEN 1 THEN 9 ELSE 8 END, DATEADD(DAY, 8, '2025-12-18T11:10:55')), NULL, NULL, NULL),
(9, 2, 3800, 3, '2025-12-24T11:25:39', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 3, '2025-12-24T11:25:39')) WHEN 1 THEN 4 ELSE 3 END, '2025-12-24T11:25:39'), 1, '100014', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 0, '2025-12-27T11:25:39')) WHEN 1 THEN 1 ELSE 0 END, DATEADD(DAY, 3, '2025-12-24T11:25:39')), NULL, NULL, NULL),
(6, 3, 20000, 4, '2025-12-30T15:45:19', 4, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2025-12-30T15:45:19')) WHEN 1 THEN 7 ELSE 6 END, '2025-12-30T15:45:19'), 1, '100020', NULL, '2026-01-17T00:00:00', 'Истек срок ожидания', NULL),
(2, 1, 7500, 3, '2026-01-14T08:50:29', 4, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 3, '2026-01-14T08:50:29')) WHEN 1 THEN 4 ELSE 3 END, '2026-01-14T08:50:29'), 1, '100007', NULL, '2026-01-28T10:15:00', 'Истек срок ожидания', NULL),
(8, 4, 5500, 3, '2026-01-14T11:40:59', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 3, '2026-01-14T11:40:59')) WHEN 1 THEN 4 ELSE 3 END, '2026-01-14T11:40:59'), 1, '100025', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 0, '2026-01-17T11:40:59')) WHEN 1 THEN 1 ELSE 0 END, DATEADD(DAY, 3, '2026-01-14T11:40:59')), NULL, NULL, NULL),
(4, 2, 20300, 4, '2026-01-21T09:40:50', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2026-01-21T09:40:50')) WHEN 1 THEN 3 ELSE 2 END, '2026-01-21T09:40:50'), 1, '100015', NULL, '2026-02-04T00:00:00', 'Истек срок ожидания', NULL),
(1, 5, 9400, 2, '2026-01-23T10:35:42', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2026-01-23T10:35:42')) WHEN 1 THEN 2 ELSE 1 END, '2026-01-23T10:35:42'), 1, '100029', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2026-01-23T10:35:42')) WHEN 1 THEN 3 ELSE 2 END, DATEADD(DAY, 2, '2026-01-23T10:35:42')), NULL, NULL, NULL),
(10, 3, 1910000, 1, '2026-01-28T12:10:27', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2026-01-28T12:10:27')) WHEN 1 THEN 2 ELSE 1 END, '2026-01-28T12:10:27'), 1, '100021', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 6, '2026-01-28T12:10:27')) WHEN 1 THEN 7 ELSE 6 END, DATEADD(DAY, 6, '2026-01-28T12:10:27')), NULL, NULL, NULL),
(7, 1, 9500, 2, '2026-02-05T17:20:33', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 2, '2026-02-05T17:20:33')) WHEN 1 THEN 3 ELSE 2 END, '2026-02-05T17:20:33'), 1, '100008', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 8, '2026-02-05T17:20:33')) WHEN 1 THEN 9 ELSE 8 END, DATEADD(DAY, 8, '2026-02-05T17:20:33')), NULL, NULL, NULL),
(5, 2, 510000, 1, '2026-02-11T16:15:22', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2026-02-11T16:15:22')) WHEN 1 THEN 2 ELSE 1 END, '2026-02-11T16:15:22'), 1, '100016', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 10, '2026-02-11T16:15:22')) WHEN 1 THEN 11 ELSE 10 END, DATEADD(DAY, 10, '2026-02-11T16:15:22')), NULL, NULL, NULL),
(3, 5, 6200, 3, '2026-02-13T15:50:51', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2026-02-13T15:50:51')) WHEN 1 THEN 2 ELSE 1 END, '2026-02-13T15:50:51'), 1, '100030', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 6, '2026-02-13T15:50:51')) WHEN 1 THEN 7 ELSE 6 END, DATEADD(DAY, 3, '2026-02-13T15:50:51')), NULL, NULL, NULL),
(6, 3, 4200, 3, '2026-02-18T15:50:51', 3, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 3, '2026-02-18T15:50:51')) WHEN 1 THEN 4 ELSE 3 END, '2026-02-18T15:50:51'), 1, '100022', NULL, NULL, NULL, NULL),
(8, 4, 28900, 4, '2026-02-20T17:05:13', 5, DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 1, '2026-02-20T17:05:13')) WHEN 1 THEN 2 ELSE 1 END, '2026-02-20T17:05:13'), 1, '100026', DATEADD(DAY, CASE DATEPART(WEEKDAY, DATEADD(DAY, 0, '2026-02-20T17:05:13')) WHEN 1 THEN 1 ELSE 0 END, DATEADD(DAY, 3, '2026-02-20T17:05:13')), NULL, NULL, NULL);

INSERT INTO position_type (position)
VALUES ('Руководитель отделения'),
('Менеджер'),
('Инкассатор'),
('Разработчик'),
('Аналитик');

INSERT INTO employees (office_id, first_name, middle_name, last_name, position_id, work_email)
VALUES (1, 'Иван', 'Петрович', 'Денисов', 1, 'employee01@bank.ru'),
(1, 'Петр', 'Сергеевич', 'Иванов', 2, 'employee02@bank.ru'),
(1, 'Дмитрий', 'Андреевич', 'Кузнецов', 4, 'employee03@bank.ru'),
(1, 'Елена', 'Викторовна', 'Попова', 5, 'employee04@bank.ru'),
(1, 'Сергей', 'Игоревич', 'Васильев', 4, 'employee05@bank.ru'),
(1, 'Ольга', 'Дмитриевна', 'Павлова', 5, 'employee06@bank.ru'),
(1, 'Мария', 'Александровна', 'Соколова', 2, 'employee07@bank.ru'),
(2, 'Андрей', 'Владимирович', 'Михайлов', 1, 'employee08@bank.ru'),
(2, 'Кирилл', 'Олегович', 'Морозов', 2, 'employee09@bank.ru'),
(2, 'Татьяна', 'Юрьевна', 'Волкова', 4, 'employee10@bank.ru'),
(2, 'Никита', 'Артемович', 'Алексеев', 5, 'employee11@bank.ru'),
(2, 'Анна', 'Романовна', 'Лебедева', 2, 'employee12@bank.ru'),
(3, 'Владимир', 'Борисович', 'Семенов', 1, 'employee13@bank.ru'),
(3, 'Наталья', 'Ивановна', 'Егорова', 2, 'employee14@bank.ru'),
(3, 'Артем', 'Сергеевич', 'Степанов', 4, 'employee15@bank.ru'),
(3, 'Юлия', 'Алексеевна', 'Николаева', 5, 'employee16@bank.ru'),
(3, 'Екатерина', 'Валерьевна', 'Борисова', 4, 'employee17@bank.ru'),
(4, 'Александр', 'Викторович', 'Тимофеев', 1, 'employee18@bank.ru'),
(4, 'Ирина', 'Максимовна', 'Сидорова', 2, 'employee19@bank.ru'),
(4, 'Павел', 'Русланович', 'Антонов', 4, 'employee20@bank.ru'),
(4, 'Светлана', 'Эдуардовна', 'Григорьева', 5, 'employee21@bank.ru'),
(4, 'Роман', 'Витальевич', 'Тарасов', 2, 'employee22@bank.ru'),
(4, 'Валерия', 'Станиславовна', 'Белова', 5, 'employee23@bank.ru'),
(5, 'Денис', 'Михайлович', 'Орлов', 1, 'employee24@bank.ru'),
(5, 'Ксения', 'Андреевна', 'Александрова', 2, 'employee25@bank.ru'),
(5, 'Георгий', 'Тимурович', 'Макаров', 4, 'employee26@bank.ru'),
(5, 'Алина', 'Денисовна', 'Захарова', 5, 'employee27@bank.ru'),
(5, 'Константин', 'Эдуардович', 'Соловьев', 4, 'employee28@bank.ru'),
(5, 'Яна', 'Олеговна', 'Богданова', 2, 'employee29@bank.ru'),
(1, 'Алексей', 'Николаевич', 'Смирнов', 3, 'employee30@bank.ru'),
(2, 'Виктор', 'Степанович', 'Федоров', 3, 'employee31@bank.ru'),
(3, 'Максим', 'Денисович', 'Зайцев', 3, 'employee32@bank.ru'),
(4, 'Михаил', 'Петрович', 'Козлов', 3, 'employee33@bank.ru'),
(5, 'Григорий', 'Анатольевич', 'Медведев', 3, 'employee34@bank.ru');

INSERT INTO notification_status (status)
VALUES ('отправлено'),
('доставлено'),
('ошибка отправления');

INSERT INTO notification (order_id, client_id, employee_id, notification_text, delivery_method, status_id)
VALUES (1, 2, NULL, 'Наличные доставленны', 'email', 2),
(2, 4, NULL, 'Наличные доставленны', 'email', 2),
(2, 4, NULL, 'Заказ отменен', 'email', 2),
(2, NULL, 8, 'Заказ отменен', 'email', 2),
(3, 8, NULL, 'Наличные доставленны', 'email', 2),
(4, 7, NULL, 'Наличные доставленны', 'email', 2),
(5, 1, NULL, 'Наличные доставленны', 'email', 2),
(6, 5, NULL, 'Наличные доставленны', 'email', 2),
(7, 10, NULL, 'Наличные доставленны', 'email', 2),
(8, 2, NULL, 'Наличные доставленны', 'email', 2),
(8, 2, NULL, 'Заказ отменен', 'email', 2),
(8, NULL, 2, 'Заказ отменен', 'email', 2),
(9, 9, NULL, 'Наличные доставленны', 'email', 2),
(10, 6, NULL, 'Наличные доставленны', 'email', 2),
(10, 6, NULL, 'Заказ отменен', 'email', 2),
(10, NULL, 14, 'Заказ отменен', 'email', 2),
(11, 7, NULL, 'Наличные доставленны', 'email', 2),
(12, 8, NULL, 'Наличные доставленны', 'email', 2),
(13, 4, NULL, 'Наличные доставленны', 'email', 2),
(14, 3, NULL, 'Наличные доставленны', 'email', 2),
(14, 3, NULL, 'Заказ отменен, истек срок ожидания', 'email', 2),
(14, NULL, 29, 'Заказ отменен, истек срок ожидания', 'email', 2),
(15, 2, NULL, 'Наличные доставленны', 'email', 2),
(16, 10, NULL, 'Наличные доставленны', 'email', 2),
(17, 5, NULL, 'Наличные доставленны', 'email', 2),
(18, 7, NULL, 'Наличные доставленны', 'email', 2),
(19, 9, NULL, 'Наличные доставленны', 'email', 2),
(20, 6, NULL, 'Наличные доставленны', 'email', 2),
(20, 6, NULL, 'Заказ отменен, истек срок ожидания', 'email', 2),
(20, NULL, 14, 'Заказ отменен, истек срок ожидания', 'email', 2),
(21, 2, NULL, 'Наличные доставленны', 'email', 2),
(21, 2, NULL, 'Заказ отменен, истек срок ожидания', 'email', 2),
(21, NULL, 2, 'Заказ отменен, истек срок ожидания', 'email', 2),
(22, 8, NULL, 'Наличные доставленны', 'email', 2),
(23, 4, NULL, 'Наличные доставленны', 'email', 2),
(23, 4, NULL, 'Заказ отменен, истек срок ожидания', 'email', 2),
(23, NULL, 12, 'Заказ отменен, истек срок ожидания', 'email', 2),
(24, 1, NULL, 'Наличные доставленны', 'email', 2),
(25, 10, NULL, 'Наличные доставленны', 'email', 2),
(26, 7, NULL, 'Наличные доставленны', 'email', 2),
(27, 5, NULL, 'Наличные доставленны', 'email', 2),
(28, 3, NULL, 'Наличные доставленны', 'email', 2),
(29, 6, NULL, 'Наличные доставленны', 'email', 2),
(30, 8, NULL, 'Наличные доставленны', 'email', 2);

INSERT INTO collection (order_id, collector, office_id, collection_date, collection_amount, currency_id)
SELECT ord.order_id, e.employee_id, ord.office_id, ord.planned_date, ord.order_amount, ord.currency_id
FROM orders ord 
JOIN officeadresses o on ord.office_id=o.office_id
JOIN employees e on e.office_id=o.office_id
WHERE e.position_id=3
ORDER BY ord.order_id ASC


