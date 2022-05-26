/* OWNER */

		/*Операції з працівниками*/
        
			/* Додавання нового працівника на фабрику */
			INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Factory) VALUES ('Courtney', 'Hope', 'CourtneyHope', 'Courtney', 16000, 3,  '2010-01-02', 1); 
			
			/* Додавання нового працівника в магазин */
			INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Store) VALUES ('Saddam', 'Fus', 'SaddamFus', 'Saddam', 21000, 5, '2010-01-05', 1);
			
			/* Додавання нового працівника на склад */
			INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at, Emp_Warehouse) VALUES ('Gans', 'Hose', 'GansHose', 'Gans', 13000, 4, '2010-01-08', 1);
			
			/* Додавання нового менеджера продаж */
			INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at) VALUES ('Chloe', 'Doe', 'ChloeDoe', 'Chloe', 31000, 2, '2010-01-04');
			
			/* Додавання нового менеджера поставок */
			INSERT INTO employee (firstName, surName, login, password, salary, POSITION_ID, created_at) VALUES ('Daria', 'Kell', 'DariaKell', 'Daria', 29500, 1, '2010-01-05');

			/* Видалення працівника */ 
			DELETE FROM employee
			where firstName = 'Daria';
     
			/* Перегляд всіх робітників */
			SELECT employee.id as 'Employee Id', firstName as 'First Name', surName  as 'Surname', position.name as 'Position', salary as 'Salary' 
			FROM employee 
			JOIN position on position.id = POSITION_ID
			ORDER BY employee.id;
       
      /* Аналітика по замовленнях */
      
          /* Всі роздрібні замовлення */
		  SELECT client.firstName as 'Client  name', client.address as 'Client address', perfect_tools.ORDER.id as 'Order Id', perfect_tools.order.status, perfect_tools.order.created_at, product.name as 'Product name', order_product.quantity, order_product.quantity * product.price as 'Total sum' 
		  FROM perfect_tools.ORDER
		  join client on CLIENT_ID = client.id 
		  join order_product on ORDER_ID = perfect_tools.order.id
		  join product on product.id = order_product.PRODUCT_ID
		  WHERE client.CLIENT_TYPE = 'retail';
          
          /* Всі оптові замовлення */
		  SELECT client.firstName as 'Client  name', client.address as 'Client address', perfect_tools.ORDER.id as 'Order Id', perfect_tools.order.status, perfect_tools.order.created_at, product.name as 'Product name', order_product.quantity, order_product.quantity * product.price as 'Total sum' 
		  FROM perfect_tools.order
		  join client on CLIENT_ID = client.id 
		  join order_product on ORDER_ID = perfect_tools.order.id
		  join product on product.id = order_product.PRODUCT_ID
		  WHERE client.CLIENT_TYPE = 'wholesale';
          
          /* Сумарний заробіток від замовлень */
		  SELECT  Count(DISTINCT perfect_tools.order.id) as 'Number of orders' , SUM(product.price * order_product.quantity) as 'Total  sum'
          FROM order_product
          JOIN perfect_tools.order on order_product.ORDER_ID = perfect_tools.order.id
          JOIN product on order_product.PRODUCT_ID = product.id
          JOIN client on perfect_tools.order.CLIENT_ID = client.id;          
          
          /* Сумарний заробіток від роздрібних продаж */
		  SELECT client.CLIENT_TYPE as 'Clients type', Count(DISTINCT perfect_tools.order.id) as 'Number of orders' , SUM(product.price * order_product.quantity) as 'Total retail sum'
          FROM order_product
          JOIN perfect_tools.order on order_product.ORDER_ID = perfect_tools.order.id
          JOIN product on order_product.PRODUCT_ID = product.id
          JOIN client on perfect_tools.order.CLIENT_ID = client.id
          WHERE client.CLIENT_TYPE = 'retail';
          
		  /* Сумарний заробіток від оптових продаж */
		  SELECT client.CLIENT_TYPE as 'Clients type', Count(DISTINCT perfect_tools.order.id) as 'Number of orders', SUM(product.price * order_product.quantity) as 'Total wholasale sum'
          FROM order_product
          JOIN perfect_tools.order on order_product.ORDER_ID = perfect_tools.order.id
          JOIN product on order_product.PRODUCT_ID = product.id
          JOIN client on perfect_tools.order.CLIENT_ID = client.id
          WHERE client.CLIENT_TYPE = 'wholesale';
          
          /* Сумарний заробіток за конкретний місяць */
          SELECT Count(DISTINCT perfect_tools.order.id) as 'Number of orders', SUM(product.price * order_product.quantity) as 'Total month sum', monthname(perfect_tools.order.created_at) as 'Month', YEAR(perfect_tools.order.created_at) as 'Year'
          FROM order_product
          JOIN perfect_tools.order on order_product.ORDER_ID = perfect_tools.order.id
          JOIN product on order_product.PRODUCT_ID = product.id
          JOIN client on perfect_tools.order.CLIENT_ID = client.id
          WHERE perfect_tools.order.created_at BETWEEN '2010-04-01' AND '2010-04-30';
          
      /* Аналітика по складах */
      
			 /* Кількість складів */
			 SELECT id as "ID", address as 'Warehouse address' FROM warehouse;
			 
			 /* Кількість товарів на конкретному складі */
			 SELECT warehouse.address as 'Warehouse address', product.name as 'Product Name', quantity
			 FROM warehouse_product
			 JOIN product on warehouse_product.PRODUCT_ID = product.id
			 JOIN warehouse on warehouse_product.WAREHOUSE_ID = warehouse.id
			 WHERE warehouse_product.WAREHOUSE_ID = 1; /* На першому складі (з двох) */
			  
			 /* Товарів у грошах на конкретному складі */
			 SELECT warehouse.address, SUM(product.price * warehouse_product.quantity) as 'Summary value of goods' FROM warehouse
			 JOIN warehouse_product on warehouse_product.WAREHOUSE_ID = warehouse.id
			 JOIN product ON warehouse_product.PRODUCT_ID = product.id
			 WHERE warehouse_product.WAREHOUSE_ID = 1; /* На першому складі (з двох) */
      
      /* Аналітика по магазинах */
      
			  /* Кількість магазинів */
			  SELECT id as "ID", address as 'Store address' FROM store;
			 
			  /* Кількість товарів у конкретному магазині */
			  SELECT store.address as 'Store address', product.name as 'Product Name', quantity 
			  FROM store_product
			  JOIN product on PRODUCT_ID = product.id
			  JOIN store on STORE_ID = store.id
			  WHERE store_product.STORE_ID = 1;	 /* В першому магазині (з чотирьох) */
			  
			  /* Товарів у грошах в конкретному магазині */
			  SELECT store.address, SUM(product.price * store_product.quantity) as 'Summary value of goods'
			  FROM store
			  JOIN store_product on store_product.STORE_ID = store.id
			  JOIN product on store_product.PRODUCT_ID = product.id
			  WHERE store_product.STORE_ID = 1; /* В першому магазині (з чотирьох) */
          
	  /* Аналітика по виробництві */   
		  
          /* Кількість фабрик */
          SELECT id as "ID", address as 'Factory address' FROM factory;
          
          /* Всі записи по виробництву */
          SELECT production.id, factory.address as 'From factory', warehouse.address as 'To warehouse', product.name as 'Product name', production.quantity, production.produced_at
          FROM production
          JOIN factory on production.FACTORY_ID = factory.id
          JOIN warehouse on production.WAREHOUSE_ID = warehouse.id
          JOIN product on production.PRODUCT_ID = product.id;
          
          /* Останній запис по виробництву */
          SELECT max(production.id), factory.address as 'From factory', warehouse.address as 'To warehouse', product.name as 'Product name', production.quantity, production.produced_at
          FROM production
          JOIN factory on production.FACTORY_ID = factory.id
          JOIN warehouse on production.WAREHOUSE_ID = warehouse.id
          JOIN product on production.PRODUCT_ID = product.id;
          
          /* Запис по виробництву на конкретну дату */
          SELECT production.id, factory.address as 'From factory', warehouse.address as 'To warehouse', product.name as 'Product name', production.quantity, production.produced_at
          FROM production
          JOIN factory on production.FACTORY_ID = factory.id
          JOIN warehouse on production.WAREHOUSE_ID = warehouse.id
          JOIN product on production.PRODUCT_ID = product.id
          WHERE produced_at = '2010-01-12';
          
          /* Запис по виробництву в грошах */
          SELECT production.id, factory.address as 'From factory', warehouse.address as 'To warehouse', product.name as 'Product name', production.quantity, product.price * production.quantity as 'Total cost' ,production.produced_at
          FROM production
          JOIN factory on production.FACTORY_ID = factory.id
          JOIN warehouse on production.WAREHOUSE_ID = warehouse.id
          JOIN product on production.PRODUCT_ID = product.id;
		
        /* Операції з асортиментом продуктів */
          
          /* Прегляд всього асортименту товарів */
          SELECT product.id as 'Id', product.name as 'Product name', product.price as 'Product price', product.description as 'Product description', product.status, product_category.name as 'Category'
          FROM product
          JOIN product_category on category_id = product_category.id;
          
          /* Добавлення нового товару в асортимент */
          INSERT INTO product (name, price, description, status, category_id) VALUES ('SUPER DRILL', 5000, 'Has a 15 amp motor that delivers 12,000 OPM', 'in_stock',  1);
          
		  /* Видалення товару в з асортименту */
          DELETE FROM product
          WHERE name = 'SUPER DRILL';

	  /* Аналітика по поставщиках */
      
          /* Прегляд поставщиків із закріпленими менеджерами */
		  SELECT supplier.id AS 'Id', supplier.name as 'Supplier name', supplier.email as 'Email', supplier.phoneNumber as 'Phone number',  supplier.MANAGER_ID as 'Manager Id',CONCAT(employee.firstName, ' ', employee.surName) as 'Manager name', supplier.address as 'Supplier address', supplier_contract.contract_src as 'Contract', material.name as 'Supplied material'
          FROM supplier
          JOIN employee on supplier.MANAGER_ID = employee.id
          JOIN supplier_contract on SUPPLIER_ID = supplier.id
          JOIN contract_material on contract_material.CONTRACT_ID = supplier_contract.id
          JOIN material on contract_material.MATERIAL_ID = material.id;          
         
/* FACTORY WORKER */

		  /* Всі записи по виробництву */
          SELECT production.id, factory.address as 'From factory', warehouse.address as 'To warehouse', product.name as 'Product name', production.quantity, production.produced_at
          FROM production
          JOIN factory on production.FACTORY_ID = factory.id
          JOIN warehouse on production.WAREHOUSE_ID = warehouse.id
          JOIN product on production.PRODUCT_ID = product.id;
          
          /* Створення нового запису про виробництво */
		  INSERT INTO production (FACTORY_ID, WAREHOUSE_ID, PRODUCT_ID, quantity, produced_at) VALUES (1, 1, 6, 5, '2010-01-14');
          
				/* Створення запису про виробництво за допомогою функціїї */
                CALL production (1,1,6,5,'2010-01-14');
          
          /* Редагування запису про виробництво */
          UPDATE production
          SET WAREHOUSE_ID = 2
          WHERE production.id = 7;
          
/* WAREHOUSE WORKER */
		  
		/* Операції з товарами */
        
          /* Кількість товарів на конкретному складі */
		  SELECT warehouse.address as 'Warehouse address', product.id, product.name as 'Product Name', quantity
		  FROM warehouse_product
		  JOIN product on warehouse_product.PRODUCT_ID = product.id
		  JOIN warehouse on warehouse_product.WAREHOUSE_ID = warehouse.id
		  WHERE warehouse_product.WAREHOUSE_ID = 1; /* На першому складі (з двох) */
          
          /* Перегляд записів про переміщення товарів в магазин */
          SELECT warehouse_to_store.id as 'Id', warehouse_to_store.WAREHOUSE_ID as 'Warehouse Id', warehouse.address as 'Warehouse address' , warehouse_to_store.STORE_ID as 'Store Id', store.address as 'Store address', warehouse_to_store.PRODUCT_ID as 'Product Id', product.name as 'Product name', warehouse_to_store.quantity, warehouse_to_store.supplied_at as 'Supplied at' 
          FROM warehouse_to_store
          JOIN warehouse on warehouse_to_store.WAREHOUSE_ID = warehouse.id
          JOIN store on warehouse_to_store.STORE_ID = store.id
          JOIN product on warehouse_to_store.PRODUCT_ID = product.id;
          
          /* Оприбуткування товарів на склад */
          INSERT INTO warehouse_product (WAREHOUSE_ID, PRODUCT_ID, quantity) VALUES (1, 6, 5); /* Новий товар */
          
          UPDATE warehouse_product
          SET quantity = quantity + 3
          WHERE WAREHOUSE_ID = 1 AND PRODUCT_ID = 2;/* Старий товар */
          
          /* Запис про переміщення товарів зі складу в магазин */
          UPDATE warehouse_product
          SET quantity = quantity - 3
          WHERE WAREHOUSE_ID = 1 AND PRODUCT_ID = 2;
          
          INSERT INTO warehouse_to_store (WAREHOUSE_ID, STORE_ID, PRODUCT_ID, quantity, supplied_at) VALUES (1, 1, 2, 3, '2010-02-13');
          
				/* Переміщення товарів в магазини за допомогою функції */
                CALL move_products_to_stores (1, 1, 2, 3, '2010-02-13');
                
          /* Списання товару згідно замовлення (Id = 9) */
		  UPDATE warehouse_product
          SET quantity = quantity - 2
          WHERE WAREHOUSE_ID = 1 AND PRODUCT_ID = 1;
          
		/* Операції з матеріалами */
          
		  /* Кількість матеріалів на конкретному складі */
		  SELECT warehouse.address as 'Warehouse address', material.id, material.name as 'Material Name', quantity
		  FROM warehouse_material
          JOIN material on MATERIAL_ID = material.id
		  JOIN warehouse on WAREHOUSE_ID = warehouse.id 
          WHERE WAREHOUSE_ID = 1;/* На першому складі (з двох) */
          
          /* Перегляд записів про переміщення матеріалів зі складу на фабрику */
          SELECT material_to_factory.id as 'Id', material_to_factory.WAREHOUSE_ID as 'Warehouse Id', warehouse.address as 'Warehouse address', material_to_factory.FACTORY_ID as 'Factory Id', factory.address as 'Factory address', material_to_factory.MATERIAL_ID as 'Material Id', material.name as 'Material name', material_to_factory.quantity, material_to_factory.supplied_at as 'Supplied at'  
          FROM material_to_factory
          JOIN warehouse on material_to_factory.WAREHOUSE_ID = warehouse.id
          JOIN factory ON material_to_factory.FACTORY_ID = factory.id
          JOIN material on material_to_factory.MATERIAL_ID = material.id
          ORDER BY material_to_factory.supplied_at;
          
          /* Оприбуткування матеріалів на склад */
          INSERT INTO warehouse_material (WAREHOUSE_ID, MATERIAL_ID, quantity) VALUES (1, 1, 20); /* Новий матеріал */
          
          UPDATE warehouse_material
          SET quantity = quantity + 10
          WHERE WAREHOUSE_ID = 1 AND MATERIAL_ID = 3; /* Старий матеріал */
          
          /* Запис про переміщення матеріалів зі складу на фабрику */
          UPDATE warehouse_material
          SET quantity = quantity - 10
          WHERE WAREHOUSE_ID = 1 AND MATERIAL_ID = 3; /* Зняття зі складу */
          
          INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (1, 1, 3, 10, '2010-02-08');
          
			/* Запис про переміщення матеріалів зі складу на фабрику за допомогою процедури*/
			CALL move_materials_to_factory(1, 1, 3, 20, '2010-02-09');
            
   /* STORE WORKER */
		
		  /* Кількість товарів у конкретному магазині */
		  SELECT store.address as 'Store address', store_product.PRODUCT_ID as 'Product id' , product.name as 'Product Name', quantity 
		  FROM store_product
		  JOIN product on PRODUCT_ID = product.id
		  JOIN store on STORE_ID = store.id
		  WHERE store_product.STORE_ID = 1;	 /* В першому магазині (з чотирьох) */
          
          /* Замовлення виконані в конкретному магазині */
          SELECT perfect_tools.order.id as 'Id', CONCAT(client.firstName, ' ' ,client.surName) as 'Client name', store.address as 'Store address', product.name as 'Product name', order_product.quantity , product.price * order_product.quantity as 'Total sum',perfect_tools.order.created_at as 'Created at'
          FROM perfect_tools.order
          JOIN client on perfect_tools.order.CLIENT_ID = client.id
          JOIN store on perfect_tools.order.STORE_ID = store.id
          JOIN order_product on perfect_tools.order.id = order_product.ORDER_ID
          JOIN product on order_product.PRODUCT_ID = product.id
          WHERE perfect_tools.order.STORE_ID = 1; /* В першому магазині (з чотирьох) */
          
          /* Оприбуткування товару в магазин */
          UPDATE store_product
          SET quantity = quantity + 3
          WHERE STORE_ID = 1 AND PRODUCT_ID = 2;
          
          /* Реєстрація нового замовлення */
          INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Alex','Saint', 0234867894, 'alex.saint@mail.com', 'Lviv, Vyhovsky Str', 'retail', '2010-04-17');
          INSERT INTO perfect_tools.order (CLIENT_ID, status, STORE_ID, created_at) VALUES (11, 'order_completed', 1 , '2010-04-17' );
          INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 8, 2, 3 );
          
		  /* Списання товару згідно родрібного замовлення (Id = 8) */
		  UPDATE store_product
          SET quantity = quantity - 3
          WHERE STORE_ID = 1 AND PRODUCT_ID = 2;
          
	/* SUPPLY MANAGER */
    
		  /* Прегляд поставщиків із закріпленими менеджерами */
		  SELECT supplier.id AS 'Id', supplier.name as 'Supplier name', supplier.email as 'Email', supplier.phoneNumber as 'Phone number',  supplier.MANAGER_ID as 'Manager Id',CONCAT(employee.firstName, ' ', employee.surName) as 'Manager name', supplier.address as 'Supplier address', supplier_contract.contract_src as 'Contract', material.name as 'Supplied material'
          FROM supplier
          JOIN employee on supplier.MANAGER_ID = employee.id
          JOIN supplier_contract on SUPPLIER_ID = supplier.id
          JOIN contract_material on contract_material.CONTRACT_ID = supplier_contract.id
          JOIN material on contract_material.MATERIAL_ID = material.id; 
          
          /* Перегляд поставлених товарів по контрактах */
          SELECT supplier.id AS 'Id', supplier.name as 'Supplier name',  supplier_contract.contract_src as 'Contract', material.name as 'Supplied material', contract_material.quantity as 'Material quantity'
          FROM supplier
          JOIN employee on supplier.MANAGER_ID = employee.id
          JOIN supplier_contract on SUPPLIER_ID = supplier.id
          JOIN contract_material on contract_material.CONTRACT_ID = supplier_contract.id
          JOIN material on contract_material.MATERIAL_ID = material.id;
          
          /* Створення нового поставщика */
          INSERT INTO supplier (name, email, phoneNumber, MANAGER_ID, address) VALUES ('SP "CORGY"', 'corgy.company@mail.com', 0984712893, 15, 'US, NY-Brooklyn'); 
          
          /* Створення нового контракту */
          INSERT INTO supplier_contract (SUPPLIER_ID, contract_src) VALUES (4, 'CORGY_contract.pdf'); /* На основі попреднього INSERT */
          INSERT INTO contract_material (CONTRACT_ID, MATERIAL_ID, quantity) VALUES (4, 4, 100);

	/* SALES MANAGER */
    
          /* Всі оптові замовлення */
          SELECT client.firstName as 'Client  name', client.address as 'Client address', perfect_tools.ORDER.id as 'Order Id', perfect_tools.order.status, perfect_tools.order.created_at, product.name as 'Product name', order_product.quantity, order_product.quantity * product.price as 'Total sum' 
		  FROM perfect_tools.order
		  join client on CLIENT_ID = client.id 
		  join order_product on ORDER_ID = perfect_tools.order.id
		  join product on product.id = order_product.PRODUCT_ID
		  WHERE client.CLIENT_TYPE = 'wholesale';
          
          /* Сумарний заробіток від оптового клієнта */
		  SELECT CONCAT(client.firstName, ' ', client.surName) as 'Client name' , client.CLIENT_TYPE as 'Clients type', Count(DISTINCT perfect_tools.order.id) as 'Number of orders', SUM(product.price * order_product.quantity) as 'Total wholasale sum'
          FROM order_product
          JOIN perfect_tools.order on order_product.ORDER_ID = perfect_tools.order.id
          JOIN product on order_product.PRODUCT_ID = product.id
          JOIN client on perfect_tools.order.CLIENT_ID = client.id
          WHERE client.CLIENT_TYPE = 'wholesale' AND client.id = 6;
          
          /* Реєстрація нового клієнта */
          INSERT INTO CLIENT (firstName, surName, phoneNumber, email, address, CLIENT_TYPE, created_at) VALUES ('Fernando','Torres', 0234867894, 'fernando.torres@mail.com', 'Lviv, Antonenka Str', 'wholesale', '2010-04-18');
          
          /* Реєстрація нового замовлення */
          INSERT INTO perfect_tools.order (CLIENT_ID, status, WAREHOUSE_ID, created_at) VALUES (12, 'order_accepted', 1 , '2010-04-18' );
          INSERT INTO order_product (ORDER_ID, PRODUCT_ID, quantity) VALUES ( 9, 1, 2 );
				
          
          