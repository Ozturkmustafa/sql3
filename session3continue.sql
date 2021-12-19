SELECT * FROM markalar;

select markalar.marka_id, markalar.marka_adi,
	   siparisler.siparis_adedi, siparisler.siparis_tarihi
FROM markalar
JOIN siparisler
on markalar.marka_id = siparisler.marka_id;
