package app.vo;


import app.service.BrandService;
import app.service.MilkService;
import org.apache.poi.hssf.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ExportPlane {

    private final static String[] brand = {"bid","bname","img","gcid"};
    private final static String[] milk = {"gid","gname","price","store","createtime","recommond","rate","cata","stage","age","bid","img","tag","gcid"};
    private final static HashMap header = new HashMap();


    @Autowired
    private BrandService brandService;

    @Autowired
    private MilkService milkService;

    static {
        header.put("brandHeaer",brand);
        header.put("milkHeader",milk);
    }



    //    导出数据品牌表
    @GetMapping("/api/export/brand")
    public void exportBrand(HttpServletResponse resp){

        HSSFWorkbook workbook = new HSSFWorkbook();

        HSSFSheet sheet= workbook.createSheet("brand");

        sheet.setDefaultColumnWidth(10);

        HSSFRow headrow = sheet.createRow(0);
        /* 初始化头部 */
        for (int i = 0; i < brand.length; i++) {
//            创建单元格
            HSSFCell cell = headrow.createCell(i);
//            创建内容对象
            HSSFRichTextString text = new HSSFRichTextString(brand[i]);
//            填写单元格
            cell.setCellValue(text);
        }

        List<Brand> brands = brandService.list();
//        System.out.println(brands);
        for (int i = 0; i < brands.size(); i++) {
//            创建第一行
            HSSFRow row = sheet.createRow(i+1);

            Brand brand = brands.get(i);

            row.createCell(0).setCellValue(new HSSFRichTextString(String.valueOf(brand.getBid())));
            row.createCell(1).setCellValue(new HSSFRichTextString(brand.getBname()));
            row.createCell(2).setCellValue(new HSSFRichTextString(brand.getImg()));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(brand.getGcid())));

        }
        resp.setContentType("application/octet-stream");
        resp.setHeader("Content-disposition", "attachment;filename=employee.xls");
        try {
            resp.flushBuffer();
            workbook.write(resp.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    //    导出数据品牌表
    @GetMapping("/api/export/milk")
    public void exportMilk(HttpServletResponse resp){

        HSSFWorkbook workbook = new HSSFWorkbook();

        HSSFSheet sheet= workbook.createSheet("milk");

        sheet.setDefaultColumnWidth(10);

        HSSFRow headrow = sheet.createRow(0);
        /* 初始化头部 */
        for (int i = 0; i < milk.length; i++) {
//            创建单元格
            HSSFCell cell = headrow.createCell(i);
//            创建内容对象
            HSSFRichTextString text = new HSSFRichTextString(milk[i]);
//            填写单元格
            cell.setCellValue(text);
        }

        List<Map> milks = milkService.list();
        System.out.println(milks);
        for (int i = 0; i < milks.size(); i++) {
//            创建第一行
            HSSFRow row = sheet.createRow(i+1);

            Map map = milks.get(i);
//
            row.createCell(0).setCellValue(new HSSFRichTextString(String.valueOf(map.get("gid"))));
            row.createCell(1).setCellValue(new HSSFRichTextString((String) map.get("gname")));
            row.createCell(2).setCellValue(new HSSFRichTextString(String.valueOf(map.get("price"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("store"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("createtime"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("recommend"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("rate"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("cata"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("stage"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("age"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("bid"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("img"))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(String.valueOf(map.get("tag")))));
            row.createCell(3).setCellValue(new HSSFRichTextString(String.valueOf(map.get("gcid"))));

        }
        resp.setContentType("application/octet-stream");
        resp.setHeader("Content-disposition", "attachment;filename=employee.xls");
        try {
            resp.flushBuffer();
            workbook.write(resp.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }




}
