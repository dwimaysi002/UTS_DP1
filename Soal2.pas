//ketik kode jawaban no 2 kamu disini
program HitungTotalBelanjaSayur;
uses crt;

const
  MAX_PELANGGAN = 100; // Batas maksimum jumlah pelanggan

var
  jumlahPembeli, i, j, jumlahJenis, jumlahSayur: integer; // Variabel untuk jumlah pembeli, jenis sayur, dan jumlah sayur
  hargaSayur, totalBelanja: real; // Variabel untuk harga sayur dan total belanja
  totalBelanjaPerPelanggan: array[1..MAX_PELANGGAN] of real; // Array untuk menyimpan total belanja setiap pelanggan

begin
  clrscr;
  write('Masukkan jumlah pelanggan: '); // Meminta input jumlah pelanggan
  readln(jumlahPembeli); // Membaca input jumlah pelanggan
  
  i := 1; // Inisialisasi pelanggan ke-1
  while i <= jumlahPembeli do // Loop untuk memproses setiap pelanggan
  begin
    totalBelanja := 0; // Reset total belanja untuk setiap pelanggan
    writeln;
    writeln('Pelanggan ke-', i, ':');

    write('Masukkan jumlah jenis sayur yang dibeli: '); // Meminta input jumlah jenis sayur
    readln(jumlahJenis); // Membaca input jumlah jenis sayur

    j := 1;
    while j <= jumlahJenis do // Loop untuk setiap jenis sayur
    begin
      write('Masukkan harga sayur ke-', j, ': '); // Meminta input harga sayur
      readln(hargaSayur); // Membaca input harga sayur
      write('Masukkan jumlah sayur yang dibeli: '); // Meminta input jumlah sayur
      readln(jumlahSayur); // Membaca input jumlah sayur

      // Menghitung total belanja untuk setiap jenis sayur
      totalBelanja := totalBelanja + (hargaSayur * jumlahSayur);

      j := j + 1; // Naikkan ke jenis sayur berikutnya
    end;

    totalBelanjaPerPelanggan[i] := totalBelanja; // Simpan total belanja pelanggan ke dalam array
    i := i + 1; // Naikkan ke pelanggan berikutnya
  end;

  // Menampilkan total belanja untuk setiap pelanggan setelah semua diproses
  writeln;
  for i := 1 to jumlahPembeli do
  begin
    writeln('Total belanja untuk pelanggan ke-', i, ': Rp ', totalBelanjaPerPelanggan[i]:0:2);
  end;
end.
