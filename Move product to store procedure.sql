CREATE PROCEDURE move_products_to_stores (IN warehouse INT, IN store INT, IN product INT, IN quantity INT, in supplied_at DATE)
BEGIN
INSERT INTO warehouse_to_store (WAREHOUSE_ID, STORE_ID, PRODUCT_ID, quantity, supplied_at) VALUES (warehouse, store, product, quantity, supplied_at);
UPDATE warehouse_product
          SET warehouse_product.quantity = warehouse_product.quantity - quantity
          WHERE WAREHOUSE_ID = warehouse AND PRODUCT_ID = product;
END
