Category.destroy_all
Discount.destroy_all 
Gym.destroy_all
OrderDiscount.destroy_all
OrderItem.destroy_all
Order.destroy_all
ProductCategory.destroy_all
ProductGym.destroy_all
Product.destroy_all
Quantity.destroy_all
Rating.destroy_all
Review.destroy_all
Size.destroy_all
UserGym.destroy_all
UserOrder.destroy_all
User.destroy_all



billy = User.create({
    name: "Billy Helm", 
    email: "billyut@rocketmail.com",
    password_digest: "password",
    security_question: "What is your favorite Color?",
    security_answer: "blue",
    status: "admin"
})

midtown = Gym.create({
    name: "F45 Midtown",
    address: "2600 Travis St, Houston, TX 77006",
    image: "https://scontent.fhou1-2.fna.fbcdn.net/v/t1.0-9/117930416_639971986895161_199182216534492185_o.jpg?_nc_cat=108&ccb=2&_nc_sid=8bfeb9&_nc_ohc=I6wx8Q0k0uQAX_k9kVM&_nc_ht=scontent.fhou1-2.fna&oh=4b85db45bd4f8614e26b350a9c488ea3&oe=5FDB4B37"
})
cinco = Gym.create({
    name: "F45 Cinco Ranch",
    address: "4950 Katy-Gaston Rd, Katy, TX 77494",
    image: "https://scontent.fhou1-1.fna.fbcdn.net/v/t1.0-9/118616138_2845650669054827_3538596098005370530_o.jpg?_nc_cat=104&ccb=2&_nc_sid=9267fe&_nc_ohc=Uk9l7k0MKs0AX9eFJPa&_nc_ht=scontent.fhou1-1.fna&oh=81c358bcc340a3d3fe923434d23e2e6f&oe=5FDDFE74"
})
kelliwood = Gym.create({
    name: "F45 Kelliwood",
    address: "21020 Highland Knolls Dr, Katy, TX 77450",
    image: "https://scontent.fhou1-2.fna.fbcdn.net/v/t1.0-9/98309131_2633414696916772_6749043718386352128_o.jpg?_nc_cat=105&ccb=2&_nc_sid=9267fe&_nc_ohc=idNzkEozDLwAX9NLFIp&_nc_ht=scontent.fhou1-2.fna&oh=ad612cdf8fb449719cc39939727802ac&oe=5FDBFFEC"
})

ug1 = UserGym.create({
    user_id: billy.id, 
    gym_id: midtown.id 
})

sizes = ['XS', 'S', 'M', 'L', 'XL']
newSizes = sizes.map{|size| Size.create({name: size})}
Size.create({name: 'One Size Fits All'})

tee = Category.create({name: 'Tee'})
tank = Category.create({name: 'Tank'})
jacket = Category.create({name: 'Jacket'})
accessory = Category.create({name: 'Accessory'})

tanks = ['https://i.postimg.cc/G2ZJWbzq/Crop-Tank-Dark-Grey-Heather-Midtown-HTX.png',
    'https://i.postimg.cc/7P2NgTYc/Crop-Tank-Heather-Mauve-Cinco.png',
    'https://i.postimg.cc/KjBrFCHF/Crop-Tank-Heather-Mauve-Kelliwood-1.png',
    'https://i.postimg.cc/cJCR6vbF/Crop-Tank-Heather-Mauve-Midtown-HTX.png',
    'https://i.postimg.cc/9FPtk59Y/Crop-Tank-Solid-Black-Cinco.png',
    'https://i.postimg.cc/BQfBNQjv/Crop-Tank-Solid-Black-Midtown-HTX.png',
    'https://i.postimg.cc/52xqd7qd/Crop-Tank-Dark-Grey-Heather-Cinco.png',
    'https://i.postimg.cc/VkD9YqDS/Crop-Tank-Dark-Grey-Heather-Kelliwood.png',
    'https://i.postimg.cc/3JZmBjML/Endeavor-Tank-Dark-Royal-Cinco.png',
    'https://i.postimg.cc/7ZY7QCwq/Endeavor-Tank-Dark-Royal-Kelliwood.png',
    'https://i.postimg.cc/8Cx65tWC/Endeavor-Tank-Dark-Royal-Midtown-HTX.png',
    'https://i.postimg.cc/d18L0vwW/Next-Level-Women-s-Muscle-Tank-Charcoal-Cinco.png',
    'https://i.postimg.cc/zv7vnjLK/Next-Level-Women-s-Muscle-Tank-Charcoal-Kelliwood.png',
    'https://i.postimg.cc/hPChv2Rq/Next-Level-Women-s-Muscle-Tank-Charcoal-Midtown-HTX.png',
    'https://i.postimg.cc/rFpFB50Z/Next-Level-Women-s-Muscle-Tank-Smoked-Paprika-Cinco.png',
    'https://i.postimg.cc/zXPX83Tz/Next-Level-Women-s-Muscle-Tank-Smoked-Paprika-Kelliwood.png',
    'https://i.postimg.cc/HWzkv6x7/Next-Level-Women-s-Muscle-Tank-Smoked-Paprika-Midtown-HTX.png',
    'https://i.postimg.cc/cHMLSmB2/Next-Level-Women-s-Muscle-Tank-Stonewash-Denim-Cinco.png',
    'https://i.postimg.cc/0yM5QxCp/Next-Level-Women-s-Muscle-Tank-Stonewash-Denim-Kelliwood.png',
    'https://i.postimg.cc/hGmGCgzS/Next-Level-Women-s-Muscle-Tank-Stonewash-Denim-Midtown-HTX.png']

    p1 = Product.create({
        name: 'Crop Tank Grey Midtown',
        color: 'Grey',
        gender: 'MF',
        price: 20.00,
        image: tanks[0],
        description: 'A very nice grey tank top for the gym'
    })
        ProductGym.create({
            product_id: p1.id,
            gym_id: midtown.id
        })
        ProductCategory.create({
            product_id: p1.id,
            category_id: tank.id
        })

    p2 = Product.create({
        name: 'Crop Tank Mauve Cinco',
        color: 'Red',
        gender: 'MF',
        price: 20.00,
        image: tanks[1],
        description: 'A very nice red tank top for the gym'
    })
    ProductGym.create({
        product_id: p2.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p2.id,
        category_id: tank.id
    })
    p3 = Product.create({
        name: 'Crop Tank Mauve Kelliwood',
        color: 'Red',
        gender: 'MF',
        price: 20.00,
        image: tanks[2],
        description: 'A very nice red tank top for the gym'
    })
    ProductGym.create({
        product_id: p3.id,
        gym_id: kelliwood.id
    })
    ProductCategory.create({
        product_id: p3.id,
        category_id: tank.id
    })
    p4 = Product.create({
        name: 'Crop Tank Mauve Midtown',
        color: 'Red',
        gender: 'MF',
        price: 20.00,
        image: tanks[3],
        description: 'A very nice red tank top for the gym'
    })
    ProductGym.create({
        product_id: p4.id,
        gym_id: midtown.id
    })
    ProductCategory.create({
        product_id: p4.id,
        category_id: tank.id
    })
    p5 = Product.create({
        name: 'Crop Tank Black Cinco',
        color: 'Black',
        gender: 'MF',
        price: 20.00,
        image: tanks[4],
        description: 'A very nice black tank top for the gym'
    })
    ProductGym.create({
        product_id: p5.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p5.id,
        category_id: tank.id
    })
    p6 = Product.create({
        name: 'Crop Tank Black Midtown',
        color: 'Black',
        gender: 'MF',
        price: 20.00,
        image: tanks[5],
        description: 'A very nice black tank top for the gym'
    })
        ProductGym.create({
            product_id: p6.id,
            gym_id: midtown.id
        })
        ProductCategory.create({
            product_id: p6.id,
            category_id: tank.id
        })
    p7 = Product.create({
        name: 'Crop Tank Grey Cinco',
        color: 'Grey',
        gender: 'MF',
        price: 20.00,
        image: tanks[6],
        description: 'A very nice grey tank top for the gym'
    })
        ProductGym.create({
            product_id: p7.id,
            gym_id: cinco.id
        })
        ProductCategory.create({
            product_id: p7.id,
            category_id: tank.id
        })
    p8 = Product.create({
        name: 'Crop Tank Grey Kelliwood',
        color: 'Grey',
        gender: 'MF',
        price: 20.00,
        image: tanks[7],
        description: 'A very nice grey tank top for the gym'
    })
        ProductGym.create({
            product_id: p8.id,
            gym_id: kelliwood.id
        })
        ProductCategory.create({
            product_id: p8.id,
            category_id: tank.id
        })
    p9 = Product.create({
        name: 'Endeavor Tank Royal Cinco',
        color: 'Blue',
        gender: 'F',
        price: 20.00,
        image: tanks[8],
        description: 'A very nice blue tank top for the gym'
    })
    ProductGym.create({
        product_id: p9.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p9.id,
        category_id: tank.id
    })    
    p10 = Product.create({
        name: 'Endeavor Tank Royal Kelliwood',
        color: 'Blue',
        gender: 'F',
        price: 20.00,
        image: tanks[9],
        description: 'A very nice blue tank top for the gym'
    })
    ProductGym.create({
        product_id: p10.id,
        gym_id: kelliwood.id
    })
    ProductCategory.create({
        product_id: p10.id,
        category_id: tank.id
    }) 
    p11 = Product.create({
        name: 'Endeavor Tank Royal Midtown',
        color: 'Blue',
        gender: 'F',
        price: 20.00,
        image: tanks[10],
        description: 'A very nice blue tank top for the gym'
    })
    ProductGym.create({
        product_id: p11.id,
        gym_id: midtown.id
    })
    ProductCategory.create({
        product_id: p11.id,
        category_id: tank.id
    }) 
    p12 = Product.create({
        name: 'Muscle Tank Grey Cinco',
        color: 'Grey',
        gender: 'F',
        price: 20.00,
        image: tanks[11],
        description: 'A very nice grey tank top for the gym'
    })
    ProductGym.create({
        product_id: p12.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p12.id,
        category_id: tank.id
    })  
    p13 = Product.create({
        name: 'Muscle Tank Grey Kelliwood',
        color: 'Grey',
        gender: 'F',
        price: 20.00,
        image: tanks[12],
        description: 'A very nice grey tank top for the gym'
    })
    ProductGym.create({
        product_id: p13.id,
        gym_id: kelliwood.id
    })
    ProductCategory.create({
        product_id: p13.id,
        category_id: tank.id
    })     
    p14 = Product.create({
        name: 'Muscle Tank Grey Midtown',
        color: 'Grey',
        gender: 'F',
        price: 20.00,
        image: tanks[13],
        description: 'A very nice grey tank top for the gym'
    })
    ProductGym.create({
        product_id: p14.id,
        gym_id: midtown.id
    })
    ProductCategory.create({
        product_id: p14.id,
        category_id: tank.id
    }) 
    p15 = Product.create({
        name: 'Muscle Tank Red Cinco',
        color: 'Red',
        gender: 'F',
        price: 20.00,
        image: tanks[14],
        description: 'A very nice red tank top for the gym'
    })
    ProductGym.create({
        product_id: p15.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p15.id,
        category_id: tank.id
    })
    p16 = Product.create({
        name: 'Muscle Tank Red Kelliwood',
        color: 'Red',
        gender: 'F',
        price: 20.00,
        image: tanks[15],
        description: 'A very nice red tank top for the gym'
    })
    ProductGym.create({
        product_id: p16.id,
        gym_id: kelliwood.id
    })
    ProductCategory.create({
        product_id: p16.id,
        category_id: tank.id
    })
    p17 = Product.create({
        name: 'Muscle Tank Red Midtown',
        color: 'Red',
        gender: 'F',
        price: 20.00,
        image: tanks[16],
        description: 'A very nice red tank top for the gym'
    })
    ProductGym.create({
        product_id: p17.id,
        gym_id: midtown.id
    })
    ProductCategory.create({
        product_id: p17.id,
        category_id: tank.id
    })
    p18 = Product.create({
        name: 'Muscle Tank Stonewash Denim Cinco',
        color: 'Blue',
        gender: 'F',
        price: 20.00,
        image: tanks[17],
        description: 'A very nice blue tank top for the gym'
    })
    ProductGym.create({
        product_id: p18.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p18.id,
        category_id: tank.id
    })
    p19 = Product.create({
        name: 'Muscle Tank Stonewash Denim Kelliwood',
        color: 'Blue',
        gender: 'F',
        price: 20.00,
        image: tanks[18],
        description: 'A very nice blue tank top for the gym'
    })
    ProductGym.create({
        product_id: p19.id,
        gym_id: kelliwood.id
    })
    ProductCategory.create({
        product_id: p19.id,
        category_id: tank.id
    })
    p20 = Product.create({
        name: 'Muscle Tank Stonewash Denim Midtown',
        color: 'Blue',
        gender: 'F',
        price: 20.00,
        image: tanks[19],
        description: 'A very nice blue tank top for the gym'
    })
    ProductGym.create({
        product_id: p20.id,
        gym_id: midtown.id
    })
    ProductCategory.create({
        product_id: p20.id,
        category_id: tank.id
    })

tees = [
    'https://i.postimg.cc/rpHS486M/District-Made-Tee-Black-Frost-Cinco.png',
    'https://i.postimg.cc/Bb9HhMQz/District-Made-Tee-Black-Frost-Kelliwood.png',
    'https://i.postimg.cc/SN4cCTP2/District-Made-Tee-Black-Frost-Midtown-HTX.png',
    'https://i.postimg.cc/FRJ0g2mc/District-Made-Tee-Grey-Frost-Cinco.png',
    'https://i.postimg.cc/vTr9Cf4Z/District-Made-Tee-Grey-Frost-Kelliwood.png',
    'https://i.postimg.cc/QN1pBGfZ/District-Made-Tee-Grey-Frost-Midtown-HTX.png',
    'https://i.postimg.cc/XYzZHQsg/Next-Level-Tee-Vintage-Navy-Cinco.png',
    'https://i.postimg.cc/TP5KZgSv/Next-Level-Tee-Vintage-Navy-Kelliwood.png',
    'https://i.postimg.cc/CMsRTFv5/Next-Level-Tee-Vintage-Navy-Midtown-HTX.png',
    'https://i.postimg.cc/MTknxX2M/Next-Level-Tee-Vintage-Red-Cinco.png',
    'https://i.postimg.cc/SRkj25Km/Next-Level-Tee-Vintage-Red-Kelliwood.png',
    'https://i.postimg.cc/TY2pTZS9/Next-Level-Tee-Vintage-Red-Midtown-HTX.png']

    p21 = Product.create({
        name: 'District Made Tee Black Frost Cinco',
        color: 'Black',
        gender: 'MF',
        price: 20.00,
        image: tees[0],
        description: 'A very nice black t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p21.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p21.id,
        category_id: tee.id
    })
    p22 = Product.create({
        name: 'District Made Tee Black Frost Kelliwood',
        color: 'Black',
        gender: 'MF',
        price: 20.00,
        image: tees[1],
        description: 'A very nice black t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p22.id,
        gym_id: kelliwood.id
    })
    ProductCategory.create({
        product_id: p22.id,
        category_id: tee.id
    })
    p23 = Product.create({
        name: 'District Made Tee Black Frost Midtown',
        color: 'Black',
        gender: 'MF',
        price: 20.00,
        image: tees[2],
        description: 'A very nice black t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p23.id,
        gym_id: midtown.id
    })
    ProductCategory.create({
        product_id: p23.id,
        category_id: tee.id
    })
    p24 = Product.create({
        name: 'District Made Tee Grey Frost Cinco',
        color: 'Grey',
        gender: 'MF',
        price: 20.00,
        image: tees[3],
        description: 'A very nice grey t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p24.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p24.id,
        category_id: tee.id
    })
    p25 = Product.create({
        name: 'District Made Tee Grey Frost Kelliwood',
        color: 'Grey',
        gender: 'MF',
        price: 20.00,
        image: tees[4],
        description: 'A very nice grey t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p25.id,
        gym_id: kelliwood.id
    })
    ProductCategory.create({
        product_id: p25.id,
        category_id: tee.id
    })
    p26 = Product.create({
        name: 'District Made Tee Grey Frost Midtown',
        color: 'Grey',
        gender: 'MF',
        price: 20.00,
        image: tees[5],
        description: 'A very nice grey t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p26.id,
        gym_id: midtown.id
    })
    ProductCategory.create({
        product_id: p26.id,
        category_id: tee.id
    })
    p27 = Product.create({
        name: 'Next Level Tee Navy Cinco',
        color: 'Blue',
        gender: 'MF',
        price: 20.00,
        image: tees[6],
        description: 'A very nice navy t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p27.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p27.id,
        category_id: tee.id
    })
    p28 = Product.create({
        name: 'Next Level Tee Navy Kelliwood',
        color: 'Blue',
        gender: 'MF',
        price: 20.00,
        image: tees[7],
        description: 'A very nice navy t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p28.id,
        gym_id: kelliwood.id
    })
    ProductCategory.create({
        product_id: p28.id,
        category_id: tee.id
    })
    p29 = Product.create({
        name: 'Next Level Tee Navy Midtown',
        color: 'Blue',
        gender: 'MF',
        price: 20.00,
        image: tees[8],
        description: 'A very nice navy t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p29.id,
        gym_id: midtown.id
    })
    ProductCategory.create({
        product_id: p29.id,
        category_id: tee.id
    })
    p30 = Product.create({
        name: 'Next Level Tee Red Cinco',
        color: 'Red',
        gender: 'MF',
        price: 20.00,
        image: tees[9],
        description: 'A very nice red t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p30.id,
        gym_id: cinco.id
    })
    ProductCategory.create({
        product_id: p30.id,
        category_id: tee.id
    })
    p31 = Product.create({
        name: 'Next Level Tee Red Kelliwood',
        color: 'Red',
        gender: 'MF',
        price: 20.00,
        image: tees[10],
        description: 'A very nice red t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p31.id,
        gym_id: kelliwood.id
    })
    ProductCategory.create({
        product_id: p31.id,
        category_id: tee.id
    })
    p32 = Product.create({
        name: 'Next Level Tee Red Midtown',
        color: 'Red',
        gender: 'MF',
        price: 20.00,
        image: tees[11],
        description: 'A very nice red t-shirt for the gym'
    })
    ProductGym.create({
        product_id: p32.id,
        gym_id: midtown.id 
    })
    ProductCategory.create({
        product_id: p32.id,
        category_id: tee.id
    })
    

jackets = ['https://i.postimg.cc/T2VDdjPR/Hoodie-Cinco.png',
    'https://i.postimg.cc/Hn9c6mNJ/Hoodie-Kelliwood.png',
    'https://i.postimg.cc/1XQV0Xvh/Hoodie-Midtown-HTX.png',
    'https://i.postimg.cc/fR2X4wRm/Men-s-All-Star-Heavyweight-Zip-S-XL.jpg',
    'https://i.postimg.cc/DzSGntSD/Mens-Circle-45-Lightweight-Sweat-S-XL.jpg',
    'https://i.postimg.cc/d3sttyW1/Womens-Circle-45-Sweat-XS-L.jpg',
    'https://i.postimg.cc/j2MqWS9h/Womens-Signet-Lightweight-zip.jpg']

    p33 = Product.create({
        name: 'Hoodie White Cinco',
        color: 'White',
        gender: 'MF',
        price: 35.00,
        image: jackets[0],
        description: 'A very confortable white hoodie'
    })
    ProductGym.create({
        product_id: p33.id,
        gym_id: cinco.id 
    })
    ProductCategory.create({
        product_id: p33.id,
        category_id: jacket.id
    })
    p34 = Product.create({
        name: 'Hoodie White Kelliwood',
        color: 'White',
        gender: 'MF',
        price: 35.00,
        image: jackets[1],
        description: 'A very confortable white hoodie'
    })
    ProductGym.create({
        product_id: p34.id,
        gym_id: kelliwood.id 
    })
    ProductCategory.create({
        product_id: p34.id,
        category_id: jacket.id
    })
    p35 = Product.create({
        name: 'Hoodie White Midtown',
        color: 'White',
        gender: 'MF',
        price: 35.00,
        image: jackets[2],
        description: 'A very confortable white hoodie'
    })
    ProductGym.create({
        product_id: p35.id,
        gym_id: midtown.id 
    })
    ProductCategory.create({
        product_id: p35.id,
        category_id: jacket.id
    })
    p36 = Product.create({
        name: 'All Star Heavyweight Zip',
        color: 'Grey',
        gender: 'M',
        price: 60.00,
        image: jackets[3],
        description: 'A warm grey jacket with a zipper'
    })
    ProductGym.create({
        product_id: p36.id,
        gym_id: kelliwood.id 
    })
    ProductGym.create({
        product_id: p36.id,
        gym_id: cinco.id 
    })
    ProductGym.create({
        product_id: p36.id,
        gym_id: midtown.id 
    })
    ProductCategory.create({
        product_id: p36.id,
        category_id: jacket.id
    })
    p37 = Product.create({
        name: 'Mens Circle 45 Lightweight Sweater',
        color: 'Grey',
        gender: 'M',
        price: 55.00,
        image: jackets[4],
        description: 'A nice grey sweater'
    })
    ProductGym.create({
        product_id: p37.id,
        gym_id: kelliwood.id 
    })
    ProductGym.create({
        product_id: p37.id,
        gym_id: cinco.id 
    })
    ProductGym.create({
        product_id: p37.id,
        gym_id: midtown.id 
    })
    ProductCategory.create({
        product_id: p37.id,
        category_id: jacket.id
    })
    p38 = Product.create({
        name: 'Womens Circle 45 Lightweight Sweater',
        color: 'Grey',
        gender: 'F',
        price: 55.00,
        image: jackets[5],
        description: 'A nice grey sweater'
    })
    ProductGym.create({
        product_id: p38.id,
        gym_id: kelliwood.id 
    })
    ProductGym.create({
        product_id: p38.id,
        gym_id: cinco.id 
    })
    ProductGym.create({
        product_id: p38.id,
        gym_id: midtown.id 
    })
    ProductCategory.create({
        product_id: p38.id,
        category_id: jacket.id
    })
    p39 = Product.create({
        name: 'Womens Lightweight Signet Zip',
        color: 'Blue',
        gender: 'F',
        price: 60.00,
        image: jackets[6],
        description: 'A nice navy jacket with a zipper'
    })
    ProductGym.create({
        product_id: p39.id,
        gym_id: kelliwood.id 
    })
    ProductGym.create({
        product_id: p39.id,
        gym_id: cinco.id 
    })
    ProductGym.create({
        product_id: p39.id,
        gym_id: midtown.id 
    })
    ProductCategory.create({
        product_id: p39.id,
        category_id: jacket.id
    })

accessories = [
    'https://i.postimg.cc/4xmy9pXH/Team-Towel.jpg',
    'https://i.postimg.cc/mDGgJqC7/Tri-Star-Towel.jpg',
]

p40 = Product.create({
        name: 'F45 Team Towel',
        color: 'Blue',
        gender: 'MF',
        price: 15.00,
        image: accessories[0],
        description: 'A large towel with the F45 logo'
    })
    ProductGym.create({
        product_id: p40.id,
        gym_id: kelliwood.id 
    })
    ProductGym.create({
        product_id: p40.id,
        gym_id: cinco.id 
    })
    ProductGym.create({
        product_id: p40.id,
        gym_id: midtown.id 
    })
    ProductCategory.create({
        product_id: p40.id,
        category_id: jacket.id
    })
    p41 = Product.create({
        name: 'F45 Star Towel',
        color: 'Blue',
        gender: 'MF',
        price: 15.00,
        image: accessories[0],
        description: 'A large towel with the F45 logo'
    })
    ProductGym.create({
        product_id: p41.id,
        gym_id: kelliwood.id 
    })
    ProductGym.create({
        product_id: p41.id,
        gym_id: cinco.id 
    })
    ProductGym.create({
        product_id: p41.id,
        gym_id: midtown.id 
    })
    ProductCategory.create({
        product_id: p41.id,
        category_id: jacket.id
    })

    clothes = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12,
        p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26,
        p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39]

    clothes.each{|product| 
    newSizes.each{|size| 
    Quantity.create({product_id: product.id, size_id: size.id, amount: 10})
    }}

    o1 = Order.create({status: "pending"})
    UserOrder.create({user_id: billy.id, order_id: o1.id})
    
    ot1 = OrderItem.create({order_id: o1.id, product_id: p4.id})
    ot2 = OrderItem.create({order_id: o1.id, product_id: p17.id})
    ot3 = OrderItem.create({order_id: o1.id, product_id: p22.id})
    ot4 = OrderItem.create({order_id: o1.id, product_id: p37.id})

    price = ot1.product.price + ot2.product.price + ot3.product.price + ot4.product.price
    o1.update({sub_total: price, total: price})

    