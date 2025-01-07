<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>牛油果价格数据可视化</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            cursor: none;
        }
        header {
            background: #4CAF50;
            padding: 20px;
            color: white;
            text-align: center;
        }
        #main {
            width: 100%;
            height: 300px;
            background: url('avocado.jpg') no-repeat center center;
            background-size: cover;
            position: relative;
            text-align: center;
            color: white;
        }
        #main h1 {
            font-size: 50px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .container {
            padding: 20px;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }
        .panel {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .panel h3 {
            color: #333;
        }
        .panel a {
            color: #4CAF50;
            text-decoration: none;
            font-size: 18px;
            display: block;
            margin-top: 10px;
        }
        .panel a:hover {
            text-decoration: underline;
        }

        /* Custom cursor */
        .custom-cursor {
            position: absolute;
            pointer-events: none;
            width: 50px;  /* Set size of the cursor image */
            height: 50px;
            background-image: url('cursor.jpg');  /* Replace with your cursor image */
            background-size: cover;
            transition: transform 0.1s ease-in-out;
        }
    </style>
</head>

<body>

<header>
    <h1>牛油果销售记录数据可视化</h1>
</header>

<div id="main">
    <h1>美味的牛油果（Avocado）</h1>
    <!-- 新增的综述部分 -->
    <p id="overview">
        这是一个关于牛油果销售记录的可视化展示，展示了不同地区、不同类型的牛油果价格走势及销量分布等数据。
    </p>
</div>

<style>
    #overview {
        font-size: 18px;
        font-weight: 400;
        color: #ffffff;
        margin-top: 0px;  /* 增加与标题的距离 */
        padding: 10px;
        background-color: rgba(0, 0, 0, 0.6);  /* 半透明黑色背景 */
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);  /* 阴影效果 */
        max-width: 80%;  /* 限制宽度 */
        margin-left: auto;
        margin-right: auto;
        text-align: center;
    }
</style>


<div class="container">
    <div class="panel">
        <h3>柱状图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_01.html" target="_blank"><i class="fas fa-chart-bar"></i> 牛油果价格按类型分布图</a>
        <a href="http://localhost:8888/maven_01_zym/avocado_14.html" target="_blank"><i class="fas fa-chart-bar"></i> 品种按月销量堆叠柱状图</a>
        <a href="http://localhost:8888/maven_01_zym/avocado_18.html" target="_blank"><i class="fas fa-chart-bar"></i> 各州销量动态排序柱状图</a>
    </div>

    <div class="panel">
        <h3>折线图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_02.html" target="_blank"><i class="fas fa-chart-line"></i> 牛油果价格频率分布图</a>
        <a href="http://localhost:8888/maven_01_zym/avocado_03.html" target="_blank"><i class="fas fa-chart-line"></i> 牛油果价格总趋势面积折线图</a>
        <a href="http://localhost:8888/maven_01_zym/avocado_04.html" target="_blank"><i class="fas fa-chart-line"></i> 牛油果价格总趋势图（分离）</a>
        <a href="http://localhost:8888/maven_01_zym/avocado_05.html" target="_blank"><i class="fas fa-chart-line"></i> 牛油果平均价格趋势</a>
        <a href="http://localhost:8888/maven_01_zym/avocado_07.html" target="_blank"><i class="fas fa-chart-line"></i> 每月价格变化趋势</a>
        <a href="http://localhost:8888/maven_01_zym/avocado_06.html" target="_blank"><i class="fas fa-chart-line"></i> 每月总销量趋势</a>
    </div>

    <div class="panel">
        <h3>饼图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_09.html" target="_blank"><i class="fas fa-chart-pie"></i> 牛油果季节性价格周期</a>
        <a href="http://localhost:8888/maven_01_zym/avocado_13.html" target="_blank"><i class="fas fa-chart-pie"></i> 牛油果各地区总销量占比</a>
    </div>

    <div class="panel">
        <h3>散点图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_08.html" target="_blank"><i class="fas fa-dot-circle"></i> 牛油果价格波动（月度对比）</a>
    </div>

    <div class="panel">
        <h3>极坐标图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_10.html" target="_blank"><i class="fas fa-compass"></i> 牛油果平均价格（2015-2017）极坐标图</a>
    </div>

    <div class="panel">
        <h3>雷达图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_11.html" target="_blank"><i class="fas fa-radiation"></i> 每月平均销量</a>
    </div>

    <div class="panel">
        <h3>关系图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_12.html" target="_blank"><i class="fas fa-project-diagram"></i> 每月平均销量关系图</a>
    </div>

    <!-- New Heatmap Section -->
    <div class="panel">
        <h3>热力图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_15.html" target="_blank"><i class="fas fa-temperature-high"></i> 品种按月销量热力图</a>
    </div>

    <!-- New Flow Chart Section -->
    <div class="panel">
        <h3>河流图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_16.html" target="_blank"><i class="fas fa-water"></i> 品种按月销量河流图</a>
    </div>
    <!-- New Map Section -->
    <div class="panel">
        <h3>地图</h3>
        <a href="http://localhost:8888/maven_01_zym/avocado_17.html" target="_blank"><i class="fas fa-map"></i> 牛油果销量地图</a>
    </div>
</div>

<!-- Custom Cursor -->
<!-- Custom Cursor -->
<div class="custom-cursor" id="custom-cursor"></div>

<script>
    // JavaScript to make the cursor follow the mouse
    const cursor = document.getElementById("custom-cursor");

    document.addEventListener("mousemove", (e) => {
        cursor.style.left = e.pageX - cursor.offsetWidth / 2 + "px";
        cursor.style.top = e.pageY - cursor.offsetHeight / 2 + "px";
    });
</script>

</body>
</html>
