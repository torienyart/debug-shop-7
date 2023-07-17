# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Merchants
bike_shop = Merchant.create(name: "Brian's Bike Shop", address: '123 Bike Rd.', city: 'Richmond', state: 'VA', zip: 80203)
dog_shop = Merchant.create(name: "Meg's Dog Shop", address: '123 Dog Rd.', city: 'Hershey', state: 'PA', zip: 80203)
plant_shop = Merchant.create(name: "Mike's Plant Shop", address: '123 Plant Rd.', city: 'Colorado Springs', state: 'CO', zip: 80203)
motorcycle_shop = Merchant.create(name: "Ian's Motorcycle Shop", address: '123 Moto Rd.', city: 'Toronto', state: 'ON', zip: 80203)


#Bike Shop Items
gatorskins = bike_shop.items.create(name: "Gatorskins", description: "They'll never pop!", price: 100, image: "https://www.rei.com/media/4e1f5b05-27ef-4267-bb9a-14e35935f218?size=784x588", inventory: 12)
chain = bike_shop.items.create(name: "Chain", description: "It'll never break!", price: 50, image: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcR7MVMvFhZ34CbnJowb16Swn8No95tVHys3EvCwhiTA37lGV2neDAXS1REAUIfl&usqp=CAc", inventory: 6)
handlebar_tape = bike_shop.items.create(name: "Tape", description: "It'll probably still get dirty and torn", price: 20, image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcScoYgbSvm543Vvn6xyohSaOij7uva9Y-jVyqaHhctHCOnNcJES-dFvdhJPR4zCBHe0XSKG_g2z6rHLljR6T7esl2sFPEZ32qAmtsbT1mr7eyUpP9pIz9Aw&usqp=CAc", inventory: 15)

#Dog Shop Items
dog_bone = dog_shop.items.create(name: "Dog Bone", description: "Your pup will love these!", price: 9, image: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTbvg2nDtPwNI4IfQmOfpWFz5Vf4e0EJtPz_uXcdeWPUOcv_OK5v2ZVOrUaLXQbL8_TQqhZCibJUhQ&usqp=CAc", inventory: 8)
pull_toy = dog_shop.items.create(name: "Pull Toy", description: "Your pup can pull on this!", price: 12, image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRDjsovY3VlFIStTN-6LNC3AIP2OJkl_g7DZNrkI-JkXi7I4M9siAUTcVVLU71YGg&usqp=CAc", inventory: 6)
dog_food = dog_shop.items.create(name: "Dog Food", description: "Your pup will love this food!", price: 55, image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQZzglKvKQrZCY9DAcFMbirtanrtWuTtfI98D8KlhId1R-ucSsMLIvdugTXvGZOkw&usqp=CAc", inventory: 18)
