# DDD: Các bước thiết kế
## Xác định Entity (Thực thể) và các Value Object
- Từ requirements xác định xem đối tượng nào là Entity. Đối tượng nào là Value Object.

## Định nghĩa các UL (Ubiquitous Language)
- Giúp cho PO, Dev và các thành viên khác trong dự án hiểu đúng và hiểu giống nhau về các thành phần trong dự án. Sau nêu ra các định nghĩa cần confirm lại với PO

| Keyword | Description                                                                                                               |
| ------- | ------------------------------------------------------------------------------------------------------------------------- |
| BBS     | A system manages articles                                                                                                 |
| Article | An object has: ID, Title, Content, Thumbnail, CreatedAt                                                                   |
| Account | An object has: ID, Username, Email, Password. People can use email and password of account to login and logout BBS system |

## Thiết kế System design
- Thiết kế các layers, object, method...
- Định nghĩa tên cho các object, method. Các parameters và các mà chúng giao tiếp với nhau.

![alt text](https://github.com/nguyentoanit/tutorial/blob/master/base-knowledge/ddd/userstory4.png "System Design")

> Tạo các folder và file cho dự án để tránh bị conflict giữa các members

Từ những design. Bắt đầu chia task và assign cho mọi người.
