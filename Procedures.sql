CREATE PROCEDURE move_materials_to_factory (IN warehouse INT, IN factory INT, IN material INT, IN quantity INT, in supplied_at date)
BEGIN
INSERT INTO material_to_factory (WAREHOUSE_ID, FACTORY_ID, MATERIAL_ID, quantity, supplied_at) VALUES (warehouse, factory, material, quantity, supplied_at);
UPDATE warehouse_material
          SET warehouse_material.quantity = warehouse_material.quantity - quantity
          WHERE WAREHOUSE_ID = warehouse AND MATERIAL_ID = material;
END
