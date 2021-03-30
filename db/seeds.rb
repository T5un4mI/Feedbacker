# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
moscow_oblast = Region.create(name: 'Московская область')
leningrad_oblast = Region.create(name: 'Ленинградская область')


moscow = City.create(name: 'Москва', region: moscow_oblast)
balashikha = City.create(name: 'Балашиха',region: moscow_oblast)
petersburg = City.create(name: 'Питербург',region: leningrad_oblast) 

Feedback.create([
	{
		first_name: 'Тимофей',
    last_name: 'Косков',
    middle_name: 'Игнатьевич',
    city: moscow,
    phone: '(111)1111111',
    email: 'timofey22@rambler.ru',
    comment: 'Text',
	},
	{
		first_name: 'Марк',
    last_name: 'Бабат',
    middle_name: 'Ипполитович',
    city: balashikha,
    phone: '(222)2222222',
    email: 'mark12121966@yandex.ru',
    comment: 'Text',
	},
	{
		first_name: 'Надежда',
    last_name: 'Нежданова',
    middle_name: 'Порфнрьевна',
    city: moscow,
    phone: '(333)3333333',
    email: 'nadejda8466@rambler.ru',
    comment: 'Text',
	},
	{
		first_name: 'София',
    last_name: 'Юхтрица',
    middle_name: 'Трофимовна',
    city: balashikha,
    phone: '(444)4444444',
    email: 'sofiya8814@outlook.com',
    comment: 'Text',
	},
	{
		first_name: 'Яков',
    last_name: 'Шпикалов',
    middle_name: 'Леонидович',
    city: moscow,
    phone: '(555)5555555',
    email: 'yakov40@rambler.ru',
    comment: 'Text',
	},
	{
		first_name: 'Виктор',
    last_name: 'Пестов',
    middle_name: 'Тимофеевич',
    city: moscow,
    phone: '(959)6446012',
    email: 'viktor58@ya.ru',
    comment: 'Text',
	},
	{
		first_name: 'Елизавета',
    last_name: 'Баязова',
    middle_name: 'Климентьевна',
    city: petersburg,
    phone: '(997)9154792',
    email: 'elizaveta1983@outlook.com',
    comment: 'Text',
	},
	{
		first_name: 'Михаил',
    last_name: 'Чичерин',
    middle_name: 'Власович',
    city: petersburg,
    phone: '(922)9104022',
    email: 'mihail27121963@gmail.com',
    comment: 'Text',
	}
])