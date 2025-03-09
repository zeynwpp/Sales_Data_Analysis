--yıllara göre satış toplamı

select s.YEAR_ID
, sum(s.SALES) as toplam_satis
from sales_data_sample s
group by s.YEAR_ID

--ay bazında ortalama sipariş tutarı

select s.MONTH_ID
, avg(s.QUANTITYORDERED) as AvgSales
from sales_data_sample s
group by s.MONTH_ID
order by 1

--en çok sipariş verilen 10 ürün kodu

select top 10 s.productcode
, sum(s.QUANTITYORDERED) as TotalQuantity
from sales_data_sample s
group by s.productcode
order by TotalQuantity desc

--Sipariş sayısına göre müşteri segmentasyonu

--Gerçek satış fiyatı ile MSRP(Önerilen Fiyat) karşılaştırması

