# DDD quickly summary
## Ngôn ngữ Chung
Một nguyên tắc cốt lõi của thiết kế hướng lĩnh vực là sử dụng ngôn ngữ dựa trên mô hình, Vì mô hình là xuất phát điểm chung, là nơi ở đó phần mềm "gặp" domain, việc sử dụng nó là nền tảng cho ngôn ngữ là hợp lý.

UML là công cụ tuyệt vờ để viết ra những khái niệm chính như lớp cũng như mô tả quan hệ giữa chúng. Bạn có thể vẽ phác họa bốn hay năm lớp viết ra tên chúng, chỉ ra quan hệ giữa chúng. UML rất dễ dùng để mô tả những gì bạn nghĩ, một ý tưởng bằng hình rất dễ hiểu. Một người chia sẻ tức thì tầm nhìn chung về một chủ đề nào đó, và việc trao đổi trở nên đơn giản hơn nếu dựa trên UML. Khi ý tưởng mới xuất hiện, giản đồ được cập nhật theo những thay đổi có tính khái niệm.

> Giản đồ UML rất hữu dụng khi số các phần tử ít. Nhưng UML phình như nấm sau mưa. Bạn sẽ làm gì nếu có hàng trăm lớp trong một file dài lê thê? Chuyên gia phần mềm đọc UML như thế rất khó. Họ không hiểu khi UML to hay ngay cả với dự án cỡ trung bình.

Chúng ta có thể dùng tài liệu. Một cách giao tiếp khôn ngoan với mô hình là tạo những giản đồ nhỏ chứa những tập nhỏ của mô hình. Những giản đồ này chứa nhiều lớp và quan hệ giữa chúng. Làm vậy ta đã chuyển tại được phần lớn những khái niệm liên quan. Chúng ta cũng thể thêm giải thích chữ vào giản đồ. Văn bản sẽ giải thích hành vi và ràng buộc vốn không thể chuyền tải được bằng giản đồ. Mỗi phần nhỏ giải thích một khía cạnh quan trọng của domain, nó chỉ ra phần cần làm sáng tỏ của domain.

> Hãy thận trọng với những tài liệu dài. Ta vừa tốn thời gian tạo ra chúng và những tài liệu đó trở nên lỗi thời trước khi chúng được hoàn thiện. Tài liệu phải đồng bộ với mô hình. Tài liệu cũ, dùng ngôn ngữ sai, không phản ánh đúng mô hình là không hữu ích. Hãy tránh điều này nếu có thể.

## Thiết kế hướng mô hình
Mục đích của quá trình mô hình hóa là nhằm tạo ra một model tốt. Bước tiếp theo là hiện thực nó trong code.

Lập trình hướng đối tượng là phù hợp để cài đặt model vì chúng cùng có chung mô hình. Lập trình hướng đối tượng cung cấp các class của đối tượng và liên kết giữa các class, các biểu hiện của đối tượng, cùng thông điệp giữa chúng. Ngôn ngữ OOP khiến chúng có khả năng tạo ánh xạ trực tiếp giữa đối tượng model và quan hệ và gắn kế của chúng.

### Các thành phần cơ bản để xây dựng mô hình 
#### Thực thể (Entity)
Dùng để biểu thị sự tồn tại của thực thể liên tục xuyên suốt, dù các thuộc tính có thay đổi

**Ví dụ**: với một hệ thống quản lý nhân sự, đối tượng nhân viên Employee có các thuộc tính như name, age, address, position. 
Theo thời gian thì các thuộc tính này đều có thể thay đổi, được cập nhật, tuy nhiên hệ thống vẫn cần nhận diện 1 nhân viên vẫn là nhân viên đó dù đã cập nhật tuổi, vị trí hay địa chỉ cư trú, hay cả tên cho anh ta trong hoạt động lưu vết cho 1 cá nhân. Vậy Employee cần được xác định là 1 entity.

- Để đảm bảo điều này, các lập trình viên sẽ dùng một ID để xác định cho Entity, ID này là duy nhất, xuyên suốt vòng đời của một đối tượng là Entity.
- Xác định một đối tượng trong mô hình là entity sẽ có các hệ quả quan trọng liên quan đến vòng đời và tương tác của entity đó như: Về cài đặt việc so sánh hai đối tượng entity không được so sánh dựa trên các thuộc tính của nó mà dựa trên ID. Entity có thể thay đổi thuộc tính theo thời gian (mutual) nên không dùng nó để trao đổi thông tin giữa các xử lý; với entity thì cần chú tâm vào cách hàng xử lý nó (behavior) hơn là dữ liệu.
