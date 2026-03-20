# spellchecker-dictionary

Custom spellchecker dictionary for JetBrains IDEs (WebStorm, IntelliJ IDEA, PhpStorm, etc.)

## Mục đích

JetBrains hỗ trợ kiểm tra chính tả tiếng Anh theo mặc định, nhưng không nhận diện được **tiếng Việt** — các từ có dấu sẽ bị gạch chân đỏ liên tục khi viết comment, string, hay tài liệu trong code.

File `spellchecker-dictionary.xml` này giúp JetBrains bỏ qua các từ tiếng Việt thay vì gạch chân đỏ.

## Cài đặt

### ⚡ Tự động (khuyến nghị)

Mở **PowerShell** và chạy lệnh sau:

```powershell
irm https://raw.githubusercontent.com/7zism3/spellchecker-dictionary/main/install.ps1 | iex
```

Script sẽ tự động:
- Tải file `spellchecker-dictionary.xml` từ repo
- Copy vào thư mục `options` của **tất cả** JetBrains IDE đang có trên máy
- Khởi động lại IDE để áp dụng

### 🔧 Thủ công (copy file)

1. Tải file `spellchecker-dictionary.xml` về máy
2. Copy vào thư mục tương ứng với IDE bạn dùng:

```
C:\Users\<tên>\AppData\Roaming\JetBrains\IntelliJIdea2025.3\options\
C:\Users\<tên>\AppData\Roaming\JetBrains\WebStorm2025.3\options\
C:\Users\<tên>\AppData\Roaming\JetBrains\PyCharm2025.3\options\
...
```

3. Khởi động lại IDE

### 🖱️ Thủ công (qua UI)

1. Tải file `vi_VN.dic` về máy
2. Mở JetBrains IDE → **Settings** (`Ctrl + Alt + S`)
3. Vào **Editor** → **Natural Languages** → **Spelling**
4. Trong phần **Custom dictionaries**, nhấn **+** và chọn file `vi_VN.dic` vừa tải
5. Nhấn **OK** → áp dụng ngay, không cần khởi động lại

## Nội dung từ điển

Danh sách từ đơn tiếng Việt — nguồn tham khảo từ [vietnameselanguage/syllable](https://github.com/vietnameselanguage/syllable) (~7.000+ âm tiết).

## License

MIT
