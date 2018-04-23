package bb.com.a.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bb.com.a.model.Bb_FaqDto;
import bb.com.a.model.Bb_InquiryDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.model.Bb_YesMember;
import bb.com.a.service.BbMemberService;
import bb.com.a.service.BbFaqService;
import bb.com.a.service.BbInquiryService;

//기타페이지를 위한 컨트롤러
@Controller
public class BbEctController {
	
	private static final Logger logger = LoggerFactory.getLogger(BbEctController.class);
	

	@Autowired
	BbMemberService bbMemberSerivce;
	@Autowired
	BbFaqService bbFaqService;
	@Autowired
	BbInquiryService bbInquirySerivce;
	
	// xml에 설정된 리소스 참조
    // bean의 id가 uploadPath인 태그를 참조
    @Resource(name="termsPath")
    String termsPath;
	
	
	
		
	/*--------------------------------------------------------------------------------------------
	 * 문의하기 페이지로 이동 
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="customer_inquiry.do", method=RequestMethod.GET)
	public String customer_inquiry() {
		logger.info("BbEctController customer_inquiry");
		return "customer_inquiry.tiles";
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 문의하기 
	 *-------------------------------------------------------------------------------------------*/
	@ResponseBody
	@RequestMapping(value="sendInquiry.do", method=RequestMethod.POST)
	public Map<String, Object> sendInquiry(@RequestBody Map<String, Object> map) {
		logger.info("BbEctController sendInquiry");	
		
		Bb_InquiryDto bidto = new Bb_InquiryDto(0, 
				(String)map.get("title"), 
				(String)map.get("email"), 
				"", 
				(String)map.get("content"), 
				0);
		
		bbInquirySerivce.sendInquiry(bidto);
		
		Map<String, Object> rmap = new HashMap<>();
		rmap.put("msg", "문의 메일을 성공적으로 보냈습니다. 답변은 3-5일이 소요됩니다.");
		return rmap;		
	}
	
	
	/*--------------------------------------------------------------------------------------------
	 * FAQ페이지로 이동
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="faq.do", method=RequestMethod.GET)
	public String faq(Model model) {
		logger.info("BbMyPageController faq");
		List<Bb_FaqDto> faqList = bbFaqService.getFaqList();
		model.addAttribute("faqList", faqList);
		return "faq.tiles";
	}

	/*--------------------------------------------------------------------------------------------
	 * 이용약관으로이동
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="terms_and_conditions.do", method=RequestMethod.GET)
	public String termsAndConditions(Model model) {
		logger.info("BbMyPageController faq");
<<<<<<< HEAD
		
<<<<<<< HEAD
=======
		 File file = new File(termsPath+"terms.txt");
		  //문장으로 읽어 오는 방법
		  try {
		   //Buffer == 저장공간
		   BufferedReader br = new BufferedReader(new FileReader(file)); 

		   String terms ;  //문자열로 넘어옴

		   while((terms = br.readLine()) != null){

		    System.out.println(terms);

		   }
		   model.addAttribute("terms", terms);  
		   br.close(); // buffered~ 꼭 닫아줘야함

		  }catch (Exception e) {
		   e.printStackTrace();
		  }
		
>>>>>>> parent of 295bb71... Upload
=======
		/*
    File file = new File(termsPath+"WebContent/Terms/terms.txt");
    //문장으로 읽어 오는 방법
    try {
     //Buffer == 저장공간
     BufferedReader br = new BufferedReader(new FileReader(file)); 
    
     String terms ;  //문자열로 넘어옴
    
     while((terms = br.readLine()) != null){
    
      System.out.println(terms);
    
     }
     model.addAttribute("terms", terms);  
     br.close(); // buffered~ 꼭 닫아줘야함
    
    }catch (Exception e) {
     e.printStackTrace();
    }
		*/
>>>>>>> parent of c7cf759... 주문 부분 합치기 거의 완료
		return "terms_and_conditions.tiles";
	}


		
}
