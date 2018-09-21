/**
 * Desc
 * @description Hope You Do Good But Not Evil
 * @copyright   Copyright 2014-2015 <ycchen@iwshop.cn>
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Chenyong Cai <ycchen@iwshop.cn>
 * @package     Wshop
 * @link        http://www.iwshop.cn
 */
requirejs(['config'], function(config) {
    
    require(['jquery', 'util', 'Slider'], function($, util, Slider) {
        
        Slider.slide('#slider');

        util.searchListen();

    });
});