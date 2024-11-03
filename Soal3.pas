//ketik kode jawaban noo 3 kamu disini
program PolaX;
uses crt;
var
  n, i, j: integer; // Variabel untuk ukuran pola X dan indeks loop

begin
clrscr; //membersihkan layar
  write('Masukkan ukuran n (harus angka ganjil): '); // Meminta input ukuran pola X
  readln(n); // Membaca input ukuran pola X

  if n mod 2 = 0 then // Cek apakah n adalah angka genap
  begin
    writeln('Error: angka tidak valid, harus angka ganjil'); // Menampilkan pesan error jika angka genap
    exit; // Keluar dari program
  end;

  for i := 1 to n do // Loop untuk baris
  begin
    for j := 1 to n do // Loop untuk kolom
    begin
      if (i = j) or (i + j = n + 1) then
        write('*') // Cetak bintang pada diagonal utama dan sekunder
      else
        write(' '); // Cetak spasi untuk posisi lainnya
    end;
    writeln; // Pindah ke baris berikutnya setelah selesai mencetak satu baris
  end;
end.
