
import 'package:exam_ecom/utils/images.dart';
int selectindex=0;
List cartList=[];
List productList1=[
  {
    'inc_dec':0,
    'total':0,
    'boolck':false,
    'product_name':'The Mirac Jiz',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':195,
    'product_image':p1,
  },
  {
    'inc_dec':0,
    'boolck':false,
    'product_name':'The Jiz',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':145,
    'product_image':p2,
  },
  {
    'inc_dec':0,
    'boolck':false,
    'product_name':'The Mirac',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':165,
    'product_image':p3,
  },
  {
    'inc_dec':0,
    'boolck':false,
    'product_name':'Bag Door',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':105,
    'product_image':p4,
  },
  {
    'inc_dec':0,
    'boolck':false,
    'product_name':'The Bag Jiz',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':100,
    'product_image':p5,
  },
  {
    'inc_dec':0,
    'boolck':false,
    'product_name':'Pink Wall',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':200,
    'product_image':p6,
  },
  {
    'inc_dec':0,
    'boolck':false,
    'product_name':'Mirac Blue',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':201,
    'product_image':p7,
  },
  {
    'inc_dec':0,
    'boolck':false,
    'product_name':'Bag Top Blur',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':135,
    'product_image':p8,
  },
  {
    'inc_dec':0,
    'boolck':false,
    'product_name':'The Red Port',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':190,
    'product_image':p9,
  },
  {
    'inc_dec':0,
    'total':0,
    'boolck':false,
    'product_name':'Jiz Biz',
    'product_category': 'Bag',
    'product_desciption': 'A bag is a lightweight, flexible container meant for carrying things. A grocery bag is one you bring home from the supermarket full of food.',
    'product_price':160,
    'product_image':p10,
  },
];
int amount=0;