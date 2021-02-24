import app.vo.Brand;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class Test {

    public static void main(String[] args) {
        List<Brand>  brands = new ArrayList<>();
        for (int i = 0; i < 3; i++) {
            Brand brand = new Brand();
            brand.setBid(1);
            brand.setBname(i+"good");
            brands.add(brand);
        }
        ExcelWriter writer = ExcelUtil.getWriter();
        writer.addHeaderAlias("bid","品牌编号");
        writer.addHeaderAlias("bname","品牌名称");


    }
}
