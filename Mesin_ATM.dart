import 'dart:io';

void main(List<String> args) {
  while (true) {
    int saldo = 2000000;
    print('=======================');
    print('Bank Serba Tidak Ada');
    print('=======================');

    stdout.write('Input Pin :');
    var pin = stdin.readLineSync();

    if (pin == '12345') {
      while (true) {
        print('=======================');
        print('Bank Serba Tidak Ada');
        print('=======================');
        print('1.Cek Saldo');
        print('2.Setor Saldo');
        print('3.Tarik Saldo');
        print('4.Keluar');

        stdout.write('Pilih pilihanmu (1/2/3/4) :');
        var pilih = stdin.readLineSync();

        if (pilih == '4') {
          print('Anda Berhasil Keluar dari Aplikasi');
          exit(0);
        }

        if (pilih == '1') {
          print('=======================');
          print('Saldo Saat ini : Rp.$saldo');
          print('=======================');
        }

        if (pilih == '2') {
          stdout.write('Jumlah yang disetor : Rp.');
          int saldo2 = int.parse(stdin.readLineSync()!);
          saldo = saldo + saldo2;
        }

        if (pilih == '3') {
          stdout.write('Jumlah yang ditarik : Rp.');
          int tunai = int.parse(stdin.readLineSync()!);
          if (tunai < 50000) {
            print('Minimal Penarikan 50.000');
          } else {
            print('Pilih Pecahan :');
            print('1.Pecahan 50.000');
            print('2.Pecahan 100.000');
            print('=======================');

            stdout.write('Pilih Pecahan (1/2) : ');
            String pecah = stdin.readLineSync()!;

            if (pecah == '1') {
              int pecah50 = (tunai / 50000).toInt();
              int sisa50 = tunai % (50000 * pecah50);
              saldo = saldo - tunai;

              print('Rp.50.000 x $pecah50');
              print('Sisa : Rp.$sisa50');
            }

            if (pecah == '2') {
              int sisaa = tunai % 100000;
              int pecah100 = (tunai / 100000).toInt();
              int sisa100 = (sisaa / 50000).toInt();
              int sisaaa = tunai - ((pecah100 * 100000) + (sisa100 * 50000));
              saldo = saldo - tunai;

              print('Rp.100.000 x $pecah100');
              print('RP.50.000 x $sisa100');
              print('Sisa : Rp.$sisaaa');
            }
          }
        }
      }
    } else {
      print('Maaf Pin Anda Salah Silakan Ulangi Lagi');
    }
  }
}