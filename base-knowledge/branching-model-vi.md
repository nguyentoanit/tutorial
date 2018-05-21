# Branching and work flow
## Tóm tắt
Tài liệu này sẽ mô tả về quy trình xử lý trên Git và quy trình làm việc.

## Git Branching Model knowleages
### The main branches
Repository sẽ có hai nhánh chính:
- master
- develop

### Supporting branches 
Bên cạnh những nhánh chính đã sử dụng, chúng ta sử dụng song song những kiểu nhanh phụ khác:
- Feature branches
- Release branches
- Hotfix branches
Những nhánh này có những chức năng riêng.

#### Feature branches
Mô tả: Feature branches được sử dụng để phát triển các tính năng mới. 
- Tách ra từ nhánh develop
- Khi hoàn thành việc phát triển merge vào nhánh  **develop**
- Quy tắc đặt tên (Naming convention): Theo tên ticket (TICKET-1,TICKET-2,..)
- Để tạo một Feature branch mới:
    - Pull source code mới nhất từ repository về: ```git pull```
    - Tạo Feature branches từ develop: ```git checkout -b TICKET-1 develop ```

#### Hotfix branches
Mô tả: Nhằm mục đích sửa các lỗi nghiêm trọng, không thể chờ tới lần release tiếp theo.
- Tách ra từ nhánh **master**
- Khi hoàn thành việc phát triển merge vào nhánh  **develop** và  **master**
- Quy tắc đặt tên (Naming convention):  **hotfix-\<Ticket ID\>**
- Để tạo một Hotfix branch mới:
    - Pull source code mới nhất từ repository về: ```git pull```
    - Tạo Feature branches từ develop: ```git checkout -b hotfix-1 master```

## Quy trình làm việc (Workflow)
- Pull source code mới nhất từ repository về: ```git pull ```
- Tạo **feature branch** hoặc **hotfix branch**: ```git checkout -b hotfix-1 master``` hoặc ```git checkout -b TICKET-1 develop ```
- Tiến hành phát triển trên branch đã tạo, sau khi quá trình phát triển hoàn tất:
    - Kiểm tra lại các file đã sửa: ```git status```
    - Thêm các file đã sửa vào staging area: ```git add /path/to/file```
    - Commit các file đã sửa cùng với message của commit: ```git commit -m "Fix bug A,B,C"```
    - Đẩy những thay đổi ở branch đã tạo lên repository: ```git push <repository-name> <branch-name>```
    - Tạo các pull request cần thiết trên Git server (Github, Bitbucket, Backlog,...) và thông báo cho người đảm nhiệm việc merge code
- Người đảm nhiệm merge các pull request đã tạo trên Git server và thông báo lại cho người tạo pull request

- Chạy database migration và kiểm tra những thay đổi trên development server.

## Refs:
- http://nvie.com/posts/a-successful-git-branching-model/