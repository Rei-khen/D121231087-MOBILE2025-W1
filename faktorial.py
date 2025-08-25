def faktorial(n):
    hasil = 1
    for i in range(1, n + 1):
        hasil *= i
    return hasil

try:
    angka = int(input("masukkan angka bil bulat (ninimal 0) : "))
    if angka < 0:
        print("bilangan yang diinput harus lebih besar dari 0!")
    else : 
        print(f"faktorial dari {angka} adalah {faktorial(angka)}")
except:
    print("input tidak valid")
