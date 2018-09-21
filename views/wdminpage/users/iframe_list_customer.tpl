{include file='../__header_v2.tpl'}
{assign var="script_name" value="user_list_controller"}
<style type="text/css">
    td {
        padding: 0px 6px !important;
    }
</style>
<div class="pd15" ng-controller="userListController" ng-app="ngApp">

    <input type="hidden" id="groudId" value="{$gid}"/>

    {include file='../modal/user/modal_modify_user.html'}
    <!-- 用户导出的modal -->
    {include file='../modal/user/modal_export_users.html'}
    {include file='../modal/orders/modal_order_view.html'}

    {literal}

    <div class="pheader clearfix">
        <div class="pull-left">
            <div id="SummaryBoard" style="width:350px">
                <div class="row">
                    <div class="col-xs-9">
                        <div class="input-group">
                            <div class="input-group-btn">
                                <button type="button" style="line-height: 20px;" class="btn btn-default dropdown-toggle"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span
                                            id="search-type-label">电话</span><span class="caret"
                                                                                  style="margin-left: 5px;"></span>
                                </button>
                                <ul class="dropdown-menu small" id="search-type">
                                    <li><a href="#" data-type="0">电话</a></li>
                                    <li><a href="#" data-type="1">姓名</a></li>
                                </ul>
                            </div>
                            <input type="text" style="height: 32px;border-left: none;" class="form-control search-field"
                                   placeholder="请输入搜索内容" aria-describedby="sizing-addon3" id="search-key"/>
                            <div class="input-group-btn">
                                <button type="button" id="search-button" class="btn btn-default"><span
                                            class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pull-right">
            <div class="button-set">
                <button type="button" class="btn btn-success" data-toggle="modal"
                        data-target="#modal_export_orders">
                    <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span>导出
                </button>
                <!--<button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal_modify_user">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加用户
                </button>-->
                <button type="button" class="btn btn-gray" id="list-reload" onclick="location.reload()">刷新</button>
            </div>
        </div>
    </div>

    <table class="table table-hover table-bordered" style="margin-bottom: 50px;">
        <thead>
        <tr>
            <th width="50px">编号</th>
            <th width="60px" class="text-center">头像</th>
            <th width="150px">姓名</th>
            <th width="150px">省市</th>
            <th>电话</th>
            <th class="text-center" width="50px">性别</th>
            <th>积分</th>
            <th>余额</th>
            <th>分组</th>
            <th>注册日期</th>
            <th width="65px" class="text-center">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="usr in userlist" class="usrlist">
            <td ng-bind="::usr.client_id"></td>
            <td style="width: 53px;" class="text-center"><img class="ccl-head" ng-src="{{usr.client_head}}"/></td>
            <td ng-bind="::usr.client_name"></td>
            <td>{{usr.client_province}}{{usr.client_city}}</td>
            <td ng-class="{'text-muted': usr.client_phone == '未录入'}" ng-bind="::usr.client_phone"></td>
            <td class="text-center">{{sexStr[usr.client_sex]}}</td>
            <td ng-bind="usr.client_credit"></td>
            <td class="text-danger" ng-bind="'&yen;' + usr.client_money"></td>
            <td>{{userLevelStr[usr.client_level]}}</td>
            <td>{{usr.client_joindate}}</td>
            <td>
                <a class="text-success" data-toggle="modal" data-target="#modal_modify_user" data-id="{{usr.client_id}}"
                   href="#">编辑</a>
                <a class="text-danger" data-id="{{usr.client_id}}" ng-click="deleteUser($event)" href="#">删除</a>
            </td>
        </tr>
        </tbody>
    </table>
</div>

{/literal}

</div>

<script type="text/javascript" src="{$docroot}static/script/Wdmin/user/{$script_name}.js"></script>

<div class="navbar-fixed-bottom bottombar">
    <div id="pager-bottom">
        <ul class="pagination-sm pagination"></ul>
    </div>
</div>

{include file='../__footer_v2.tpl'}
