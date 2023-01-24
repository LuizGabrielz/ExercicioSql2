SELECT cliente.nome, SUM(preco)
FROM pedido
INNER JOIN cliente ON pedido.id_cliente = cliente.id WHERE pedido.data_pedido 
BETWEEN '2023-09-04' AND '2023-12-05'
GROUP BY cliente.nome; 


CREATE OR REPLACE FUNCTION sales_performance_report(Data_Inicio DATE, Data_fim DATE)
RETURNS TABLE (categoria TEXT, nome_funcionario TEXT, total_vendas NUMERIC, comissao NUMERIC) 
AS $$
BEGIN
   
    CREATE TEMPORARY TABLE sales_performance (LIKE venda);

    
    INSERT INTO sales_performance
    SELECT v.id_venda, v.data_venda, v.valor, p.categoria, f.nome, 0.10 * v.valor as comissao
    FROM venda v
    JOIN produtos p ON v.id_produto = p.id_produto
    JOIN funcionarios f ON v.id_funcionario = f.id_funcionario
    WHERE v.data_venda >= start_date AND v.data_venda <= end_date;

    
    RETURN QUERY
    SELECT category, employee_name, SUM(total_sales) as total_sales, SUM(commission) as commission
    FROM sales_performance
    GROUP BY category, employee_name;
END;
$$ LANGUAGE plpgsql;
