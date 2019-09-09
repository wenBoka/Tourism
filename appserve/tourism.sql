SET NAMES UTF8;
DROP DATABASE IF EXISTS tourism;
CREATE DATABASE tourism CHARSET=UTF8;
USE tourism;

# lineid-线路编号
# deta_title-主题
# deta_show-说明
# deta_info-标签说明
# deta_price-价格
# deta_images-多张照片路径
CREATE TABLE tour_details(
    id INT PRIMARY KEY AUTO_INCREMENT,
    lineid INT,
    small_img VARCHAR(50),
    big_img VARCHAR(50),
    deta_title VARCHAR(200),
    deta_show VARCHAR(200),
    deta_info VARCHAR(100),
    deta_price INT,
    deta_images VARCHAR(300)
);
INSERT INTO tour_details VALUES
# 热搜数据
(null,295235,'img/headerimg/tourism1.jpg','img/headerimg/moveimg/movement1.jpg','新疆天池+吐鲁番+喀纳斯+禾木+五彩滩+魔鬼城+赛里木湖+果子沟+独库公路+那拉提+巴音双飞11日跟团游（4钻）','同程专线金秋摄影 南北疆深度游 双人立减1000元 首创疆内硬卧 节省10个小时 特别安排赛湖环湖 葡萄采摘 民族服饰摆拍 单人出游保证拼房','无自费;森林草原;雅丹地貌;世界遗产;摄影之旅;嗨玩沙漠',8217,'img/detailimg/xinjiang1.jpg;img/detailimg/xinjiang2.jpg;img/detailimg/xinjiang3.jpg'),

(null,59661,'img/headerimg/tourism2.jpg','img/headerimg/moveimg/movement1.jpg','中秋钜惠新疆伊犁+天池+吐鲁番+喀纳斯+禾木+五彩滩+魔鬼城+赛湖+那拉提+独库公路+巴音布鲁克双飞10日跟团游','金秋错峰游 双节狂欢 30人精致小团 双成人立减1200 找销售领红包 浪漫伊犁 0自费 1晚五星 网红独库打卡 赛湖环游 烤全羊','无自费;赏花之旅;摄影之旅',6842,'img/detailimg/zqiu1.jpg;img/detailimg/zqiu2.jpg;img/detailimg/zqiu3.jpg'),

(null,150830,'img/headerimg/tourism3.jpg','img/headerimg/moveimg/movement1.jpg','【中秋节】【家庭游】厚道北京双飞5日跟团游','下单可自选任意航班时间 双成人立减800元 两万人出游 满2人送水壶 贴心双导游 天坛太极拳体验 香山赏秋 故宫延禧宫深度3小时 经典景点','无购物;免费接送机;家庭游;推荐儿童年龄：3-12岁',2056,'img/detailimg/zhqui1.jpg;img/detailimg/zhqiu2.jpg;img/detailimg/zhqiu3.jpg'),

(null,144295,'img/headerimg/tourism4.jpg','img/headerimg/moveimg/movement1.jpg','寻梦疆湖+嗨玩新疆+五彩滩+喀纳斯+禾木+乌尔禾魔鬼城+天山天池+吐鲁番双飞8日跟团游（4钻）','双节狂欢 金秋错峰游 行摄喀纳斯 双成人爆减1000 同程VIP专享团 一晚5星 0自费区间全含 赠烤全羊 葡萄采摘 北疆力荐','无自费;免费接送机;摄影之旅;美食之旅',5122,'img/detailimg/xmeng1.jpg;img/detailimg/xmeng2.jpg;img/detailimg/xmeng3.jpg'),

(null,295235,'img/headerimg/tourism5.jpg','img/headerimg/moveimg/movement1.jpg','金秋黄花沟+辉腾锡勒草原+同程牧场+响沙湾+鄂尔多斯双飞5日跟团游（4钻）','国庆预售 双成人减800 总裁同款 0自费 好评破千 赠骑马/骆驼 含沙漠套票 享烤全羊/大漠金驼宴/老字号烧麦/CCTV网红蒙餐','无自费;免费接送机;美食之旅;摄影之旅;森林草原',5024,'img/detailimg/jhua1.jpg;img/detailimg/jhua2.jpg;img/detailimg/jhua3.jpg'),

(null,1045022,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【高端游】三亚+蜈支洲岛+亚特兰蒂斯水族馆或水世界+天堂森林公园+天涯海角+南山+玫瑰谷5日跟团游','双成人立减200 4晚连住品牌温德姆酒店海景房 海鲜霸王餐 每间房赠两张电影票','免费接送机;美食之旅;高端游;森林草原',2225,'img/detailimg/sya1.jpg;img/detailimg/sya2.jpg;img/detailimg/sya3.jpg'),

# 云南数据
(null,1097774,'img/detailimg/yunnan1.jpg','img/headerimg/moveimg/movement1.jpg','【国庆节】昆明+大理+丽江双飞一动6日跟团游（4钻）','嗨玩云南 中秋大放价10号12号双成人立减1000 昆明大石林 吉普车嗨游洱海 玉龙雪山大索登顶 赠印象丽江 丽大特色双古城','免费接送机;行车时间短;雪山之旅;美食之旅;赏花之旅',2183,'img/detailimg/yunnan1.jpg;img/detailimg/yunnan2.jpg;img/detailimg/yunnan3.jpg'),

(null,1058796,'img/detailimg/yunnan4.jpg','img/headerimg/moveimg/movement1.jpg','【中秋节】【家庭游】昆明+大理+丽江+玉龙雪山+南诏风情岛+花海骑行+洱海海景房双飞一动6日跟团游','加量不加价 强势升级 玉龙雪山大索道 蓝月谷 南诏风情岛 洱海骑行 赠彝族祭火大典长街宴 升级一晚洱海海景房 升级一晚温泉酒店 省内一动车','家庭游;世界遗产;雪山之旅;摄影之旅;赏花之旅',2157,'img/detailimg/yunnan4.jpg;img/detailimg/yunnan5.jpg;img/detailimg/yunnan6.jpg'),

(null,1094726,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【家庭游】昆明+大理+丽江+石林+洱海JEEP+玉龙雪山冰川大索道+玉龙雪山高尔夫双飞一动6日跟团游（4钻）','错峰特惠 全网醉优价 JEEP环游洱海 极限挑战雪山4680米 赠印象丽江 红酒晚宴雪山高尔夫球会','家庭游;世界遗产;雪山之旅;森林草原;赏花之旅',2653,'img/detailimg/yunnan7.jpg;img/detailimg/yunnan8.jpg;img/detailimg/yunnan9.jpg'),

(null,1031156,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','丽江+大理环洱海+三股水+户外BBQ+玉龙雪山+泸沽湖猪槽船游湖双飞6日跟团游','同程专线 双成人立减600 8人精品小团 0购物 相约丽江古城 玩转玉龙雪山 网红同款玻璃栈道 挑战铁索桥 浪漫洱海 神秘女儿国','免费接送机;行车时间短;充足自由时间;森林草原;赏花之旅',3262,'img/detailimg/yunnan10.jpg;img/detailimg/yunnan11.jpg;img/detailimg/yunnan12.jpg'),

(null,1046556,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【国庆节】【户外游】昆明+大理+丽江+石林+玉龙雪山+洱海天空之境+吉普车+丽水金沙+印象丽江双飞一动6日跟团游','暑期特惠2成人减1000 花样云南0自费 大石林洱海天空之境旅拍 吉普车嗨游 赠价值500元双表演 冰川大索道登顶 赠150元氧气瓶防寒服','免费接送机;户外游;民俗体验;表演秀;古都行;吉普旅拍',2999,'img/detailimg/yunnan13.jpg;img/detailimg/yunnan14.jpg;img/detailimg/yunnan15.jpg'),

(null,1031257,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','昆明+大理+洱海大游船+丽江+玉龙雪山冰川大索+虎跳峡双飞双动6日跟团游（4钻）','悠游云南2版 纯玩0购物 中秋大促双成人立减600元 赠特色中秋月饼礼盒 极限挑战雪山4680米登顶 赠印象丽江 特色吃住 全程一车一导','无购物;免费接送机;行车时长短;世界遗产;充足自由时间',2927,'img/detailimg/yunnan16.jpg;img/detailimg/yunnan17.jpg;img/detailimg/yunnan18.jpg'),

# 桂林数据
(null,105146,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','桂林+阳朔+船游兴坪漓江+遇龙河漂流+银子岩+訾洲观象鼻山+世外桃源双动3日跟团游','同程专线 双成人立减200 同程专线 画中游 单团不超过30名成人 游银子岩 品阳朔啤酒鱼 2晚住阳朔 1餐50元高餐标亚太酒家','无购物;无自费;美食之旅;摄影之旅;漂流',1149,'img/detailimg/guilin1.jpg;img/detailimg/guilin2.jpg;img/detailimg/guilin3.jpg'),

(null,103246,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【中秋节】【爸妈游】桂林+阳朔+漓江+船游四湖+城徽象鼻山+世外桃源+银子岩+十里画廊双动3日跟团游（4钻）','船游兴坪漓江 桂林四湖美景 蝴蝶泉侗王夜宴 篝火晚会唱山歌 私享庭院听桂剧御园春 合影20元人民币背景 柴火饭特色农家乐','无购物;无自费;免费接送机;爸妈游;行车时长短',999,'img/detailimg/guilin4.jpg;img/detailimg/guilin5.jpg;img/detailimg/guilin6.jpg'),

(null,1048265,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【青春游】桂林+阳朔+漓江兴坪游船+千古情+银子岩+世外桃源+船游四湖+遇龙河双高3日跟团游','错峰出游必看桂林千古情 20元人民币背景 訾洲公园观城徽象鼻山私享下午茶 餐餐高标升级椿记烧鹅 澳门酒家','无购物;无自费;免费接送机;爸妈游;行车时长短',1179,'img/detailimg/guilin7.jpg;img/detailimg/guilin8.jpg;img/detailimg/guilin9.jpg'),

(null,1022779,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','桂林+阳朔+漓江+银子岩+象鼻山+东西巷+西街双动3日跟团游（4钻）','升级方案有各个出发城市差价 全程无购物 观桂林市徽 品特色春记烧鹅 探银子奇洞 24小时接送站 儿童特别赠送含早','无购物;无自费;免费接送机;表演秀;行车时长短',799,'img/detailimg/guilin10.jpg;img/detailimg/guilin11.jpg;img/detailimg/guilin12.jpg'),

(null,51617,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','桂林+阳朔+船游兴坪漓江+靖江王府+遇龙河双人竹筏+世外桃源+银子岩+訾洲观象山双动4日跟团游','同程专线 画中游 全程0购物 阳朔连住2晚 地道桂林味 芋头宴 啤酒鱼 50元高餐标亚太酒家','无购物;美食之旅;免费接送机;避暑胜地;行车时长短',799,'img/detailimg/guilin13.jpg;img/detailimg/guilin14.jpg;img/detailimg/guilin15.jpg'),

(null,51617,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','桂林+阳朔+船游兴坪漓江+靖江王府+遇龙河双人竹筏+世外桃源+银子岩+訾洲观象山双动4日跟团游','观桂林市徽 印象刘三姐 品特色春记烧鹅 探银子奇洞 赏5D奇幻秀山水间 24小时接送站 较高性价比 儿童含早','无购物;美食之旅;免费接送机;避暑胜地;无自费;充足自由时间',799,'img/detailimg/guilin16.jpg;img/detailimg/guilin17.jpg;img/detailimg/guilin18.jpg'),

# 海南
(null,74340,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','下单有礼+三亚纯玩+5钻临海海景+亚龙湾出海体验+蜈支洲+呀诺达+108米南山观音+天涯海角双飞5日跟团游','4成人免升122平180度海景套房 全新升级亚龙湾出海体验 连住一线海边酒店豪华海景房 1分钟步行至海边 加1元换购潜水套票和免税城游','无购物;免费接送机;精品酒店;避暑胜地;无自费;充足自由时间',799,'img/detailimg/hainan1.jpg;img/detailimg/hainan2.jpg;img/detailimg/hainan3.jpg'),

(null,105470,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','下海南三亚海景+三亚西岛+南山+天涯海角+凤凰岭+红色娘子军表演双飞5日跟团游','旅游特惠季 升级2晚三亚网络热捧套房/海景房 特赠大型椰海青春实景影画演出 108米南海观音祈福 牵手天涯海角 寻黎家风情 许一世海誓山盟','无购物;免费接送机;精品酒店;避暑胜地;无自费;充足自由时间',1320,'img/detailimg/hainan4.jpg;img/detailimg/hainan5.jpg;img/detailimg/hainan6.jpg'),

(null,23871,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【亲子游】三亚+三亚湾红树林度假世界双飞5日自由行','赠送亚马逊水上乐园门票 赠送旅拍 亚龙湾免费班车 交通便捷 三亚24小时接送机服务','免费接送机;精品酒店;避暑胜地;无自费;充足自由时间',1847,'img/detailimg/hainan7.png;img/detailimg/hainan8.jpg;img/detailimg/hainan9.jpg'),

(null,45758,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','下单有礼+三亚纯玩+蜈支洲+呀诺达+亚龙湾出海+南山观音+天涯海角双飞5日跟团游','纯玩0购 全程住性价比近海酒店 品质出游 打卡网红精华景点 全新升级亚龙湾出海体验 加1元换购VIP潜水套票和三亚国际免税城 24H接送机','免费接送机;精品酒店;无自费;酒店+别墅',2088,'img/detailimg/hainan10.jpg;img/detailimg/hainan11.jpg;img/detailimg/hainan12.jpg'),

(null,102893,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','三亚纯玩0购+连住网评5钻海湾套房+帆船出海+蜈支洲岛+槟榔谷+呀诺达+天涯海角双飞5日跟团游（5钻）','同程专线 双成人减400 特选导游 53平海湾套房 海岛/龙虾海鲜/雨林/民风/帆船出海/下午茶/航拍/赠玻璃栈道&祈福风铃 打卡网红景点','无购物;行车时长短;美食之地;酒店+别墅;海滨之旅',2092,'img/detailimg/hainan13.jpg;img/detailimg/hainan14.jpg;img/detailimg/hainan15.jpg'),

(null,108948,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','下单有礼+三亚纯玩+网评5钻套房+蜈支洲+呀诺达+亚龙湾沙滩+108米南山观音+天涯海角双飞5日跟团游','纯玩0购 连住4晚60平特色套房酒店 地处市区 交通便利 全新升级亚龙湾出海体验加1元换购VIP潜水套票和三亚国际免税城游 24H专车接机','无购物;免税店;美食之地;酒店+别墅;精品酒店',2548,'img/detailimg/hainan16.jpg;img/detailimg/hainan17.jpg;img/detailimg/hainan18.jpg'),

# 北京
(null,1089001,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【国庆节】【高端游】会玩北京交通自选5日跟团游（5钻）','9月10号前团期错峰甩尾20人小团 漫游行程八点出发 周二四六住三环国贸5L饭店 三顿京味特色餐 赠什刹海茶歇 周四送升旗仪式','免费接送机;高端游;世界遗产;古都行;精品酒店',2921,'img/detailimg/beijing1.jpg;img/detailimg/beijing2.jpg;img/detailimg/beijing3.jpg'),

(null,1080461,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','厚道北京双飞5日跟团游','庆70华诞 双成人立减800元 两万人出游 满2人送水壶 贴心双导游 精华景点 故宫延禧宫深度3小时','免费接送机;无购物;世界遗产;古都行',2299,'img/detailimg/beijing4.jpg;img/detailimg/beijing5.jpg;img/detailimg/beijing6.jpg'),

(null,162996,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','厚道北京双飞6日半自助游','庆70华诞 下单可自选航班 双成人立减800元 两万人出游 满2人送水壶 贴心双导游 天坛太极拳体验 香山赏秋 故宫延禧宫深度3小时','免费接送机;无购物;世界遗产;古都行;精品酒店',2398,'img/detailimg/beijing7.jpg;img/detailimg/beijing8.jpg;img/detailimg/beijing9.jpg'),

(null,61992,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【中秋节】上新了北京双飞4日跟团游','9月8号前错峰出游20人小团 两成人送真空全聚德烤鸭 登中央电视塔 进国家博物馆 赠送升旗仪式 3顿京味特色餐 全程入住快捷连锁酒店','免费接送机;无购物;世界遗产;古都行;精品酒店',2130,'img/detailimg/beijing10.jpg;img/detailimg/beijing11.jpg;img/detailimg/beijing12.jpg'),

(null,109798,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【中秋节】上新了北京交通自选5日跟团游','9月8号前错峰出游20人小团 两成人送真空全聚德烤鸭 登中央电视塔 进国家博物馆 赠送升旗仪式 3顿京味特色餐 全程入住快捷连锁酒店','免费接送机;无购物;世界遗产;古都行;精品酒店',2199,'img/detailimg/beijing13.jpg;img/detailimg/beijing14.jpg;img/detailimg/beijing15.jpg'),

(null,1094229,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','厚道北京飞高5日跟团游','庆70华诞 双成人立减800元 两万人出游行 满2人送水壶 贴心双导游 精华景点 故宫延禧宫深度3小时 天坛太极拳体验 香山赏秋','免费接送机;无购物;世界遗产;古都行;精品酒店',3599,'img/detailimg/beijing16.jpg;img/detailimg/beijing17.jpg;img/detailimg/beijing18.jpg'),

#张家界
(null,1071532,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','长沙+张家界大峡谷玻璃桥+天门山国家森林公园+玻璃栈道+芙蓉镇+凤凰古城双高5日跟团游','可另选升级全含0自费套餐 纯玩0购物1晚园林景观碧桂园紫荆花舍送洗漱用品 网红抖音芙蓉镇 享美食土家三下锅 十锅宴 苗王宴 凤凰近江客栈','免费接送机;无购物;世界遗产;精品酒店',1854,'img/detailimg/jiajie1.jpg;img/detailimg/jiajie2.jpg;img/detailimg/jiajie3.jpg'),

(null,73015,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【国庆节】张家界天门山+玻璃栈道+大峡谷玻璃桥+凤凰古城双高4日跟团游','同程专线玻璃桥玻璃栈道双挑战 特别安排当地特色餐 赠洗漱套装凤凰手绘地图 夜游凤凰城 贴心导游随团 升级特色客栈','免费接送机;无购物;世界遗产;精品酒店',1765,'img/detailimg/jiajie4.jpg;img/detailimg/jiajie5.jpg;img/detailimg/jiajie6.jpg'),

(null,140595,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','张家界+袁家界+天子山+黄龙洞+玻璃栈道+天门山双飞4日跟团游','直飞张家界 全部团期下单立减100元每成人 观世界溶洞奇观 畅游双5A景区张家界森林公园 天门山 赠百龙电梯往返 品土家特色美食','免费接送机;无购物;世界遗产;精品酒店',2917,'img/detailimg/jiajie7.jpg;img/detailimg/jiajie8.jpg;img/detailimg/jiajie9.jpg'),

(null,110365,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','长沙+云天渡玻璃桥+张家界大峡谷+天门山国家森林公园+玻璃栈道+芙蓉镇+赠魅力湘西演艺+凤凰双飞5日跟团游','纯玩0购物 人气玻璃桥VS绝壁玻璃栈道 赠旅行三宝 洗漱三件套 自拍杆 赠抖音网红景点芙蓉镇 赠送热门晚会魅力湘西 艳遇迷人凤凰古城夜景','免费接送机;无购物;世界遗产;精品酒店',2282,'img/detailimg/jiajie10.jpg;img/detailimg/jiajie11.jpg;img/detailimg/jiajie12.jpg'),

(null,1079512,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【中秋节】长沙+韶山+张家界森林公园全景+张家界千古情晚会+天门山玻璃栈道+芙蓉镇+凤凰古城双飞6日跟团游','性价比线路 1价全含 赏张家界森林核心景点 凤凰夜景 赠送张家界千古情晚会 全程0自费 挑战天门山玻璃栈道 打卡网红景点芙蓉镇','免费接送机;无购物;世界遗产;精品酒店',2257,'img/detailimg/jiajie16.jpg;img/detailimg/jiajie17.jpg;img/detailimg/jiajie18.jpg'),

(null,111866,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','张家界国家森林公园+天子山+袁家界+十里画廊+黄龙洞双飞3日跟团游（4钻）','同程专线 纯玩无购物 探密5A世遗核心景区张家界森林公园 观世界溶洞奇观黄龙洞 赠百龙电梯往返','免费接送机;无购物;世界遗产;精品酒店',2365,'img/detailimg/jiajie13.jpg;img/detailimg/jiajie14.png;img/detailimg/jiajie15.png'),

# 杭州
(null,35741,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【国庆节】苏州+杭州+上海+乌镇西栅双飞5日跟团游','双成人立减500 24小时接机 品牌酒店 宿乌镇旗下南栅客栈 深度游西栅 纯玩0购物 50元餐标3餐 苏州留园 雷峰塔 品质体验专属管家享受','免费接送机;无购物;世界遗产;精品客栈',2015,'img/detailimg/hangzhou1.jpg;img/detailimg/hangzhou2.jpg;img/detailimg/hangzhou3.jpg'),

(null,110031,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【中秋节】华东六市2水乡2园林+上海+南京+扬州小调苏州评弹+无锡+苏州+杭州西湖+周庄+乌镇+纯玩0购物双飞6日跟团游','中秋0元升级价值120元苏州游船 2成人立减200 全程4钻酒店 探魔都赏西湖觅耦园览个园 品扬州早茶 网红打卡万亩茶园拍照留念','免费接送机;祈福之旅;世界遗产;精品客栈',1755,'img/detailimg/hangzhou4.jpg;img/detailimg/hangzhou5.jpg;img/detailimg/hangzhou6.jpg'),

(null,11563,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','华东五市+鼋头渚赏太湖+苏州园林+水乡周庄+乌镇+瘦西湖双飞5日跟团游','双人立减200 瘦西湖加西湖 双湖探秘 乐享鼋头渚景区赏樱花 升级一顿太湖宴 乌镇周庄经典双水乡 放心纯玩0购物','无购物;祈福之旅;世界遗产;精品客栈',1734,'img/detailimg/hangzhou7.jpg;img/detailimg/hangzhou8.jpg;img/detailimg/hangzhou9.jpg'),

(null,25475,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【亲子游】嗨玩迪士尼乐园Disney+苏州+杭州+上海+乌镇+南浔+周庄三水乡双飞5日跟团游','不走回头路 千人出游 天天发班 纯玩0购物不进店 经典苏沪杭加迪士尼 性价比高','无购物;祈福之旅;世界遗产;精品客栈;亲子游',2210,'img/detailimg/hangzhou10.png;img/detailimg/hangzhou11.jpg;img/detailimg/hangzhou12.jpg'),

(null,87509,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','【中秋节】【亲子游】上海迪士尼乐园+苏州+杭州+上海+乌镇双飞5日跟团游','双成人立减200 24小时接机 嗨玩迪士尼 宿乌镇旗下南栅客栈 两进乌镇 纯玩0购物 50元餐标3正餐 苏州留园 登雷峰 专属管家品质服务','无购物;迪士尼;游乐园;精品客栈;亲子游',2568,'img/detailimg/hangzhou13.jpg;img/detailimg/hangzhou14.jpg;img/detailimg/hangzhou15.jpg'),

(null,108922,'img/headerimg/tourism6.jpg','img/headerimg/moveimg/movement1.jpg','华东5市+乌镇+千岛湖+黄山风景区镇双飞6日跟团游','双人立减400 纯玩0购物 确保宿乌镇And拈花湾双客栈 登五岳黄山 游千岛秀水 嗨江南3水乡 享特色风味餐 船游千岛湖','无购物;迪士尼;游乐园;精品客栈;亲子游',3035,'img/detailimg/hangzhou16.jpg;img/detailimg/hangzhou17.jpg;img/detailimg/hangzhou18.jpg');






