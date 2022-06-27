<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
  <meta charset="UTF-8">
  <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>商家列表页</title>
  <link rel="stylesheet" href="../../layui/css/layui.css">
  <script src="../../xznstatic/js/jquery-3.3.1.min.js"></script>
	<script src="../../xznstatic/js/SuperSlide.2.1.3.js"></script>
	<script src="../../xznstatic/js/plugin.js"></script>
	<script src="../../xznstatic/js/banner.js"></script>
	<script src="../../xznstatic/js/index.js"></script>
	<script src="../../xznstatic/js/more.js"></script>
	<link rel="stylesheet" href="../../xznstatic/css/style.css">
</head>

<body>
  <div id="app">

    <div class="lamu">
			<div class="box">
				<dl>
					<dt><img src="../../xznstatic/img/home.png" alt=""></dt>
					<dd>
						<i>&gt;</i>
						<a href="#">网站首页</a>
						<i>&gt;</i>
						<a href="#">商家展示</a>
					</dd>
				</dl>
			</div>
		</div>

    <fieldset class="search-container" style="text-align: center;margin: 50px 0;">
      <form class="layui-form" style="margin: 10px 0;">
        <div class="layui-inline">
          <label class="layui-form-label">商家号</label>
          <div class="layui-input-inline">
            <input type="text" name="shangjiahao" id="shangjiahao" placeholder="商家号" autocomplete="off" class="layui-input">
          </div>
        </div>   
        <div class="layui-inline">
          <label class="layui-form-label">商家名</label>
          <div class="layui-input-inline">
            <input type="text" name="shangjiaming" id="shangjiaming" placeholder="商家名" autocomplete="off" class="layui-input">
          </div>
        </div>   
        <div class="layui-inline" style="margin-left: 30px;">
          <button id="btn-search" type="button" class="layui-btn layui-btn-normal">
            搜索
          </button>
          <button v-if="isAuth('shangjia','新增')" @click="jump('../shangjia/add.jsp')" type="button" class="layui-btn btn-theme">
            <i class="layui-icon">&#xe654;</i> 添加
          </button>
        </div>
      </form>
    </fieldset>

    <div class="casepage">
      <div class="box">
        <ul class="clearfix">
          <li v-for="(item,index) in dataList" v-bind:key="index">
            <a :href="'../shangjia/detail.jsp?id='+item.id">
              <figure>
              </figure>
              <div class="div1">
                <b></b>
                <span v-if="item.price">{{item.price}} RMB</span>
                <span>查看详情</span>
              </div>
            </a>
          </li>
        </ul>
        <div class="fenye">
          <div class="pages">
            <div class="pager" id="pager"></div>
          </div>
        </div>
      </div>
    </div>

    <div class="copyright">
      <div class="box clearfix">
        <p style="text-align: center;" v-text="projectName"></p>
      </div>
    </div>
  </div>

  <script src="../../layui/layui.js"></script>
  <script src="../../js/vue.js"></script>
  <script src="../../js/config.js"></script>
  <script src="../../modules/config.js"></script>
  <script src="../../js/utils.js"></script>

  <script>
    var vue = new Vue({
      el: '#app',
      data: {
        projectName: projectName,
        swiperList: [{
          img: '../../img/banner.jpg'
        }],
        dataList: [],
      },
      methods: {
        isAuth(tablename, button) {
          return isFrontAuth(tablename, button)
        },
        jump(url) {
          jump(url)
        }
      }
    });

    layui.use(['layer', 'element', 'carousel', 'laypage', 'http', 'jquery'], function() {
      var layer = layui.layer;
      var element = layui.element;
      var carousel = layui.carousel;
      var laypage = layui.laypage;
      var http = layui.http;
      var jquery = layui.jquery;
      // 分页列表
      pageList();

      // 搜索按钮
      jquery('#btn-search').click(function(e) {
        pageList();
      });

      function pageList() {
        var param = {
          page: 1,
          limit: 6
        };
        if (jquery('#shangjiahao').val()) {
          param['shangjiahao'] = jquery('#shangjiahao').val() ? '%' + jquery('#shangjiahao').val() + '%' : '';
        }  
        if (jquery('#shangjiaming').val()) {
          param['shangjiaming'] = jquery('#shangjiaming').val() ? '%' + jquery('#shangjiaming').val() + '%' : '';
        }  
        // 获取列表数据
        http.request('shangjia/list', 'get', param, function(res) {
          vue.dataList = res.data.list
          // 分页
          laypage.render({
            elem: 'pager',
            count: res.data.total,
            limit: 6,
            jump: function(obj, first) {
              param.page = obj.curr;
              //首次不执行
              if (!first) {
                http.request('shangjia/list', 'get', param, function(res) {
                  vue.dataList = res.data.list;
                })
              }
            }
          });
        })
      }
    });
  </script>
</body>

</html>