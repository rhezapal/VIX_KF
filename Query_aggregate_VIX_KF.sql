with data1 as
(
select id_invoice, tanggal, a.id_customer, id_barang, jumlah_barang, unit, nama, 
    id_cabang_sales, cabang_sales, id_distributor, b.group
from penjualan as a left join pelanggan as b
on a.id_customer = b.id_customer
    )
select id_invoice, tanggal, nama, cabang_sales, id_distributor, data1.group, 
    jumlah_barang, nama_barang, kemasan, harga, brand
from data1 left join barang as c
on data1.id_barang = c.kode_barang

