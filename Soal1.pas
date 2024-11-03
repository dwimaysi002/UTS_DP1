//ketik kode jawaban no 1 kamu disini
program HitungBiayaTransportasi;
uses crt;
var
  jarak : integer; // Variabel untuk menyimpan jarak perjalanan
  anggotaPremium : boolean; // Variabel untuk status keanggotaan premium
  biayaDasar, biayaTambahan, totalBiaya, totalAkhir : real; // Variabel untuk biaya
  inputPremium : string; // Variabel sementara untuk membaca input keanggotaan

begin
clrscr;
  biayaDasar := 20000; // Inisialisasi biaya dasar dengan nilai 20.000
  
  // Meminta input jarak perjalanan dari pengguna
program HitungBiayaTransportasi;
uses crt;
var
  jarak: integer; // Variabel untuk menyimpan jarak perjalanan
  anggotaPremium: boolean; // Variabel untuk status keanggotaan premium
  biayaDasar, biayaTambahan, totalBiaya, totalAkhir: real; // Variabel untuk biaya
  inputPremium: string; // Variabel sementara untuk membaca input keanggotaan

begin
clrscr;
  biayaDasar := 20000; // Inisialisasi biaya dasar dengan nilai 20.000
  
  // Meminta input jarak perjalanan dari pengguna
  write('Masukkan jarak perjalanan (KM): ');
  readln(jarak); // Membaca input jarak

  // Meminta input status keanggotaan premium
  write('Apakah Anda anggota premium? (true/false): ');
  readln(inputPremium); // Membaca input status keanggotaan sebagai string
  
  // Mengonversi input string menjadi boolean
  if inputPremium = 'true' then
    anggotaPremium := true
  else
    anggotaPremium := false;

  // Menghitung biaya tambahan berdasarkan jarak
  if jarak < 5 then
    biayaTambahan := jarak * 5000 // Jika jarak < 5 km, biaya tambahan 5000 per km
  else if (jarak >= 5) and (jarak <= 10) then
    biayaTambahan := jarak * 4000 // Jika jarak antara 5-10 km, biaya tambahan 4000 per km
  else
    biayaTambahan := jarak * 3000; // Jika jarak > 10 km, biaya tambahan 3000 per km

  totalBiaya := biayaDasar + biayaTambahan; // Menghitung total biaya sebelum diskon

  // Menghitung diskon jika total biaya lebih dari Rp100.000
  if totalBiaya > 100000 then
    totalAkhir := totalBiaya * 0.90 // Diskon pertama 10%
  else
    totalAkhir := totalBiaya; // Jika tidak ada diskon, totalAkhir tetap sama dengan totalBiaya

  // Jika anggota premium, hitung diskon tambahan
  if anggotaPremium then
    totalAkhir := totalAkhir * 0.95; // Diskon tambahan 5% jika premium

  writeln('Total akhir: Rp', totalAkhir:3:0); // Menampilkan total akhir yang harus dibayar
end.

