insert into users( name, email, phone, role) values
( 'Alice', 'alice@example.com', '1234567890', 'customer'),
( 'Bob', 'bob@example.com', '0987654321', 'admin'),
( 'Charlie', 'charlie@example.com', '1122334455', 'customer');


insert into vehicles (
  name,
  type,
  model,
  registration_number,
  rental_price,
  status
) values
( 'Toyota Corolla', 'car', 2022, 'ABC-123', 50, 'available'),
( 'Honda Civic', 'car', 2021, 'DEF-456', 60, 'rented'),
( 'Yamaha R15', 'bike', 2023, 'GHI-789', 30, 'available'),
( 'Ford F-150', 'truck', 2020, 'JKL-012', 100, 'maintenance');



insert into bookings (
  booking_id,
  user_id,
  vehicle_id,
  start_date,
  end_date,
  status,
  total_cost
) values
(1, 1, 2, '2023-10-01', '2023-10-05', 'completed', 240),
(2, 1, 2, '2023-11-01', '2023-11-03', 'completed', 120),
(3, 3, 2, '2023-12-01', '2023-12-02', 'confirmed', 60),
(4, 1, 1, '2023-12-10', '2023-12-12', 'pending', 100);














