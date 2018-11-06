# THIẾT KẾ HƯỚNG MÔ HÌNH
Bất kì domain nào cũng có thể được thể hiện bằng nhiều model, và bất kỳ model nào cũng có thể được biểu thị bằng nhiều cách khác nhau trong code. Dù có một model được phân tích đúng đắn cũng không có nghĩa là model ấy sẽ được biểu hiện thẳng vào trong code.

Một trong những kỹ thuật thiết kế được đề nghị là analysis model

> Analysis model là kết quả của quá trình phân tích domain, kết quả trong một model không chứa sự cân nhắc để phần mềm sử dụng cho cài đặt.

Phần mềm không được xét đến trong giai đoạn này vì nó được coi là một yếu tố khó hiểu.

Nếu thiết kế, hoặc một thành phần nào của nó, không được ánh xạ sang mô hình domain thì model đó trở nên ít giá trị, và tính đúng đắn của phần mềm là đáng nghi ngờ.

## Kiến trúc phân lớp
Hãy phân chia một chương trình phức tạp thành các LỚP. Phát triển một thiết kế cho mỗi lớp để chúng trở nên gắn kết và chỉ phụ thuộc vào các tầng bên dưới. 

Giải pháp kiến trúc cho DDD:
- User Interface: Chịu trách nhiệm trình bày thông tin tới người sử dụng và thông dịch lệnh của người dùng
- Application Layer: Đây là một lớp mỏng phối hợp các hoạt động của ứng dụng. Nó không chứa logic nghiệp vụ. Nó không lưu giữ trạng thái của các đối tượng nghiệp vụ nhưng nó có thể giữ trạng thái của một tiến trình của ứng dụng
- Domain Layer: các nghiệp vụ và logic. Nó là các thông tin trao đổi với các hệ thống khác nhau, hoặc diễn tả các đối tượng mà có thể dùng để lưu vào database, hoặc dùng để chuyển tiếp đến lớp infrastructure như repository.
- Infrastructure Layer: Lớp này đóng vai trò như một thư viện hỗ trợ cho tất cả các lớp còn lại.

Điều quan trọng là phải phân chia một ứng dụng ra nhiều lớp riêng biệt, và thiết lập các quy tắc tương tác giữa các lớp với nhau. 

Nếu các đoạn code không được phân chia rõ ràng thành các lớp như trên, thì nó sẽ sớm trở nên vướng víu khiến vô cùng khó khăn cho việc quản lý các thay đổi.

### Thực thể (Entity)
Là nhóm đối tượng có định danh riêng, những định danh này được giữ xuyên xuốt quá trình sử dụng phần mềm.

## Value Object 
Là những đối tượng mà ta không cần quan tâm đến định danh của đối tượng đó, mà chỉ quan tâm đến thuộc tính của đối tượng đó. 

> Ví dụ: Các điểm trên một màn hình. Ta chỉ cần quan tâm đến toạ độ x,y (thuộc tính) của điểm đó mà không cần quan tâm đến định danh của đối tượng đó.

Entity thì có thể thay đổi được còn Value Object thì không. Khi muốn thay đổi giá trị của 1 Value Object thì ta phải tạo một đối tượng mới chứ không phải thay đổi thuộc tính của đối tượng cũ.

Do Value Object không thể thay đổi và không có định danh nên có thể dùng chung.

## Dịch vụ (Service)
Khi thiết lập Ngôn ngữ chung, các khái niệm chính của domain sẽ được thể hiện trong Ngôn ngữ chung này, các *danh từ* sẽ là các *đối tượng*, các *động từ* đi kèm với danh từ đó sẽ thành các *hành vi của đối tượng*. Tuy nhiên có một số hành vi lại có vẻ không thuộc về một đối tượng nhất định nào cả.

Ví dụ như việc chuyển tiền từ một tài khoản này sang một tài khoản khác, chức năng này nên đặt ở tài khoản gửi hay tài khoản nhận? Trong trường hợp này cả hai đều không phù hợp.

Đối với những hành vi như vậy trong domain, cách tốt nhất là khai báo chúng như là một Dịch vụ.

Một Dịch vụ không có trạng thái nội tại và nhiệm vụ của nó đơn giản là cung cấp các chức năng cho domain. 

Chúng có thể bao gồm các chức năng liên quan đến nhau để hỗ trợ cho các Thực thể (Entity) và các Value Object.

Khi nói về một dịch vụ, người ta không quan tâm đến đối tượng thực hiện mà quan tâm tới những đối tượng được xử lý bởi dịch vụ. Một Dịch vụ không nên bao gồm các thao tác vốn thuộc về các đối tượng của domain.

## Module (mô-đun)
Là một phần của chương trình được đặt theo cấu trúc hoặc chức năng. Module được dùng như phương pháp để tổ chức các khái niệm và tác vụ liên quan nhằm giảm độ phức tạp.

Sẽ dễ dàng hơn để hình dung mô hình lớn nếu ta nhìn vào những mô-đun chứa trong mô hình đó, sau đó là quan hệ giữa các mô-đun.

Chúng ta nên nhóm những lớp có mức độ liên quan cao thành một mô-đun để đạt được tính tương liên cao nhất có thể.

## Aggregate (tập hợp) 
Aggregate (tập hợp) là pattern để định nghĩa việc sở hữu đối tượng và phân cách giữa chúng. (tổng hợp các entities và các value objects )

Factory và Repository là hai pattern khác giúp quản lý việc tạo và lưu trữ đối tượng

Một Aggregate là một nhóm các đối tượng, nhóm này có thể được xem như là một đơn vị thống nhất đối với các thay đổi dữ liệu. 

Mỗi Aggregate có một "gốc", đó là một Thực thể và cũng là đối tượng duy nhất có thể truy cập từ phía ngoài của Aggregate. Gốc của Aggregate có thể chứa những tham chiếu đến các đối tượng khác trong Aggregate, và những đối tượng trong này có thể chứa tham chiếu đến nhau, nhưng các đối tượng ở ngoài chỉ có thể tham chiếu đến gốc.

Aggregate root như 1 entrypoint để các đối tượng khác có thể tham chiếu đến. Tất cả các thay đổi của Aggregate sẽ thực hiện thông qua gốc của chúng. Chúng ta có thể quản lý được những thay đổi này, so với khi thiết kế cho phép các đối tượng bên ngoài truy cập trực tiếp đối tượng bên trong. Aggregate bị xóa và loại bỏ khỏi bộ nhớ thì những đối tượng khác trong Aggregate cũng sẽ bị xóa.

> Vẫn có thể tham chiếu tạm thời đến các đối tượng trong aggregate miễn là những tham chiếu này được xoá sau khi hoàn thành thao tác.

> Một trong những cách thực hiện điều này là sao chép các Value Object cho các đối tượng ngoài.


