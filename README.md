# spellchecker-dictionary

Custom spellchecker dictionary for JetBrains IDEs (WebStorm, IntelliJ IDEA, PhpStorm, etc.)

## Mục đích

JetBrains hỗ trợ kiểm tra chính tả tiếng Anh theo mặc định, nhưng không nhận diện được **tiếng Việt** — các từ có dấu sẽ bị gạch chân đỏ liên tục khi viết comment, string, hay tài liệu trong code.

File `spellchecker-dictionary.xml` này giúp JetBrains bỏ qua các từ tiếng Việt thay vì gạch chân đỏ.

## Cài đặt

1. Tải file `spellchecker-dictionary.xml` về máy
2. Mở JetBrains IDE → **Settings** (`Ctrl + Alt + S`)
3. Vào **Editor** → **Natural Languages** → **Spelling**
4. Trong phần **Custom dictionaries**, nhấn **+** và chọn file vừa tải
5. Nhấn **OK** → áp dụng

## Nội dung từ điển

Danh sách từ đơn tiếng Việt — nguồn tham khảo từ [vietnameselanguage/syllable](https://github.com/vietnameselanguage/syllable) (~7.000+ âm tiết).

## License

MIT
