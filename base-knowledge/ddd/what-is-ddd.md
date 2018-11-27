# DDD là gì
Là một cách tiếp cận để phát triển các phần mềm phức tạp. Sự phức tạp ở đây không phải là do công nghệ mà là do nghiệp vụ của phần mềm.

Không thể tạo ra phần mềm tốt nếu không có hiểu biết tốt về nghiệp vụ.

Khi phát triển phần mềm nên tập trung vào domain và hoạt động của nó.

> Domain: Có thể hiểu là nghiệp vụ

Các tốt nhất để làm cho phần mềm hài hoà với domain là làm cho phần mềm *phản chiếu* tới domain.

Chúng ta cần tạo ra một mô hình trừu tượng hoá cho domain.

> Trừu tượng hoá bằng cách xây dựng các mô hình domain.

Khi đã có mô hình, chúng ta bắt đầu thiết kế mã nguồn. Vẽ lên bức tranh chi tiết của mã nguồn.

## Xây dựng kiến thức về domain
Cần trao đổi, đặt những câu hỏi đúng về nội dung và cách thức để có thể lấy được nhiều thông tin từ các domain expert (những chuyên gia về nghiệp vụ).

Từ những thông tin đã khai thác được, qua quá trình tổng hợp, dần dần sẽ xây dựng được một mô hình cho domain.

# Sử dụng ngôn ngữ chung
Giữa lập trình viên và domain expert luôn có những rào cản giao tiếp cơ bản. Lập trình viên chỉ nghĩ tới lớp, method, thuật toán, pattern và có khuynh hướng diễn tả mọi thứ đời thường bằng những thao tác lập trình.
Tuy vậy những chuyên gia domain không thể hiểu được điều này.

Dự án sẽ trở nên nghiêm trọng nếu các thành viên không sử dụng chung ngôn ngữ khi trao đổi về domain.

Nên tạo ra các mô hình để mô tả về những nghiệp vụ dùng trong dự án. Khi đó mọi người sẽ dùng chung một ngôn ngữ và có thể hiểu đúng và nội dung đối phương đang nói một cách tốt hơn.

# References:
- https://github.com/nguyentoanit/ddd-playframework-scala
