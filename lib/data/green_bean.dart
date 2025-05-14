// 生豆等级信息
///
///埃塞俄比亚：G1, G2, G3, G4
///肯尼亚: AB, AA, PB
///
library;

class GreenBean {
  String id;
  String name; // 品名
  String type; // 品种：原生种/瑰夏/铁皮卡/波旁/希爪/卡图拉/卡杜艾...
  String trait; // 豆身特征：粒径大小、粒径是否不均、豆身颜色、豆身形状等
  String rank; // 生豆等级
  String country; // 原产国
  String region; // 原产地（省级）
  String producer; // 生产者：小农/庄园
  String process; // 处理法
  String flavors; // 描述风味：花香/柑橘/菠萝/坚果/... TODO: 支持（产季，风味）的组合
  String height; // 海拔
  String soil; // 土壤类型

  GreenBean({
    required this.id,
    required this.name,
    required this.type,
    required this.trait,
    required this.rank,
    required this.country,
    required this.region,
    required this.producer,
    required this.process,
    required this.flavors,
    this.height = "",
    this.soil = "",
  });
}

// 生豆批次信息
class GreenBeanBatch {
  String id;
  String weight;
  String unit; // 重量单位：g/kg
  String year; // 产季，暂定为年
  String packedDate; // 生豆商包装日期
  double price; // 生豆价格
  double moisture; // 生豆含水率 TODO: 扩展成(时间，含水率)的数组
  GreenBean type;

  GreenBeanBatch({
    required this.id,
    required this.weight,
    required this.unit,
    required this.year,
    required this.packedDate,
    required this.price,
    required this.moisture,
    required this.type,
  });
}
