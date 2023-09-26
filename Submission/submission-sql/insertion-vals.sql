USE LittleLemonDB;
INSERT INTO menu (MenuID, MenuItem, Category, Price)
VALUES
(1,'Olives','Starters',5),
(2,'Flatbread','Starters', 5),
(3, 'Minestrone', 'Starters', 8),
(4, 'Tomato bread','Starters', 8),
(5, 'Falafel', 'Starters', 7),
(6, 'Hummus', 'Starters', 5),
(7, 'Kabasa', 'Main Courses', 17),
(8, 'Greek salad', 'Main Courses', 15),
(9, 'Bean soup', 'Main Courses', 12),
(10, 'Pizza', 'Main Courses', 15),
(11,'Greek yoghurt','Desserts', 7),
(12, 'Ice cream', 'Desserts', 6),
(13, 'Cheesecake', 'Desserts', 4),
(14, 'Athens White wine', 'Drinks', 25),
(15, 'Corfu Red Wine', 'Drinks', 30),
(16, 'Turkish Coffee', 'Drinks', 10);

INSERT INTO Customers (CustomerID, FullName, ContactNumber, Email)
VALUES
(1, 'Vanessa McCarthy', 111111, 'abc123@gmail.com'),
(2, 'Marcos Romero', 222222, 'abc123@gmail.com'),
(3, 'Anna Iversen', 333333, 'abc123@gmail.com'),
(4, 'Joakim Iversen', 444444, 'abc123@gmail.com'),
(5, 'Diana Pinto', 555555, 'abc123@gmail.com'),
(6, 'Hiroki Yamane', 666666, 'abc123@gmail.com');

INSERT INTO staff (StaffName, Role, Number, Email)
VALUES
('Mario Gollini','Manager', 351258074, 'Mario.g@littlelemon.com', '70000'),
('Adrian Gollini','Assistant Manager', 351474048, 'Adrian.g@littlelemon.com'),
('Giorgos Dioudis','Head Chef', 351970582, 'Giorgos.d@littlelemon.com'),
('Fatma Kaya','Assistant Chef', 351963569, 'Fatma.k@littlelemon.com'),
('Elena Salvai','Head Waiter', 351074198, 'Elena.s@littlelemon.com'),
('John Millar','Receptionist', 351584508, 'John.m@littlelemon.com');

INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID, EmployeeID)
VALUES
(1, '2020-01-15', 3, 3, 1),
(2, '2020-08-25', 1, 4, 2),
(3, '2021-08-17', 1, 1, 3),
(4, '2021-08-14', 4, 2, 4),
(5, '2020-12-20', 6, 6, 6),
(6, '2020-03-01', 5, 5, 5);

INSERT INTO Orders (OrderID, MenuID, CustomerID, Quantity, TotalCost)
VALUES
(1, 1, 3, 6, 250),
(2, 2, 4, 5, 200),
(3, 2, 1, 3, 100),
(4, 3, 2, 4, 150),
(5, 1, 6, 2, 90),
(6, 4, 5, 1, 60);
