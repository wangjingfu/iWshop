/**
 * iWshop店铺前端配置项
 * @description Hope You Do Good But Not Evil
 * @copyright   Copyright 2014-2015 <ycchen@iwshop.cn>
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Chenyong Cai <ycchen@iwshop.cn>
 * @package     Wshop
 * @link        http://www.iwshop.cn
 */
var shoproot = location.pathname.substr(0, location.pathname.lastIndexOf('/') + 1);

require.config({
    paths: {
        util: 'class/util',
        Spinner: 'http://cdn.iwshop.org/scripts/spin.min',
        jquery: 'http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min',
        config: 'config',
        Cart: 'class/cart.class',
        Slider: 'class/slider.class',
        Tiping: 'class/tiping.class',
        pdCounter: 'class/pdcounter.class',
        lazyLoad: 'http://cdn.iwshop.org/scripts/jquery.lazyload.min',
        touchSlider: 'http://cdn.iwshop.org/scripts/jquery.touchslider.min',
        mobiscroll: '../lib/mobiscroll/js/mobiscroll.custom-2.17.1.min',
        baiduTemplate: 'http://cdn.iwshop.org/scripts/baiduTemplate'
    },
    shim: {
        'util': {
            exports: 'util'
        },
        'Spinner': {
            exports: 'Spinner',
            deps: ['util']
        },
        'jquery': {
            exports: '$',
            deps: ['config']
        },
        'lazyLoad': {
            deps: ['jquery']
        },
        'Cart': {
            deps: ['jquery']
        },
        'mobiscroll': {
            deps: ['jquery']
        },
        'touchSlider': {
            deps: ['jquery']
        }
    },
    // urlArgs: "bust=1.5.3",
    urlArgs: "bust=" + (new Date()).getMonth().toString() + (new Date()).getDay().toString() + (new Date()).getHours().toString(),
    xhtml: true
});

define([], function () {
    var config = {};
    return config;
});