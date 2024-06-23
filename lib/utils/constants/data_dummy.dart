import 'package:t_store/features/shop/models/brand_model.dart';
import 'package:t_store/features/shop/models/product_attribute_model.dart';
import 'package:t_store/features/shop/models/product_model.dart';
import 'package:t_store/features/shop/models/product_variation_model.dart';
import 'package:t_store/utils/constants/image_strings.dart';

import '../../features/authentication/models/user_model.dart';

class DataDummy {

  static final List<ProductModel> products = <ProductModel>[
    ProductModel(
      id: "6676e6fad91161434cdd4f6a",
      stock: 100,
      price: 30.0,
      salePrice: 20.0,
      title: "Monodox",
      thumbnail: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/monodox_2.jpg",
      productType: "drug",
      brand: BrandModel(
        id: "1",
        name: "Miscellaneous",
        image: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/brands/logo_lab_chile.png?t=2024-06-23T17%3A27%3A27.255Z",
        isFeatured: false,
        productCount: 100,
      ),
      description: "Acne Other names: Acne Vulgaris; Blackheads; Breakouts; Cystic acne; Pimples; Whiteheads; Zits Acne is a skin condition caused by dead skin cells sticking together and clogging up pores. Bacteria can play a role, too. A big trigger for the onset of acne is puberty. Better nutrition and living standards have seen the age of puberty, especially in girls, decrease significantly over the past 40 years. It is now not uncommon for girls as young as 7 to develop acne. Acne is also affecting more adults later in life and doctors are not sure why. A growing number of women have acne in their 30s, 40s, 50s, and beyond. What Causes Acne? Our body constantly makes and sheds skin. Normally, dead skin cells rise to the surface of the pore and just flake off our body. At puberty, hormones trigger the production of sebum - an oily substance that helps moisturize our skin. Sebum sticks dead skin cells together, increasing their chances of becoming trapped inside a pore. Clogged pores become blackheads, whiteheads or pimples. If bacteria are also present, redness and swelling can occur resulting in the progression of the pimple into a cyst or nodule. Who is More at Risk of Acne? Unfortunately, some people suffer from acne worse than others. Bad acne tends to run in families - your mother, father, aunt or uncle probably had severe breakouts when they were a teenager. Some people also have naturally higher hormone levels and make more sebum, so their skin pores are always clogging up. If you live in an area that gets very humid or have a job which exposes you to moist heat (such as in a food kitchen) or grease or tar (a mechanic or road worker) then you are more likely to get acne. Chin straps, headbands, and even hair products applied too close to the skin can precipitate a break out as several different medicines - most notably prednisone, phenytoin, and certain hormonal contraceptives that are high in androgens (for example, Microgestin 1.5/30 and the Depo-Provera shot). What are the Symptoms of Acne? Acne may appear on the face, forehead, chest, upper back or shoulders. The symptoms and severity of acne vary from person to person but may include: Whiteheads Blackheads Papules (small, red, tender bumps) Pimples (papules with pus at their tips) Nodules (large solid painful lumps beneath the skin surface Cystic lesions (painful pus-filled lumps beneath the skin’s surface). How is Acne Diagnosed? If your acne makes you shy or embarrassed, if you have a lot of acne, cysts or nodules on your face or back, or if over the counter products do not seem to work, see your doctor or a dermatologist as soon as you can. They can prescribe stronger topical or oral treatments that are much more effective than products you can buy at a drug store. Your doctor will look at your skin and ask about the history of your acne. It is a myth that you have to let acne run its course. Treatment helps prevent dark spots and permanent scars from forming as the acne clears. How is Acne Treated? The most important thing you can do to reduce the chance of breakouts is to take good care of your skin. This doesn't mean scrubbing it raw several times a day with soap. It means gently cleansing it with a mild soap-free wash twice a day, every day. If you play a lot of sport or work in a greasy or humid environment, cleanse your skin as soon as you finish training or right after work. Be gentle. You aim to cleanse away excess sebum and dead skin cells so they don't clog up your pores - not to irritate your skin even further. The first step to clear skin is clean skin. Look for a cleanser that is soap-free and does not contain any harsh detergents such as sodium lauryl or laureth sulfates, which can cause redness, irritation, and inflammation. Avoid pore-clogging ingredients as well, such as algae extract, carrageenan, lanolin, myristyl myristate, octyl palmitate, octyl stearate-5, and oleth-3. Anti-acne ingredients work by removing dead skin cells, unclogging pores, or reducing bacteria numbers on the skin. Acne treatments usually contain one of the following ingredients (some of which are only available on prescription): Benzoyl peroxide Salicyclic acid Resorcinol Azelaic acid Dapsone gel Retinoids and retinoid-like creams, gels, and lotions Topical antibiotics Oral antibiotics (eg, tetracyclines, Combined oral contraceptives Oral isotretinoin Spironolactone Lasers and photodynamic therapy Chemical peels Steroid injections. If you have severe acne you need to be very proactive with skin cleansing and using acne treatment. Seeing a dermatologist early on for prescription products lessens the chances of being left with permanent scars. How Can I Prevent Acne? Gently wash your face twice a day and after sweating. Shampoo your hair regularly. Do not pick or squeeze your acne; this increases the risk of scars. Keep your hands off your face. Wash your hands before applying make-up. Be careful what you put on your face, and avoid ingredients that promote acne. Stay out of the sun and off tanning beds; excess tanning can damage your skin. See a dermatologist if you feel shy or products don't work.",
      categoryId: "1",
      images: [
        'https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/Monodox_.jpg',
        'https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/monodox_3.png',
      ],
      productAttributes: [
        ProductAttributeModel(
          name: "Side Effects",
          values: ["Blistering", "Peeling", "Bloating", "Chills"],
        ),
        ProductAttributeModel(
          name: "Pregnancy Category",
          values: ["D"],
        ),
        ProductAttributeModel(
          name: "Rx/OTC",
          values: ["Rx"],
        ),
      ],
      productVariations: [
        ProductVariationModel(
          id: "var1",
          sku: "MONODOX-100MG",
          image: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/monodox_4.jpg",
          description: "Monodox 100mg",
          price: 15.99,
          salePrice: 12.99,
          stock: 50,
          attributeValues: {"Dosage": "100mg"},
        ),
      ],
    ),
    ProductModel(
      id: "6676e6fad91161434cdd4f6b",
      stock: 100,
      price: 24.0,
      salePrice: 20.0,
      title: "Monodoxi",
      thumbnail: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/monodox_3.png",
      productType: "drug",
      brand: BrandModel(
        id: "1",
        name: "Miscellaneous",
        image: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/brands/logo_lab_chile.png?t=2024-06-23T17%3A27%3A27.255Z",
        isFeatured: false,
        productCount: 100,
      ),
      description: "Acne Other names: Acne Vulgaris...",
      categoryId: "acne",
      images: [
        'https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/monodox_3.png',
        'https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/monodox_3.png',
      ],
      productAttributes: [
        ProductAttributeModel(
          name: "Side Effects",
          values: ["Blistering", "Peeling", "Bloating", "Chills"],
        ),
        ProductAttributeModel(
          name: "Pregnancy Category",
          values: ["D"],
        ),
        ProductAttributeModel(
          name: "Rx/OTC",
          values: ["Rx"],
        ),
      ],
      productVariations: [
        ProductVariationModel(
          id: "var1",
          sku: "MONODOX-100MG",
          image: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/monodox_3.png",
          description: "Monodox 100mg",
          price: 15.99,
          salePrice: 12.99,
          stock: 50,
          attributeValues: {"Dosage": "100mg"},
        ),
      ],
    ),
    ProductModel(
      id: "6676e6fad91161434cdd4f69",
      stock: 150,
      price: 25.0,
      salePrice: 30.0,
      title: "Benzaclin",
      thumbnail: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/Benzaclin.jpg",
      productType: "drug",
      brand: BrandModel(
        id: "2",
        name: "Laboratorio Chile",
        image: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/brands/logo_lab_chile.png?t=2024-06-23T17%3A27%3A27.255Z",
        isFeatured: false,
        productCount: 150,
      ),
      description: "hives; difficulty breathing; swelling of your face...",
      categoryId: "1",
      images: [
        'https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/Benzaclin_4.jpeg',
        'https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/Benzaclin_2.jpeg',
      ],
      productAttributes: [
        ProductAttributeModel(
          name: "Side Effects",
          values: ["hives", "difficulty breathing", "swelling of your face"],
        ),
        ProductAttributeModel(
          name: "Pregnancy Category",
          values: ["C"],
        ),
        ProductAttributeModel(
          name: "Rx/OTC",
          values: ["Rx"],
        ),
      ],
      productVariations: [
        ProductVariationModel(
          id: "var2",
          sku: "BENZACLIN-50MG",
          image: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/Benzaclin_1.jpeg",
          description: "Benzaclin 50mg",
          price: 20.99,
          salePrice: 18.99,
          stock: 75,
          attributeValues: {"Dosage": "50mg"},
        ),
      ],
    ),
    ProductModel(
      id: "6676e6fad91161434cdd4f70",
      stock: 200,
      price: 35.0,
      salePrice: 40.0,
      title: "Tetracycline",
      thumbnail: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/Tetracycline_.jpeg",
      productType: "drug",
      brand: BrandModel(
        id: "3",
        name: "Portugal",
        image: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/brands/logo_porutgal.png",
        isFeatured: true,
        productCount: 200,
      ),
      description: "Used for the treatment of various infections...",
      categoryId: "2",
      images: [
        'https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/Tetracycline.jpg',
        'https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/Tetracycline_2.jpg',
      ],
      productAttributes: [
        ProductAttributeModel(
          name: "Side Effects",
          values: ["Nausea", "Vomiting", "Diarrhea"],
        ),
        ProductAttributeModel(
          name: "Pregnancy Category",
          values: ["D"],
        ),
        ProductAttributeModel(
          name: "Rx/OTC",
          values: ["Rx"],
        ),
      ],
      productVariations: [
        ProductVariationModel(
          id: "var3",
          sku: "TETRACYCLINE-250MG",
          image: "https://emhvpljjyqwgxxtsiylw.supabase.co/storage/v1/object/public/public/sw2_crm/products/Tetracycline_4.jpg",
          description: "Tetracycline 250mg",
          price: 30.99,
          salePrice: 28.99,
          stock: 100,
          attributeValues: {"Dosage": "250mg"},
        ),
      ],
    ),
    // Más productos...
  ];



  static List<UserModel> users = [
  UserModel(
  id: "12584",
  email: "example1@example.com",
  firstName: "Alice",
  lastName: "Smith",
  phoneNumber: "12345678",
  profilePicture: "",
  username: "alice123",
  ),
  UserModel(
  id: "12585",
  email: "example2@example.com",
  firstName: "Bob",
  lastName: "Johnson",
  phoneNumber: "98765432",
  profilePicture: "",
  username: "bob456",
  ),
    UserModel(
      id: "12588",
      email: "janice34@example.com",
      firstName: "Janice",
      lastName: "Brown",
      phoneNumber: "65432109",
      profilePicture: "",
      username: "janice_b",
    ),
    UserModel(
      id: "12589",
      email: "samuel89@example.com",
      firstName: "Samuel",
      lastName: "Clark",
      phoneNumber: "23456781",
      profilePicture: "",
      username: "sam_clark",
    ),
    UserModel(
      id: "12590",
      email: "lucy2000@example.com",
      firstName: "Lucy",
      lastName: "Evans",
      phoneNumber: "87654321",
      profilePicture: "",
      username: "lucy_ev",
    ),
    UserModel(
      id: "12591",
      email: "michael12@example.com",
      firstName: "Michael",
      lastName: "Taylor",
      phoneNumber: "34567890",
      profilePicture: "",
      username: "mike_tay",
    ),
    UserModel(
      id: "12592",
      email: "sophie76@example.com",
      firstName: "Sophie",
      lastName: "White",
      phoneNumber: "56789012",
      profilePicture: "",
      username: "soph_white",
    ),
    UserModel(
      id: "12593",
      email: "alexander22@example.com",
      firstName: "Alexander",
      lastName: "Johnson",
      phoneNumber: "78901234",
      profilePicture: "",
      username: "alex_john",
    ),
    UserModel(
      id: "12594",
      email: "emily78@example.com",
      firstName: "Emily",
      lastName: "Miller",
      phoneNumber: "90123456",
      profilePicture: "",
      username: "em_mill",
    ),
    UserModel(
      id: "12595",
      email: "oliver45@example.com",
      firstName: "Oliver",
      lastName: "Thomas",
      phoneNumber: "34567812",
      profilePicture: "",
      username: "oliv_tho",
    ),
    UserModel(
      id: "12596",
      email: "ava99@example.com",
      firstName: "Ava",
      lastName: "Martinez",
      phoneNumber: "56781234",
      profilePicture: "",
      username: "ava_mtz",
    ),
    UserModel(
      id: "12597",
      email: "jacob32@example.com",
      firstName: "Jacob",
      lastName: "Garcia",
      phoneNumber: "12345678",
      profilePicture: "",
      username: "jacob_g",
    ),
  ];

}