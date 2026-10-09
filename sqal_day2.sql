#clauses with operators
#operation & aggregation
1.comparsion operator
2.range(BETWEEN)
3.pattern (LIKE)
4.LOGIC(AND,OR,NOT)
5.COMPARISON OPERATORS

select * from products;
select * from products where category != 'electronic'

select * from products where sku_code like '123';

select * from products where price between 400 and 100;


#aggregation function
1.count()
2.sum()
3.avg()
4.min()
5.max()

select count(product_id) from products;


#string function
1.upper
2.lower
3.length

select upper(name) from products;
1.LEFT()
2.RIGHT()
#string function
#select name, substring (sku_code , 1,n) from products;
#indexng start from 1

select name , substring (sku_code ,1,2) from products;

select RIGHT(sku_code,6) from products;


#concadination
select concat(name,'',category) from products;

#trim()
#replace()

aaj ye pada h caption de linkdin ke liye