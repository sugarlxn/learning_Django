# learning Django

这个项目是一个学习 Django 的资源，Django 是一个高级的 Python Web 框架，鼓励快速开发和简洁、实用的设计。

## 快速启动

### 使用 Docker 构建镜像并启动容器

1. 构建 Docker 镜像:
    ```bash
    docker build -t lxn1234/my_django:1.0  .
    ```

2. 运行容器:
    ```bash
    ./run_my_django.sh
    ```
3. 进行数据库迁移:
    ```bash
    python manage.py makemigrations
    python manage.py migrate
    ```
4. 创建超级用户:
    ```bash
    python manage.py createsuperuser
    ```

5. 访问应用:
    ```shell
    python manage.py runserver
    ```

    打开浏览器并访问 `http://localhost:8000`