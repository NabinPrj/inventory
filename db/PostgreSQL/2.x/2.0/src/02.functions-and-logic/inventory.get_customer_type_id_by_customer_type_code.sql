﻿DROP FUNCTION IF EXISTS inventory.get_customer_type_id_by_customer_type_code(text);

CREATE FUNCTION inventory.get_customer_type_id_by_customer_type_code(text)
RETURNS integer
STABLE
AS
$$
BEGIN
    RETURN customer_type_id
    FROM inventory.customer_types
    WHERE customer_type_code=$1;
END
$$
LANGUAGE plpgsql;
