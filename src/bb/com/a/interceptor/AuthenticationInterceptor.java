package bb.com.a.interceptor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import bb.com.a.model.Bb_MemberDto;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter {
	
	//preHandle - controller 이벤트 호출전    
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    	System.out.println("인터셉터실행");
        try {
            //login이라는 세션key를 가진 정보가 널일경우 로그인페이지로 이동
        	HttpSession session = request.getSession(true);
        	
        	Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");
            if(login == null ){
            	
            	 response.setContentType("text/html; charset=UTF-8");
                 PrintWriter out;
	              try {
	                 
	                 //실패시 창 띄우기
	                 out = response.getWriter();
	                 out.println("<script>alert('로그인 후 이용가능한 서비스입니다.'); history.go(-1);</script>");
	                    out.flush(); 
	                 
	              } catch (IOException e) {
	                 // TODO Auto-generated catch block
	                 e.printStackTrace();
	              }

                    response.sendRedirect("./home.do");
                    return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //login 세션key 존재시 해당 페이지 이동
        return true;
    }
    
    //postHandle - controller 호출 후 view 페이지 출력전
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }
 
    
    
    //afterCompletion - controller + view 페이지 모두 출력 후
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }
 
    //afterConcurrentHandlingStarted - 뭐 동시에 핸들링 해주는 메서드인대 정확히는 모르겠습니다.
    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        super.afterConcurrentHandlingStarted(request, response, handler);
    }


}
