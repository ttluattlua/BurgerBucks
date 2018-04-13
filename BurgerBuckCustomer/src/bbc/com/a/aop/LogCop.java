package bbc.com.a.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;

@Aspect
public class LogCop {
	
	@Around("within(bbc.com.a.controller.*)")
	public Object loggerApp(ProceedingJoinPoint jp)throws Throwable {
		
		//실행되는 메소드명
		String signatureStr = jp.getSignature().toShortString();		
		System.out.println("Logger :" + signatureStr);
		
		Object obj = jp.proceed();		
		return obj;
	}
}







