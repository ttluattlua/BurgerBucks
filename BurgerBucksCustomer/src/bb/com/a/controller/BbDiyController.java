package bb.com.a.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import bb.com.a.model.BB_DiyBurgerDto;
import bb.com.a.model.Bb_BbsDto;
import bb.com.a.model.Bb_LikeDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.service.BbBurgerDiyService;

@Controller
public class BbDiyController {
	
	private static final Logger logger = LoggerFactory.getLogger(BbDiyController.class);	
	
	@Autowired
	BbBurgerDiyService bbBurgerDiyService;
	
	//diy게시판으로이동
	@RequestMapping(value="diyboard.do", method=RequestMethod.GET)
	public String diyboard(Model model, HttpServletRequest req, String s_keyword) throws Exception {
		logger.info("BbDiyController diyboard");
		HttpSession session = req.getSession(true);
		Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");
		String imagePath = (String)session.getAttribute("imagePath");
		List<Bb_BbsDto> bbsList = new ArrayList<>();
		if(s_keyword == null || s_keyword.equals("")) {
			
			bbsList = bbBurgerDiyService.getBurgerDiyList(login.getSeq());
			for (Bb_BbsDto bb_BbsDto : bbsList) {
				System.out.println(bb_BbsDto.toString());
				//저장된 이미지가 있을경우 
				if(!bb_BbsDto.getImage_Src().equals("없음")) {
					bb_BbsDto.setImage_Src(imagePath+bb_BbsDto.getImage_Src());
				}
			}
		}else {
			Bb_BbsDto bsdto = new Bb_BbsDto(login.getSeq(), s_keyword);
			bbsList = bbBurgerDiyService.diySearch(bsdto);
			for (Bb_BbsDto bb_BbsDto : bbsList) {
				//저장된 이미지가 있을경우 
				if(!bb_BbsDto.getImage_Src().equals("없음")) {
					bb_BbsDto.setImage_Src(imagePath+bb_BbsDto.getImage_Src());
				}
			}
		}
		model.addAttribute("bbsList", bbsList);
		return "diyboard.tiles";
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 버거 상세보기 클릭했을때 데이터가져오기 (prodeces넣는 이유-한글깨짐 방지)
	 *-------------------------------------------------------------------------------------------*/
	@ResponseBody 
	@RequestMapping(value = "getBurgerDiyDetail.do", method= {RequestMethod.GET, RequestMethod.POST}, produces = "application/json; charset=utf8")
	    public String updateSide(@RequestBody Map<String, Object> map) {
	         
			logger.info("BbDiyController getBurgerDiyDetail");
			System.out.println("BbDiyController getBurgerDiyDetail");
	
			System.out.println((String)map.get("seq"));
			
	
			int seq = Integer.parseInt((String)map.get("seq"));
			//수정할 bbs_store_Dto DB에서 가져오기 
			
			BB_DiyBurgerDto bbdetail = bbBurgerDiyService.getBurgerDiyDetail(seq);
			
			System.err.println("bbdetail:"+bbdetail);
	        
	        Gson gson = new Gson();
	        String bbDetailJson = gson.toJson(bbdetail);
	        System.out.println(bbDetailJson);
	        System.out.println("gson변환");

	        return bbDetailJson;
	    }
	

		/*--------------------------------------------------------------------------------------------
		 * 버거등록게시판으로가기
		 *-------------------------------------------------------------------------------------------*/
		@RequestMapping(value="addDiyBoard.do", method=RequestMethod.GET)
		public String addDiyBurger(Model model, HttpServletRequest req) throws Exception {
			logger.info("BbDiyController addDiyBurger");
			HttpSession session = req.getSession(true);
			Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");
			String imagePath = (String)session.getAttribute("imagePath");
			List<BB_DiyBurgerDto> bbsList = bbBurgerDiyService.myDiyBurgerList(login.getSeq());
			for (BB_DiyBurgerDto BB_DiyBurgerDto : bbsList) {
				System.out.println(BB_DiyBurgerDto.toString());
				if(!BB_DiyBurgerDto.getImage_Src().equals("없음")) {
					BB_DiyBurgerDto.setImage_Src(imagePath+BB_DiyBurgerDto.getImage_Src());
				}
			}
			model.addAttribute("bbsList", bbsList);
			return "addDiyBoard.tiles";
		}
		
		/*--------------------------------------------------------------------------------------------
		 * 버거등록후 diy게시판으로이동
		 *-------------------------------------------------------------------------------------------*/
		@RequestMapping(value="regiDiyBurger.do", method=RequestMethod.GET)
		public String regiDiyBurger(Model model, HttpServletRequest req, int seq) throws Exception {
			System.out.println("regeDIy-seq:" +seq);
			logger.info("BbDiyController addDiyBurger");
			HttpSession session = req.getSession(true);
			Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");
			Bb_BbsDto bsdto = new Bb_BbsDto(seq, login.getSeq());
			bbBurgerDiyService.regiDiyBurger(bsdto);
			return "redirect:/diyboard.do";

		}
		
		/*--------------------------------------------------------------------------------------------
		 * diy 버거 좋아요
		 *-------------------------------------------------------------------------------------------*/
		@ResponseBody // -->ajax쓸때 꼭 필요함 
		@RequestMapping(value="likeClick.do", method=RequestMethod.POST)
		public Map<String, Object> likeClick(@RequestBody Map<String, Object> map, HttpServletRequest req) throws Exception {
			logger.info("BbDiyController likeClick");
			Bb_BbsDto bdto = new Bb_BbsDto();
			Bb_LikeDto ldto = new Bb_LikeDto();
			HttpSession session = req.getSession(true);
			Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");	
			ldto.setBbs_Seq((int)map.get("seq"));		//글번호   
			ldto.setMember_Seq(login.getSeq());								//회원번호 ===>어떤 회원이 몇번글에 라이크를 눌렀는지
			System.out.println("ldto: " + ldto.toString());
			
			bbBurgerDiyService.likeClick(ldto);
			bbBurgerDiyService.bbsLikeAdd(ldto);
			
			Map<String, Object> rmap = new HashMap<String, Object>();
			rmap.put("msg", "좋아요 성공");
			return rmap;
		}
		
		/*--------------------------------------------------------------------------------------------
		 * diy 버거 좋아요 취소
		 *-------------------------------------------------------------------------------------------*/
		@ResponseBody
		@RequestMapping(value="unlikeClick.do", method=RequestMethod.POST)
		public Map<String, Object> unlikeClick(@RequestBody Map<String, Object> map, HttpServletRequest req) throws Exception {
			logger.info("BbDiyController unlikeClick");
			Bb_BbsDto bdto = new Bb_BbsDto();
			Bb_LikeDto ldto = new Bb_LikeDto();
			HttpSession session = req.getSession(true);
			Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");		 
			ldto.setBbs_Seq((int)map.get("seq"));		//글번호   
			ldto.setMember_Seq(login.getSeq());								//회원번호 ===>어떤 회원이 몇번글에 라이크를 눌렀는지
			System.out.println("ldto: " + ldto.toString());
			
			bbBurgerDiyService.unlikeClick(ldto);
			bbBurgerDiyService.bbsLikeDelete(ldto);
			
			Map<String, Object> rmap = new HashMap<String, Object>();
			rmap.put("msg", "좋아요 성공");
			return rmap;
		}
		

		
		

}
