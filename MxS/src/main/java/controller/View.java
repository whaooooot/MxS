package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.Box;

import org.springframework.web.servlet.ModelAndView;

/**
 * @author SeungKyu Jeong
 * @since 2011. 02. 20.
 */

public class View {
    
    public static final String JSONVIEW     = "jsonViewResolver";
    public static final String XMLVIEW     = "xmlViewResolver";
    public static final String GRIDVIEW     = "gridViewResolver";
    public static final String TREEVIEW     = "treeViewResolver";
    public static final String CHARTVIEW     = "chartViewResolver";
    public static final String FILEDOWNVIEW = "fileDownViewResolver";
    public static final String DATAKEY = View.class + ".DATAKEY";
    
    public static ModelAndView jsonView(Object obj) {
        Map<String, Object> map = new HashMap<String, Object>() ;
        map.put(DATAKEY, obj);
        return new ModelAndView(JSONVIEW, map);
    }
    
    //jqGrid 용 검색 결과를 가지고 그리드용 데이터 세팅
    public static Map<String, Object> getGridResultMap(List<Map<String, Object>> list) {
    	    	
        Map<String, Object> map = new HashMap<String, Object>() ;
        map.put("rows", list);
        
        if(0 < list.size()){
        	map.put("total",  list.get(0).get("TOTAL"));
        	map.put("records", list.get(0).get("RECORDS"));
        }
        
        return map;
    }
    
    /*
    public static ModelAndView gridView(PageNaviInfo navi) {
        navi.calc();
        Map<String, Object> map = new HashMap<String, Object>() ;
        map.put("page",navi.getPageNo());
        map.put("records",navi.getTotalCount());
        map.put("total",navi.getPageCount());
        map.put("items",navi.getList());
        map.put("KEEPVAL", navi.getKeepVal());
        return new ModelAndView(GRIDVIEW, map);
    }    */
    
    public static ModelAndView treeView(Object obj) {
        Map<String, Object> map = new HashMap<String, Object>() ;
        map.put(DATAKEY, obj);
        return new ModelAndView(TREEVIEW, map);
    }
    
    public static ModelAndView xmlView(Object obj) {
        Map<String, Object> map = new HashMap<String, Object>() ;
        map.put(DATAKEY, obj);
        return new ModelAndView(XMLVIEW, map);
    }
    
    public static ModelAndView chartView(Object obj) {
        Map<String, Object> map = new HashMap<String, Object>() ;
        map.put(DATAKEY, obj);
        return new ModelAndView(CHARTVIEW, map);
    }
    /*
    public static ModelAndView fileDownView(FileDownInfo obj) {
        Map<String, Object> map = new HashMap<String, Object>() ;
        map.put(DATAKEY, obj);
        return new ModelAndView(FILEDOWNVIEW,map);
    }
    */
}
