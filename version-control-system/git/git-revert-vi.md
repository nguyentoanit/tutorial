# Git Manual Rollback
## Tổng quan
Tài liệu này mô tả hướng dẫn rollback source code trên git bằng command line. Việc rollback không xóa commit cũ.

## Yêu cầu
Tải và cài đặt Git ([download](https://git-scm.com/downloads)) trên máy.

## Hướng dẫn Rollback source code trên Git
Trước khi Rollback source code, hãy lấy source code mới nhất từ repository và switch (chuyển) sang nhánh (**branch**) cần rollback. Sử dụng lệnh ```git pull``` để lấy source code mới nhất và git checkout để chuyển nhánh trên **terminal**. Để an toàn hơn cho việc rollback, Tiến hành tạo một nhánh mới (nhánh rollback) từ nhanh cần rollback. Ví dụ ```git checkout -b rollback-1 master```. Nhánh sẽ tạo tên là **rollback-1**. Nhánh **rollback-1** được tạo từ nhánh **master** (nhánh cần rollback)

Sau khi đã lấy được code mới nhất từ repository về, dùng lệnh ```git log``` để xem lại danh sách các commit trong quá khứ. Sử dủng phím lên xuống trên bàn phím để di chuyển danh sách commit và **phím q** để thoát.

Sử dụng lệnh git revert để rollback code về những commit mà mình mong muốn theo cú pháp:
```
git revert <commit-id>
```

Ví dụ bạn muốn Rollback code về commit có commit id là 3f16d893407abb67485e143ed1f20378e57c0894, thì sử dụng lệnh:
```
git revert 3f16d893407abb67485e143ed1f20378e57c0894
```

Sau khi sử dụng lệnh git revert, sẽ có 2 trường hợp có thể xảy ra:

### Trường hợp 1:
Việc revert không gặp lỗi gì. Khi đó một cửa sổ hiện ra yêu cầu bạn nhập message cho commit mới. Commit mới này là commit cho việc rollback source code trên máy tính của bạn.

Sau khi nhập message của commit, lưu và thoát khỏi **editor**. (Ví dụ trên máy tính của tôi để lưu và thoát nhấn tổ hợp phím **ctrl+x**)

Sau khi lưu thành công thông báo sẽ hiện ra.

### Trường hợp 2:
Việc rollback bị lỗi do xung đột giữa code rollback và code hiện tại. Hệ thống sẽ thông báo lỗi: Không thể **revert** do xung đột (**conflict**) source code như trong hình:

Kiểm tra file xem file nào bị conflict bằng lệnh git status

Tiếp đến, mở file bị conflict bằng editor, tìm những đoạn code **<<<<<<< HEAD và >>>>>>>**  Sửa lại các đoạn code bị conflict mà mình mong muốn và lưu lại.

Sau khi đã sửa hết conflict trên các file, mở terminal dùng lệnh ```git add``` thêm các file đã sửa **conflict** vào **stage area**. 

Tiếp theo, sử dụng ```git revert --continue``` để xác nhận việc sửa conflict hoàn thành và tiếp tục việc rollback code. Lúc này một cửa sổ hiện ra, bạn nhập message cho commit mới. Commit mới này là commit cho việc rollback source code trên máy tính của bạn. (Giống như trường hợp 1 đã nhắc đến ở bên trên)

Commit thành công là việc rollback source code đã gần như hoàn thành. Tiếp đến để những rollback source code có hiệu lực trên server, bạn phải push toàn bộ rollback code lên Git repository. Merge nhánh rollback vào nhánh cần rollback, đăng nhập vào server bằng SSH và pull source code mới nhất từ repository

## Tài liệu tham khảo
https://stackoverflow.com/questions/2733873/reverting-a-single-file-to-a-previous-version-in-git/8028854
