# Kitoblar Ma'lumotlar Bazasi

Ushbu loyiha kitoblar, mualliflar va janrlar haqidagi ma'lumotlarni saqlash va boshqarish uchun SQLite ma'lumotlar bazasidan foydalanadi.

## Jadval tuzilmalari

### `muallif` jadvali

Mualliflar haqidagi ma'lumotlarni saqlaydi.

| Ustun nomi | Tipi     | Tavsif                  |
|------------|----------|-------------------------|
| id         | INTEGER  | Avtomatik ID (PRIMARY)  |
| ism        | TEXT     | Muallifning ismi        |
| familiya   | TEXT     | Muallifning familiyasi  |
| tug_yil    | INTEGER  | Tug'ilgan yili          |

---

### `janrlar` jadvali

Kitob janrlari haqidagi ma'lumotlarni saqlaydi.

| Ustun nomi | Tipi     | Tavsif                   |
|------------|----------|--------------------------|
| id         | INTEGER  | Avtomatik ID (PRIMARY)   |
| janr_nomi  | TEXT     | Janr nomi                |
| tavsif     | TEXT     | Janr tavsifi             |

---

### `kitoblar` jadvali

Kitoblar haqidagi asosiy ma'lumotlarni saqlaydi.

| Ustun nomi   | Tipi     | Tavsif                          |
|--------------|----------|---------------------------------|
| id           | INTEGER  | Avtomatik ID (PRIMARY)          |
| nomi         | TEXT     | Kitob nomi                      |
| muallif_id   | INTEGER  | Muallifga bog'langan ID (FOREIGN KEY) |
| janr_id      | INTEGER  | Janrga bog'langan ID (FOREIGN KEY)    |
| nashr_yili   | INTEGER  | Kitob nashr etilgan yil          |

> **Eslatma:** `muallif_id` va `janr_id` ustunlari `ON DELETE CASCADE` bilan bog‘langan.

---

## Boshlang'ich ma'lumotlar

### Mualliflar:

- Alisher Navoiy (1441)
- Abdulla Qodiriy (1894)
- Oybek Malikov (1905)
- Gofur Gulom (1903)
- Hamsa Hakimzoda (1889)

### Janrlar:

- Sheriat – Paetik asarlar
- Roman – Uzun badiiy asar
- Hikoya – Qisqa badiiy asar
- Dramma – Sahna asari
- Dostonlar – Epik asarlar

### Kitoblar:

| Nomi              | Muallif            | Janr        | Nashr yili |
|-------------------|--------------------|-------------|------------|
| Xamsa             | Oybek Malikov      | Roman       | 1485       |
| Otkan kunlar      | Alisher Navoiy     | Dostonlar   | 1925       |
| Quyosh qaytmaydi  | Hamsa Hakimzoda    | Sheriat     | 1958       |
| Shum bola         | Gofur Gulom        | Hikoya      | 1940       |
| Yodgor            | Abdulla Qodiriy    | Dramma      | 1914       |

---

## Foydalanish

Bu SQL kodlar SQLite yoki boshqa SQL-mos keluvchi tizimga import qilinib, kitoblar kutubxonasi yoki badiiy adabiyotlar bazasini boshqarish uchun ishlatilishi mumkin.


