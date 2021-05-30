/**
 * 
 */
package kr.or.hotsource.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author ILovePC
 * -AOP를 사용하여 요청에 대한 로그를 데이터베이스에 남기기 위한 어노테이션
 * -AfterReturning 적용
 * @Target(ElementType.METHOD)  : 어노테이션을 메소드에 사용할 것
 * @Retention(RetentionPolicy.RUNTIME) : 어노테이션이 런타임까지 유지되도록 설정
 */
@Target(ElementType.METHOD) 
@Retention(RetentionPolicy.RUNTIME)
public @interface Logging {
}
