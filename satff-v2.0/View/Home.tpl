<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>员工管理系统</title>
    <!--<link href="./css/bootstrap.css" rel="stylesheet">-->
    <link href="./layui/css/layui.css" rel="stylesheet">
    <script type="application/javascript" src="./layui/layui.js"></script>
</head>
<body>
<div class="layui-card" style="max-width: 1024px;min-width: 800px; height: auto; margin: 0 auto;text-align: center">
    <div class="layui-card-header">员工管理系统</div>
    <div class="layui-card-body">
        <form action=" " method="post">
            <table class="layui-table" lay-size="lg">
                <tr>
                    <td>ID</td>
                    <td>姓名</td>
                    <td>性别</td>
                    <td>年龄</td>
                    <td>学历</td>
                    <td>户籍</td>
                    <td>薪水</td>
                    <td>奖金</td>
                    <td>操作</td>
                </tr>
                <?php
                foreach ($data as $k=>$v):
                ?>
                <tr>
                    <td><?php echo $v["id"] ?></td>
                    <td><?php echo $v["name"] ?></td>
                    <td><?php echo $v["sex"] ?></td>
                    <td><?php echo $v["age"] ?></td>
                    <td><?php echo $v["edu"] ?></td>
                    <td><?php echo $v["city"] ?></td>
                    <td><?php echo $v["salary"] ?></td>
                    <td><?php echo $v["bonus"] ?></td>
                    <td>
                        <a href="?o=Staff&a=UpdateHandle&id=<?php echo $v['id'] ?>">修改</a>&nbsp;
                        <a href="?o=Staff&a=Delete&id=<?php echo $v['id'] ?>">删除</a>&nbsp;
                        <a href="?o=Staff&a=AdStaff">添加</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </table>
        </form>
    </div>
</div>
</body>
<script>

</script>
</html>

