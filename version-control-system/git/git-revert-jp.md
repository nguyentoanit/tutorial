# Git Manual Rollback
## 概要
Gitにてコマンドラインでソースコードをロールバックする手順を記載するものです。既存コミットを削除しないで、ロールバックを実行することです。

## 前提条件
Gitをインストールしてください。（[ダウンロード](https://git-scm.com/downloads)）

## Gitにてソースコードをロールバックする手順
ソースコードのロールバックを実行する前に、リポジトリからの最新ソースコードを収得して、ロールバックブランチへ切り替える。最新ソースコードを収得するように`git pull`文を、ターミナルにブランチを切り替えるように`git checkout`文を使用する。ロールバックを正常に保障するので、ロールバックブランチにて新しいブランチを作成することになる。
例：`git checkout -b rollback-1 master`
新しいブランチ：**rollback-1**、ロールバックブランチ：**master**。
**master**ブランチから**rollback-1**ブランチを作成するということです。

リポジトリからの最新コードを収得してから、過去コミットを再確認するので`git log`文を使用することになる。コミットリスト中に移動できるように「↓↑」キーボードを、抜け出すように「q」のキーボードを、利用することになる。

必要なコミットのコードをロールバックするので、git revert文で以下のように使用するのとになる。
```
git revert <commit-id>
```

例：3f16d893407abb67485e143ed1f20378e57c0894というコミットIDをロールバックする場合、以下の文を実行してください。
```
git revert 3f16d893407abb67485e143ed1f20378e57c0894
```

git revert文利用場合：２つケースが有効になっている。

### ケース１：
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
