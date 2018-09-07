User.create(
    first_name: 'Peter', 
    last_name: 'Parker',
    phone: '212-867-5309',
    email: 'parkingpeters@gmail.com',
    password: '123456',
    )

Car.create(
    nickname: 'Nighthawk',
    description: 'Black Viper',
    default: true
)

Parking.create(
    user_id: 1,
    car_id: 1,
)
