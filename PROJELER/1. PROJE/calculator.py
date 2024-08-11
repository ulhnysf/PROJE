def toplama(a, b):
    return a + b

def cikarma(a, b):
    return a - b

def carpma(a, b):
    return a * b

def bolme(a, b):
    if b == 0:
        raise ValueError("Bir sayıyı sıfıra bölemezsiniz.")
    return a / b

def menu():
    print("Hesap Makinesi")
    print("1. Toplama")
    print("2. Çıkarma")
    print("3. Çarpma")
    print("4. Bölme")
    print("5. Çıkış")

def format_sonuc(sonuc):
    return f"{sonuc:.2f}"

def main():
    while True:
        menu()
        secim = input("Yapmak istediğiniz işlemi seçin (1/2/3/4/5): ")
        
        if secim == '5':
            print("Programdan çıkılıyor...")
            break
        
        if secim in ['1', '2', '3', '4']:
            try:
                a = float(input("Birinci sayıyı girin: "))
                b = float(input("İkinci sayıyı girin: "))

                if secim == '1':
                    sonuc = toplama(a, b)
                elif secim == '2':
                    sonuc = cikarma(a, b)
                elif secim == '3':
                    sonuc = carpma(a, b)
                elif secim == '4':
                    sonuc = bolme(a, b)
                
                print(f"Sonuç: {format_sonuc(sonuc)}")
            except ValueError as e:
                print(f"Hata: {e}")
            except Exception as e:
                print(f"Bilinmeyen bir hata oluştu: {e}")
        else:
            print("Geçersiz seçim, lütfen tekrar deneyin.")

if __name__ == "__main__":
    main()
