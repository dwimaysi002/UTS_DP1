//ketik kode jawaban no 4 kamu disini
program HitungKembalian;
uses crt;
var
  uangKembali, jumlahPecahan: longint;  // Deklarasi variabel untuk menyimpan jumlah uang kembalian dan jumlah pecahan yang digunakan
  pecahanUang: array[1..11] of longint = (100000, 75000, 50000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100); // Array untuk menyimpan nilai-nilai pecahan uang yang tersedia
  i: integer; // Index untuk mengakses elemen array pecahanUang

begin
clrscr;
  writeln('Masukkan jumlah uang kembalian: '); // Menampilkan pesan ke layar untuk meminta input dari pengguna
  readln(uangKembali); // Membaca input dari pengguna dan menyimpannya ke dalam variabel uangKembali

  jumlahPecahan := 0; // Inisialisasi jumlah pecahan menjadi 0
  i := 1; // Inisialisasi index array menjadi 1

  while (uangKembali > 0) and (i <= 11) do  // Looping selama uang kembalian masih ada dan index masih dalam range array
  begin
    while (uangKembali >= pecahanUang[i]) do  // Looping untuk memberikan pecahan uang terbesar yang masih bisa dikurangkan
    begin
      uangKembali := uangKembali - pecahanUang[i]; // Kurangi uang kembalian dengan nilai pecahan saat ini
      jumlahPecahan := jumlahPecahan + 1; // Tambahkan jumlah pecahan
    end;
    i := i + 1; // Pindah ke pecahan uang berikutnya
  end;

  writeln('Jumlah minimum pecahan uang: ', jumlahPecahan); // Tampilkan hasil perhitungan
end.
