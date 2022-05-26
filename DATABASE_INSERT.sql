/* CLIENT INSERT */
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Andriy','Vasko', 0785604023, 'andriy.vasko@mail.com', 'Lviv, Stepan Bandera Str', 'retail', '2010-04-01');
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Oleksiy','Vyatrovych', 0986541223, 'oleksiy.vyatrovych@mail.com', 'Kyiv, Shuknevych Str', 'retail', '2010-04-02');
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Olexandr','Peperoni', 0834873296, 'olexandr.peperoni@mail.com', 'Lviv, Vasyl Stus Str', 'retail', '2010-04-02');
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Serhiy','Prutyla', 0327894512, 'serhiy.prytula@mail.com', 'Lviv, Ivan Mazepa Str', 'retail', '2010-04-04');
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Maria','Stadnyk', 0784589632, 'maria.stadnyk@mail.com', 'Lviv, Sagaidachnyi Str', 'retail', '2010-04-05');
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Olesya','Mint', 0845678915, 'olesya.mint@mail.com', 'Zhytomyr, Chornobaivka Str', 'wholesale', '2010-04-10');
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Semen','Semenuk', 0651238579, 'semen.semenyk@mail.com', 'Chornobaivka, Zhytomyrska Str', 'wholesale', '2010-04-10');
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Vladyslav','Sytnyk', 0847891637, 'vladyslav.sytnyk@mail.com', 'Lviv, Syhivska Str', 'wholesale', '2010-04-11');
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Anatoliy','Donych', 0986547328, 'anatoliy.donych@mail.com', 'Zhytomyr, Lvyvska Str', 'wholesale', '2010-04-15');
INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Tetyana','Ivanuk', 0456878945, 'tetyana.ivanuk@mail.com', 'Rivne, Kyivska Str', 'wholesale', '2010-04-16');

/* STORE INSERT */
INSERT INTO STORE (address) VALUES ('Lviv, Hmelnytskya Str');
INSERT INTO STORE (address) VALUES ('Kyiv, Peremoha Square');
INSERT INTO STORE (address) VALUES ('Rivne, Chornobaivska Str');
INSERT INTO STORE (address) VALUES ('Zhytomyr, Lvivska Str');

/* WAREHOUSE INSERT */
INSERT INTO WAREHOUSE (address) VALUES ('Lviv, Zelena Str');
INSERT INTO WAREHOUSE (address) VALUES ('Kyiv, Promyslova Str');

/* FACTORY INSERT */
INSERT INTO factory (address) VALUES ('Lviv, Zubra Str');
INSERT INTO factory (address) VALUES ('Rivne, Shevchenka Str');

/* MATERIAL INSERT */
INSERT INTO material (name) VALUES ('Engine_18v');
INSERT INTO material (name) VALUES ('Engine_24v');
INSERT INTO material (name) VALUES ('Screws');
INSERT INTO material (name) VALUES ('Plactic parts');
INSERT INTO material (name) VALUES ('Electric parts');

/* PRODUCT_CATEGORY INSERT */
INSERT INTO product_category (name) VALUES ('Drills');
INSERT INTO product_category (name) VALUES ('Grinders & Polishers');
INSERT INTO product_category (name) VALUES ('Compressors');
INSERT INTO product_category (name) VALUES ('Impact Drivers');
INSERT INTO product_category (name) VALUES ('Saws');
INSERT INTO product_category (name) VALUES ('Nailers');
INSERT INTO product_category (name) VALUES ('Sanders');

/* PRODUCT INSERT */
INSERT INTO product (name, price, description, status, category_id) VALUES ('24V Brushless Cordless 1/2in. Hammer Drill', 3600, 'Drill/Driver delivers the durability and performance professionals need on jobsite', 'in_stock',  1);
INSERT INTO product (name, price, description, status, category_id) VALUES ('18V Brushless Cordless 1/2in. Drill', 3200, 'Drill delivers the durability and performance professionals need on jobsite', 'in_stock',  1);
INSERT INTO product (name, price, description, status, category_id) VALUES ('60V MAX* 7 in. Brushless Cordless Grinder with Kickback Brake Kit', 5400, 'Complete metal and concrete cutting projects', 'in_stock',  2);
INSERT INTO product (name, price, description, status, category_id) VALUES ('20 gal. 200 psi Oil Lubed Belt Drive Portable Horizontal Electric Air Compressor', 10000, 'Belt drive air compressor is the ideal choice for tackling a variety of tasks', 'in_stock',  3);
INSERT INTO product (name, price, description, status, category_id) VALUES ('Atomic 20V MAX* 1/4 in. Brushless Cordless 3-Speed Impact Driver Kit', 6300, 'Impact Driver can handle tight applications like narrow cabinetry', 'in_stock',  4);
INSERT INTO product (name, price, description, status, category_id) VALUES ('XTREME™ 12V MAX* 5-3/8 in. Brushless Cordless Circular Saw Kit', 4700, 'Get the power and cutting depth of corded with the portability', 'in_stock',  5);
INSERT INTO product (name, price, description, status, category_id) VALUES ('20V MAX* XR® Cordless Metal Connecting Nailer Kit', 3000, ' Nailer allows for installation of joist hangers', 'out_of_stock',  6);
INSERT INTO product (name, price, description, status, category_id) VALUES ('5" Single Speed Random Orbit Sander - PSA Pad', 4000, 'Has a 3 amp motor that delivers 12,000 OPM', 'out_of_stock',  7);

/* PRODUCT_IMAGE INSERT */
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (1, '24V Brushless Cordless 1/2in. Hammer Drill_1.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (1, '24V Brushless Cordless 1/2in. Hammer Drill_2.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (1, '24V Brushless Cordless 1/2in. Hammer Drill_3.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (2, '18V Brushless Cordless 1/2in. Hammer Drill_1.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (2, '18V Brushless Cordless 1/2in. Hammer Drill_2.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (3, '60V MAX* 7 in. Brushless Cordless Grinder with Kickback Brake Kit_1.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (4, '20 gal. 200 psi Oil Lubed Belt Drive Portable Horizontal Electric Air Compressor_1.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (4, '20 gal. 200 psi Oil Lubed Belt Drive Portable Horizontal Electric Air Compressor_2.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (5, 'Atomic 20V MAX* 1/4 in. Brushless Cordless 3-Speed Impact Driver Kit_1.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (6, 'XTREME™ 12V MAX* 5-3/8 in. Brushless Cordless Circular Saw Kit_1.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (6, 'XTREME™ 12V MAX* 5-3/8 in. Brushless Cordless Circular Saw Kit_2.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (6, 'XTREME™ 12V MAX* 5-3/8 in. Brushless Cordless Circular Saw Kit_3.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (7, '20V MAX* XR® Cordless Metal Connecting Nailer Kit_1.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (7, '20V MAX* XR® Cordless Metal Connecting Nailer Kit_2.png');
INSERT INTO product_image (PRODUCT_ID, image_src) VALUES (8, '5" Single Speed Random Orbit Sander - PSA Pad_1.png');

/* POSITION INSERT*/
INSERT INTO position (name) VALUES ('Sales Manager');
INSERT INTO position (name) VALUES ('Supply Manager');
INSERT INTO position (name) VALUES ('Factory Worker');
INSERT INTO position (name) VALUES ('Warehouse Worker');
INSERT INTO position (name) VALUES ('Store Worker');


/* EMPLOYEE INSERT */
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Factory) VALUES ('Finlay', 'Bass', 'FinlayBass', 'Finlay', 15000, 3,  '2010-01-01', 1);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Factory) VALUES ('Abiha', 'Beach', 'AbihaBeach', 'Abiha', 18000, 3, '2010-01-02', 1);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Factory) VALUES ('Nate', 'Buckner', 'NateBuckner', 'Nate', 17000, 3, '2010-01-02', 1);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Factory) VALUES ('Nur', 'Barber', 'NurBarber', 'Nur', 14000, 3, '2010-01-01', 2);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Factory) VALUES ('Alysia', 'Richards', 'AlysiaRichards', 'Alysia', 15500, 3, '2010-01-03', 2);

INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Warehouse) VALUES ('Giles', 'Miles', 'GilesMiles', 'Giles', 12000, 4, '2010-01-03', 1);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Warehouse) VALUES ('Marie ', 'Mullen', 'MarieMullen', 'Marie', 12500, 4, '2010-01-03', 1);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Warehouse) VALUES ('Zayaan', 'Gregory', 'ZayaanGregory', 'Zayaan', 13000, 4, '2010-01-04', 2);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Warehouse) VALUES ('Kaci', 'Jarvis', 'KaciJarvis', 'Kaci', 13500, 4, '2010-01-04', 2);

INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Store) VALUES ('Idris', 'Pugh', 'IdrisPugh', 'Idris', 20000, 5, '2010-01-04', 1);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Store) VALUES ('Griff', 'Swift', 'GriffSwift', 'Griff', 21000, 5, '2010-01-04', 2);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Store) VALUES ('Malaki', 'Aguilar', 'MalakiAguilar', 'Malaki', 20500, 5, '2010-01-05', 3);
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Store) VALUES ('Teigan', 'Pena', 'TeiganPena', 'Teigan', 19000, 5, '2010-01-05', 4);

INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at) VALUES ('Chaim', 'Dunlop', 'ChaimDunlop', 'Chaim', 30000, 2, '2010-01-02');
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at) VALUES ('Mollie ', 'Piper', 'MolliePiper', 'Mollie', 32000, 2, '2010-01-01');
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at) VALUES ('Alessio', 'Hogg', 'AlessioHogg', 'Alessio', 30500, 1, '2010-01-04');
INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at) VALUES ('Darlene', 'Knott', 'DarleneKnott', 'Darlene', 29000, 1, '2010-01-05');

/* SUPPLIER INSERT */
INSERT INTO supplier (name, email, phoneNumber, MANAGER_ID, address) VALUES ('SP "RAGNAR"', 'ragnar.company@mail.com', 0984712893, 14, 'US, NY-Manhattan');
INSERT INTO supplier (name, email, phoneNumber, MANAGER_ID, address) VALUES ('SP "DAWTON Electrics"', 'dawton.company@mail.com', 0874692154, 14, 'US, Texas');
INSERT INTO supplier (name, email, phoneNumber, MANAGER_ID, address) VALUES ('SP "MEKANISM"', 'mekanism.company@mail.com', 0874692154, 15, 'US, Vancouver');

/* SUPPLIER_CONTRACT INSERT */
INSERT INTO supplier_contract (SUPPLIER_ID, contract_src) VALUES (1, 'RAGNAR_contract.pdf');
INSERT INTO supplier_contract (SUPPLIER_ID, contract_src) VALUES (2, 'DAWTON_contract.pdf');
INSERT INTO supplier_contract (SUPPLIER_ID, contract_src) VALUES (3, 'MEKANISM_contract.pdf');

/* CONTRACT_MATERIAL INSERT */
INSERT INTO contract_material (CONTRACT_ID, MATERIAL_ID, quantity) VALUES (1, 3, 20);
INSERT INTO contract_material (CONTRACT_ID, MATERIAL_ID, quantity) VALUES (1, 4, 15);

INSERT INTO contract_material (CONTRACT_ID, MATERIAL_ID, quantity) VALUES (2, 5, 10);

INSERT INTO contract_material (CONTRACT_ID, MATERIAL_ID, quantity) VALUES (3, 1, 15);
INSERT INTO contract_material (CONTRACT_ID, MATERIAL_ID, quantity) VALUES (3, 2, 15);

/* WAREHOUSE_MATERIAL INSERT */
INSERT INTO warehouse_material (WAREHOUSE_ID, MATERIAL_ID, quantity) VALUES (1, 3, 20);
INSERT INTO warehouse_material (WAREHOUSE_ID, MATERIAL_ID, quantity) VALUES (1, 4, 15);

INSERT INTO warehouse_material (WAREHOUSE_ID, MATERIAL_ID, quantity) VALUES (2, 5, 10);
INSERT INTO warehouse_material (WAREHOUSE_ID, MATERIAL_ID, quantity) VALUES (2, 2, 15);
INSERT INTO warehouse_material (WAREHOUSE_ID, MATERIAL_ID, quantity) VALUES (2, 1, 15);

/* WAREHOUSE_PRODUCT INSERT */
INSERT INTO warehouse_product (WAREHOUSE_ID, PRODUCT_ID, quantity) VALUES (1, 1, 5);
INSERT INTO warehouse_product (WAREHOUSE_ID, PRODUCT_ID, quantity) VALUES (1, 2, 7);
INSERT INTO warehouse_product (WAREHOUSE_ID, PRODUCT_ID, quantity) VALUES (2, 3, 8);
INSERT INTO warehouse_product (WAREHOUSE_ID, PRODUCT_ID, quantity) VALUES (2, 4, 15);
INSERT INTO warehouse_product (WAREHOUSE_ID, PRODUCT_ID, quantity) VALUES (2, 5, 5);
INSERT INTO warehouse_product (WAREHOUSE_ID, PRODUCT_ID, quantity) VALUES (2, 6, 12);

/* STORE_PRODUCT INSERT */
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (1, 1, 30);
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (1, 2, 25);
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (1, 3, 10);
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (2, 1, 13);
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (2, 4, 5);
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (2, 3, 20);
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (3, 5, 17);
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (3, 6, 11);
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (4, 2, 8);
INSERT INTO store_product (STORE_ID, PRODUCT_ID, quantity) VALUES (4, 3, 27);

/* MATERIALS TO FACTORY INSERT*/
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (1, 1, 3, 10, '2010-02-05');
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (1, 1, 4, 10, '2010-02-06');
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (2, 1, 5, 5, '2010-02-06');
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (2, 1, 1, 5, '2010-02-07');
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (2, 1, 2, 5, '2010-02-07');

INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (1, 2, 3, 15, '2010-02-05');
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (1, 2, 4, 15, '2010-02-06');
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (2, 2, 5, 10, '2010-02-06');
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (2, 2, 1, 10, '2010-02-07');
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (2, 2, 2, 10, '2010-02-07');

/* WAREHOUSE TO STORE INSERT */
INSERT INTO warehouse_to_store (WAREHOUSE_ID, STORE_ID, PRODUCT_ID, quantity, supplied_at) VALUES (1, 1, 1, 10, '2010-02-10');
INSERT INTO warehouse_to_store (WAREHOUSE_ID, STORE_ID, PRODUCT_ID, quantity, supplied_at) VALUES (1, 1, 2, 5, '2010-02-10');
INSERT INTO warehouse_to_store (WAREHOUSE_ID, STORE_ID, PRODUCT_ID, quantity, supplied_at) VALUES (2, 1, 3, 15, '2010-02-11');

INSERT INTO warehouse_to_store (WAREHOUSE_ID, STORE_ID, PRODUCT_ID, quantity, supplied_at) VALUES (1, 2, 1, 5, '2010-02-11');
INSERT INTO warehouse_to_store (WAREHOUSE_ID, STORE_ID, PRODUCT_ID, quantity, supplied_at) VALUES (1, 2, 2, 10, '2010-02-11');
INSERT INTO warehouse_to_store (WAREHOUSE_ID, STORE_ID, PRODUCT_ID, quantity, supplied_at) VALUES (2, 2, 5, 3, '2010-02-12');

/* PRODUCTION INSERT */
INSERT INTO production (FACTORY_ID, WAREHOUSE_ID, PRODUCT_ID, quantity, produced_at) VALUES (1, 1, 1, 5, '2010-01-10');
INSERT INTO production (FACTORY_ID, WAREHOUSE_ID, PRODUCT_ID, quantity, produced_at) VALUES (1, 1, 2, 7, '2010-01-11');
INSERT INTO production (FACTORY_ID, WAREHOUSE_ID, PRODUCT_ID, quantity, produced_at) VALUES (2, 2, 3, 8, '2010-01-11');
INSERT INTO production (FACTORY_ID, WAREHOUSE_ID, PRODUCT_ID, quantity, produced_at) VALUES (2, 2, 4, 15, '2010-01-12');
INSERT INTO production (FACTORY_ID, WAREHOUSE_ID, PRODUCT_ID, quantity, produced_at) VALUES (2, 2, 5, 5, '2010-01-12');
INSERT INTO production (FACTORY_ID, WAREHOUSE_ID, PRODUCT_ID, quantity, produced_at) VALUES (2, 2, 6, 12, '2010-01-12');

/* ORDER INSERT */
INSERT INTO perfect_tools.order (CLIENT_ID, status, STORE_ID, created_at) VALUES (1,'order_accepted', 1 , '2010-04-01' );
INSERT INTO perfect_tools.order (CLIENT_ID, status, STORE_ID, created_at) VALUES (2,'order_in_process', 1 , '2010-04-02' );
INSERT INTO perfect_tools.order (CLIENT_ID, status, STORE_ID, created_at) VALUES (3,'order_in_process', 1 , '2010-04-02' );
INSERT INTO perfect_tools.order (CLIENT_ID, status, STORE_ID, created_at) VALUES (4,'order_in_process', 2 , '2010-04-04' );
INSERT INTO perfect_tools.order (CLIENT_ID, status, STORE_ID, created_at) VALUES (5,'order_in_process', 2 , '2010-04-05' );

INSERT INTO perfect_tools.order (CLIENT_ID, status, MANAGER_ID, WAREHOUSE_ID, created_at) VALUES (6,'order_completed', 16, 1 , '2010-04-10' );
INSERT INTO perfect_tools.order (CLIENT_ID, status, MANAGER_ID, WAREHOUSE_ID, created_at) VALUES (7,'order_completed', 17, 2 , '2010-04-10' );

/* ORDER PRODUCT INSERT */
INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 1, 1, 1 );
INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 2, 2, 2 );
INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 3, 3, 3 );
INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 4, 4, 1 );
INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 5, 3, 2 );
INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 6, 2, 5 );
INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 6, 1, 5 );
INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 7, 6, 4 );
INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 7, 5, 8 );