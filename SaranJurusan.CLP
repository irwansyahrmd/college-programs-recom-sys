(defrule suka-sains
=>
(printout t "Apakah anda menyukai sains (y/t)?")
(assert (suka-sains (read))))

(defrule suka-seni
(suka-sains t)
=>
(printout t "Apakah anda menyukai seni (y/t)?")
(assert (suka-seni (read))))

(defrule jiwa-kewarganegaraan-tinggi
(suka-seni t)
=>
(printout t "Apakah jiwa kewarganegaraan anda tinggi (y/t)?")
(assert (jiwa-kewarganegaraan-tinggi (read))))

(defrule tertarik-bisnis
(jiwa-kewarganegaraan-tinggi t)
=>
(printout t "Apakah anda tertarik dalam bidang bisnis (y/t)?")
(assert (tertarik-bisnis (read))))

(defrule tertarik-ilmu-statistik
(tertarik-bisnis t)
=>
(printout t "Apakah anda tertarik dengan ilmu statistik (y/t)?")
(assert (tertarik-ilmu-statistik (read))))

(defrule ahli-menghitung
(tertarik-ilmu-statistik t)
=>
(printout t "Apakah anda ahli menghitung (y/t)?")
(assert (ahli-menghitung (read))))

(defrule anggota-dpr
(ahli-menghitung t)
=>
(printout t "Anda cocok untuk menjadi anggota DPR" crlf))

(defrule ilmu-accounting
(ahli-menghitung y)
=>
(printout t "Anda lebih cocok memilih jurusan Ilmu Accounting" crlf))

(defrule ilmu-ekonomi
(tertarik-ilmu-statistik y)
=>
(printout t "Anda lebih cocok memilih jurusan Ilmu Ekonomi" crlf))

(defrule manajemen-bisnis
(tertarik-bisnis y)
=>
(printout t "Anda lebih cocok memilih jurusan Manajemen Bisnis" crlf))

(defrule hubungan-internasional
(jiwa-kewarganegaraan-tinggi y)
=>
(printout t "Anda lebih cocok memilih jurusan Hubungan Internasional" crlf))

(defrule bermain-alat-musik
(suka-seni y)
=>
(printout t "Apakah anda senang bermain alat musik (y/t)?")
(assert (bermain-alat-musik (read))))

(defrule senang-menggambar
(or (bermain-alat-musik y) (bermain-alat-musik t))
=>
(printout t "Apakah anda senang menggambar (y/t)?")
(assert (senang-menggambar (read))))

(defrule seni-musik
(bermain-alat-musik y)
(senang-menggambar t)
=>
(printout t "Anda lebih cocok memilih jurusan Seni Musik" crlf))

(defrule seni-rupa
(bermain-alat-musik y)
(senang-menggambar y)
=>
(printout t "Anda lebih cocok memilih jurusan Seni Rupa" crlf))

(defrule design-komunikasi-visual
(bermain-alat-musik t)
(senang-menggambar y)
=>
(printout t "Anda lebih cocok memilih jurusan Design Komunikasi Visual" crlf))

(defrule seni-teater
(bermain-alat-musik t)
(senang-menggambar t)
=>
(printout t "Anda lebih cocok memilih jurusan Seni Teater" crlf))

(defrule suka-teknologi
(suka-sains y)
=>
(printout t "Apakah anda menyukai teknologi (y/t)?")
(assert (suka-teknologi (read))))

(defrule senang-komputer
(suka-teknologi y)
=>
(printout t "Apakah anda senang bekerja dengan komputer (y/t)?")
(assert (senang-komputer (read))))

(defrule tertarik-robotik-elektronik
(senang-komputer y)
=>
(printout t "Apakah anda tertarik dengan robot dan elektronik (y/t)?")
(assert (tertarik-robotik-elektronik (read))))

(defrule teknik-elektro
(tertarik-robotik-elektronik y)
=>
(printout t "Anda lebih cocok memilih jurusan Teknik Elektro" crlf))

(defrule teknik-informatika
(tertarik-robotik-elektronik t)
=>
(printout t "Anda lebih cocok memilih jurusan Teknik Informatika" crlf))

(defrule tertarik-industri
(senang-komputer t)
=>
(printout t "Apakah anda tertarik dengan industri (y/t)?")
(assert (tertarik-industri (read))))

(defrule tertarik-industri-permesinan
(tertarik-industri y)
=>
(printout t "Apakah anda tertarik dengan industri permesinan(y/t)?")
(assert (tertarik-industri-permesinan (read))))

(defrule teknik-mesin
(tertarik-industri-permesinan y)
=>
(printout t "Anda lebih cocok memilih jurusan Teknik Mesin" crlf))

(defrule suka-eksplorasi-ekspedisi
(or (tertarik-industri t) (tertarik-industri-permesinan t))
=>
(printout t "Apakah anda menyukai eksplorasi dan ekspedisi (y/t)?")
(assert (suka-eksplorasi-ekspedisi (read))))

(defrule teknik-perminyakan
(suka-eksplorasi-ekspedisi y)
=>
(printout t "Anda lebih cocok memilih jurusan Teknik Perminyakan" crlf))

(defrule teknik-indusri
(suka-eksplorasi-ekspedisi t)
=>
(printout t "Anda lebih cocok memilih jurusan Teknik Industri" crlf))

(defrule suka-tata-bangunan
(suka-teknologi t)
=>
(printout t "Apakah anda menyukai tata bangunan (y/t)?")
(assert (suka-tata-bangunan (read))))

(defrule senang-terjun-ke-proyek
(or 
(suka-tata-interior-bangunan y)
(suka-tata-interior-bangunan t)
)
=>
(printout t "Apakah anda senang terjun langsung ke dalam proyek (y/t)?")
(assert (senang-terjun-ke-proyek (read))))

(defrule suka-tata-interior-bangunan
(or 
(suka-tata-bangunan y)
(suka-tata-bangunan t)
)
=>
(printout t "Apakah anda menyukai tata interior bangunan (y/t)?")
(assert (suka-tata-interior-bangunan (read))))

(defrule senang-menggambar-bangunan
(or 
(senang-terjun-ke-proyek y)
(senang-terjun-ke-proyek t)
)
=>
(printout t "Apakah anda senang menggambar (y/t)?")
(assert (senang-menggambar-bangunan (read))))

(defrule teknik-arsitektur
(suka-tata-bangunan y) 
(senang-terjun-ke-proyek t) 
(suka-tata-interior-bangunan t) 
(senang-menggambar-bangunan y)
=>
(printout t "Anda lebih cocok memilih jurusan Teknik Arsitektur" crlf))

(defrule desain-interior
(suka-tata-bangunan t) 
(senang-terjun-ke-proyek t) 
(suka-tata-interior-bangunan y) 
(senang-menggambar-bangunan y)
=>
(printout t "Anda lebih cocok memilih jurusan Desain Interior" crlf))

(defrule teknik-sipil
(or 
(and (suka-tata-bangunan y) 
(senang-terjun-ke-proyek y) 
(suka-tata-interior-bangunan y) 
(senang-menggambar-bangunan y) )

(and (suka-tata-bangunan y) 
(senang-terjun-ke-proyek y) 
(suka-tata-interior-bangunan y) 
(senang-menggambar-bangunan t) )

(and (suka-tata-bangunan y) 
(senang-terjun-ke-proyek y) 
(suka-tata-interior-bangunan t) 
(senang-menggambar-bangunan y) )

(and (suka-tata-bangunan y) 
(senang-terjun-ke-proyek y) 
(suka-tata-interior-bangunan t) 
(senang-menggambar-bangunan t) )

(and (suka-tata-bangunan y) 
(senang-terjun-ke-proyek t) 
(suka-tata-interior-bangunan y) 
(senang-menggambar-bangunan y) )

(and (suka-tata-bangunan y) 
(senang-terjun-ke-proyek t) 
(suka-tata-interior-bangunan y) 
(senang-menggambar-bangunan t) )

(and (suka-tata-bangunan y) 
(senang-terjun-ke-proyek t) 
(suka-tata-interior-bangunan t) 
(senang-menggambar-bangunan t) )

(and (suka-tata-bangunan t) 
(senang-terjun-ke-proyek y) 
(suka-tata-interior-bangunan y) 
(senang-menggambar-bangunan y) )

(and (suka-tata-bangunan t) 
(senang-terjun-ke-proyek y) 
(suka-tata-interior-bangunan y) 
(senang-menggambar-bangunan t) )

(and (suka-tata-bangunan t) 
(senang-terjun-ke-proyek y) 
(suka-tata-interior-bangunan t) 
(senang-menggambar-bangunan y) )

(and (suka-tata-bangunan t) 
(senang-terjun-ke-proyek y) 
(suka-tata-interior-bangunan t) 
(senang-menggambar-bangunan t) )

(and (suka-tata-bangunan t) 
(senang-terjun-ke-proyek t) 
(suka-tata-interior-bangunan y) 
(senang-menggambar-bangunan t) )

(and (suka-tata-bangunan t) 
(senang-terjun-ke-proyek t) 
(suka-tata-interior-bangunan t) 
(senang-menggambar-bangunan y) )

(and (suka-tata-bangunan t) 
(senang-terjun-ke-proyek t) 
(suka-tata-interior-bangunan t) 
(senang-menggambar-bangunan t) )
)
=>
(printout t "Anda lebih cocok memilih jurusan Teknik Sipil" crlf))