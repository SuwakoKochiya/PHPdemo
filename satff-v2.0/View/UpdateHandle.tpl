<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>员工添加</title>
    <!--<link href="./css/bootstrap.css" rel="stylesheet">-->
    <!--<link href="../css/bootstrap.css" rel="stylesheet">-->
    <link href="./layui/css/layui.css" rel="stylesheet">
    <script type="application/javascript" src="./layui/layui.js"></script>
</head>
<body>
<div class="layui-card" style="max-width: 1024px;min-width: 800px; height: auto; margin: 0 auto;">
    <div class="layui-card-header" style="text-align: center">员工信息修改</div>
    <div class="layui-card-body">
        <form class="layui-form" action="?o=Staff&a=Update" method="post">
            <input type="hidden" name="id" value="<?php echo $res['id'] ?>">
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="name" required  lay-verify="required" value="<?php echo $res['name'] ?>" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">年龄</label>
                <div class="layui-input-block">
                    <input type="text" name="age" required  lay-verify="required" value="<?php echo $res['age'] ?>" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block">
                    <input type="radio" name="sex" value="男" title="男" <?php echo ($res['sex']=='男')?'checked':' ' ?> />
                    <input type="radio" name="sex" value="女" title="女" <?php echo ($res['sex']=='女')?'checked':' ' ?> />
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">学历</label>
                <div class="layui-input-block">
                    <select name="edu" lay-verify="required">
                        <option value=""></option>
                        <option value="初中"  <?php echo ($res['edu']=='初中')?'selected':' ' ?>>初中</option>
                        <option value="高中" <?php echo ($res['edu']=='高中')?'selected':' ' ?>>高中</option>
                        <option value="大专" <?php echo ($res['edu']=='大专')?'selected':' ' ?>>大专</option>
                        <option value="大本"<?php echo ($res['edu']=='大本')?'selected':' ' ?>>大本</option>
                        <option value="研究生"<?php echo ($res['edu']=='研究生')?'selected':' ' ?>>研究生</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">户籍</label>
                <div class="layui-input-block">
                    <input type="text" name="city" required  lay-verify="required" value="<?php echo $res['city'] ?>" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">薪水</label>
                <div class="layui-input-block">
                    <input type="text" name="salary" required  lay-verify="required" value="<?php echo $res['salary'] ?>" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">奖金</label>
                <div class="layui-input-block">
                    <input type="text" name="bonus" required  lay-verify="required" value="<?php echo $res['bonus'] ?>" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    <button  type="button" class="layui-btn layui-btn-primary"><a href="?a=Home">返回列表</a></button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    layui.use('form', function(){
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功

        //……

        //但是，如果你的HTML是动态生成的，自动渲染就会失效
        //因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
        form.render();
    });
</script>
</body>

