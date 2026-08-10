#Creation Of Databadse
create database Decodelabs;

#Using Of Database
use Decodelabs;

#Creation Of Tble
Create table Project3(
	OrderID	varchar(12),	
    Orderdate date,
    CustomerID varchar(10),
	Product varchar(15),
	Quantity int,
	UnitPrice decimal(10,3),
	ShippingAddress	varchar(25),
    PaymentMethod	varchar(25),
    OrderStatus	varchar(18),
    TrackingNumber	varchar(20),
    ItemsInCart int,
	CouponCode varchar(10),
	ReferralSource	varchar(12),
    TotalPrice decimal (12,3)
    );

#Show All Data Of Table
  Select * from Project3;
  
#Show Data in Assending Order
  Select * from Project3
 order by OrderID asc;
  
#Show Data in Descending Order
  Select * from Project3
  order by OrderID desc;
  
#Show Data Only Where OrderStatus Is Delivered
  Select * from Project3
  where OrderStatus = "Delivered";
  
#Show Only Laptop Data
  Select * from Project3
  where Product = "Laptop";
  
  #Show Only Desk Data
  Select * from Project3
  where Product = "Desk";
  
#Show Total Price From Highest To Lowest
  Select * from Project3
  order by TotalPrice desc;
  
#Show Total Number Of Orders 
  select count(*) as OrderID
  from Project3;
  
#Show Order Count
 select Product, count(*) as OrderID
 from Project3
 group by Product;
 
#Show otal sales
 select sum(TotalPrice) as TotalSales
 from Project3;
 
#Show Average Order values
  select avg(TotalPrice) as Average_Order_Value
  from Project3;
  
#Show Highest Price Order
 Select * from Project3
 order by TotalPrice desc
 limit 5;
 
#Show Lowest Price Order
 Select * from Project3
 order by TotalPrice asc
 limit 5;

#Show Total Quantity Sold For Each Product
 select Product, sum(Quantity) as Total_Quantity_Sold
 from Project3
 group by Product;
 
#Show Products With More Than 100 Units Sold (HAVING)
  select Product, sum(Quantity) as Total_Quantity_Sold
  from Project3
  group by Product
  having sum(Quantity) > 100;
 
#Shows payment methods
 select PaymentMethod, count(*) as Total_Order
 from Project3
 group by PaymentMethod;
 
#Show Count Orders By Referral Source
  select ReferralSource, count(*) as Total_Order
  from Project3
  group by ReferralSource;
  
#Show Total Sales For Each Order Status
 select OrderStatus, sum(TOtalPrice) as Total_Sales
 from Project3
 group by OrderStatus;