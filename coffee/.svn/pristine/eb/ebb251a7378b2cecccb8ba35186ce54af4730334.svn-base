package com.myspring.coffee.controller.shop;

import java.io.File;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.coffee.model.shop.dto.CartDTO;
import com.myspring.coffee.model.shop.dto.ProductDTO;
import com.myspring.coffee.service.shop.ProductService;

@Controller
@RequestMapping("shop/product/*")
public class ProductController {
	
	private static final Logger logger
	= LoggerFactory.getLogger("ProductController.class");
	
	@Inject
	ProductService productService;
	
	@RequestMapping("product_list.do")
	public ModelAndView product_list() {
		
		return new ModelAndView("shop/product_list", "list", productService.list());
	}
	
	@RequestMapping("product_write.do")
	public String product_write() {
		
		return "shop/product_write";
	}
	
	@RequestMapping("insert.do")
	public String insert(ProductDTO dto) {
		
		logger.info("상품 정보 넘어오는것 확인"+dto.toString());
		String filename ="-";
		if(!dto.getFile1().isEmpty()) {  // 첨부파일이 있으면
			filename = dto.getFile1().getOriginalFilename(); // 첨부파일 이름 추출
			try {	
				// 실제 스프링 파일 저장 루트, 개발 디렉토리 
				//String path="C:\\Users\\USER\\Documents\\workspace-sts-3.9.6.RELEASE\\spring02\\src\\main\\webapp\\WEB-INF\\views\\images\\"; // 업로드할 디렉토리
				
				String path="C:\\Users\\USER\\Documents\\workspace-sts-3.9.6.RELEASE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\coffee\\WEB-INF\\views\\images\\";
				// 디렉토리가 존재하지 않으면 첨부파일 이동
				new File(path).mkdir();
				// 임시 디렉로리에 파일을 지정된 파일로 이동
				dto.getFile1().transferTo(new File(path+filename));
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		dto.setProduct_url(filename);
		
		logger.info("상품 등로중 파일 명"+filename);
		productService.insert(dto);
		
		return "redirect:/admin/dashboard_product.do";
	}
	

	@RequestMapping("product_edit/{product_id}")
	public ModelAndView product_edit(@PathVariable("product_id") int product_id,
			ModelAndView mav) {
		mav.setViewName("shop/product_edit");
		mav.addObject("list",productService.detail(product_id) );
		return mav;
	}
	
	
	@RequestMapping("delete/{product_id}")
	public String delete(@PathVariable("product_id") int product_id) {
		
		productService.delete(product_id);
		
		return "redirect:/admin/dashboard_product.do";
	}
	
	
	@RequestMapping("product_detail/{product_id}")
	public ModelAndView product_detail(@PathVariable("product_id") int product_id,
			ModelAndView mav) {
		mav.setViewName("shop/product_detail");
		mav.addObject("list",productService.detail(product_id) );
		return mav;
	}
	

}
