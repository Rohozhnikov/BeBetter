package mum.edu.aspect;

import java.util.logging.Logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class AdviceAspect {
	

	@AfterThrowing(pointcut = "execution(* mum.edu.controller.*.*(..))", throwing="exception")
	public void catchExceptions(JoinPoint joinPoint,Exception exception){
		try{
			System.err.println("Exception was caught in method ="+joinPoint.getSignature().getName());
			exception.printStackTrace();
		} catch (Exception e) {
			System.err.println("Exception was caught in method = "+joinPoint.getSignature().getName());
			e.printStackTrace();
		} catch (Throwable e) {
			System.err.println("Throwable was caught in method = "+joinPoint.getSignature().getName());
			e.printStackTrace();
		}
	}
}
