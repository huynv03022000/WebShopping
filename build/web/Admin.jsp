<!DOCTYPE html>

<head xmlns="http://www.w3.org/1999/html">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Wave</title>

    <script src="//cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenLite.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/easing/EasePack.min.js"></script>
    <link href="css/cmcontrol.css" media="screen" rel="stylesheet" />
    <style>
        * {
            outline: 0;
            margin: 0;
            padding: 0;
        }
        
        html,
        body,
        canvas {
            width: 100%;
            height: 100%;
            overflow: hidden;
            background-color: #fff;
            cursor: ns-resize;
        }
        
        .sidebar {
            position: absolute;
            left: 20px;
            top: 20px;
            width: 200px;
            background-color: rgba(0, 0, 0, 0.8);
            overflow: auto;
            padding: 12px 15px;
            border-radius: 6px;
            overflow: hidden;
        }
        
        .sidebar .detail {
            clear: both;
        }
        
        .title-bar {
            position: relative;
            width: 200px;
            cursor: move;
        }
        
        .title {
            position: relative;
            font-family: 'Helvetica', sans-serif;
            font-size: 12px;
            font-weight: 400;
            color: #fff;
            margin: 2px 0 1px 0;
        }
        
        .title-s {
            position: relative;
            font-family: 'Helvetica', sans-serif;
            font-size: 8px;
            font-weight: 400;
            color: rgba(255, 255, 255, 0.5);
        }
        
        .my-over {
            background-color: #555;
            color: #aaa;
            cursor: pointer;
        }
        
        .my-over:hover {
            background-color: #fb2600;
            color: #fff;
        }
        
        .my-bt {
            background-color: #444;
            padding: 5px 0;
            width: 80px;
            text-align: center;
            font-family: 'Helvetica', sans-serif;
            font-size: 9px;
            font-weight: 400;
            position: relative;
            border-radius: 2px;
            display: inline-block;
            margin: 0 10px 0 0;
        }
        
        .label {
            height: 15px;
            position: relative;
            font-family: 'Helvetica', sans-serif;
            font-size: 10px;
            font-weight: 400;
            color: rgba(255, 255, 255, 0.6);
            padding: 16px 0 0 0;
        }
        
        .link {
            cursor: pointer;
            height: 15px;
            position: relative;
            font-family: 'Helvetica', sans-serif;
            font-size: 10px;
            font-weight: 400;
            padding: 16px 0 0 0;
        }
        
        .link>a {
            color: rgba(255, 255, 255, 0.4);
            text-decoration: none;
        }
        
        .link>a:hover {
            color: #fb2600;
        }
        
        .slide {
            background-color: #222;
            width: 200px;
            height: 6px;
            position: relative;
            margin: 2px 0 7px 0;
        }
        
        .slide .handle {
            width: 16px;
            height: 10px;
            position: absolute;
            left: 0;
            top: -2px;
            cursor: col-resize;
            border-radius: 2px;
        }
        
        .label-gap {
            padding-bottom: 10px;
        }
        
        .label-s {
            position: relative;
            clear: both;
        }
        
        .label-s-txt {
            width: 45px;
            position: relative;
            float: left;
            font-family: 'Helvetica', sans-serif;
            font-size: 9px;
            font-weight: 400;
            color: #555;
            height: 100%;
            margin-top: 2px;
        }
        
        .label-s-num {
            width: 45px;
            position: relative;
            font-family: 'Helvetica', sans-serif;
            font-size: 10px;
            font-weight: 400;
            margin-bottom: 6px;
            color: #888;
        }
        
        .name-input {
            width: 100px;
            height: 18px;
            font-family: 'Helvetica', sans-serif;
            font-size: 10px;
            font-weight: 400;
            color: #777;
            position: relative;
            display: block;
            float: left;
            margin: -4px 0 10px 0;
            padding: 0 0 0 5px;
            border: 1px #454545 solid;
            background: #1c1c1c;
        }
        
        .check {
            display: inline-block;
            position: relative;
        }
        
        .check .check-box {
            display: inline-block;
            margin-right: 4px;
            vertical-align: middle;
        }
        
        .check .check-text {
            font-family: 'Helvetica', sans-serif;
            font-size: 10px;
            font-weight: 400;
            color: rgba(255, 255, 255, 0.4);
            display: inline-block;
            vertical-align: middle;
            margin: 0 12px 0 0;
        }
        
        .check-title-s {
            margin-top: 1px;
        }
        
        .sidebar {
            display: none;
        }
        
        .demo {
            margin-top: 100px;
            width: 100%;
            text-align: center;
            display: flex;
        }
        
        .header {
            width: 100%;
        }
        
        .header-left {
            width: 50%;
            position: relative;
            border-right: 1px solid black;
        }
        
        .header-right {
            width: 50%;
            position: relative;
        }
        
        a {
            font-size: 50px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            text-decoration: none;
        }
    </style>

</head>

<body>
    <div class="header">
        <div class="demo">
            <div class="header-left">
                <a href="order">Order</a>
            </div>
            <div class="header-right">
                <a href="addProduct">Product</a>
            </div>
        </div>
    </div>
    <canvas></canvas>

    <script type="text/javascript" src="/JS/libs/signals.min.js"></script>
    <script type="text/javascript" src="/JS/libs/CMControl.min.js"></script>
    <script type="text/javascript" src="/JS/ware.js"></script>
    <script src="JS/ware.js" type="text/javascript"></script>
    <script src="JS/libs/CMControl.min.js" type="text/javascript"></script>
    <script src="JS/libs/signals.min.js" type="text/javascript"></script>
    <script>
        window.onload = Wave.init;
    </script>
</body>

</html>