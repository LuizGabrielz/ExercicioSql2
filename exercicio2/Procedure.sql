CREATE OR REPLACE FUNCTION SelectVenda()
RETURNS TABLE (col1 type1, col2 type2, ...) 
AS $$
BEGIN
    RETURN QUERY SELECT * FROM venda;
END;
$$ LANGUAGE plpgsql; 
