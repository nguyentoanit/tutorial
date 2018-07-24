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

## Tài liệu tham khảo
https://stackoverflow.com/questions/2733873/reverting-a-single-file-to-a-previous-version-in-git/8028854
