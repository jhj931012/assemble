package com.assemble.security;

import org.springframework.security.crypto.password.PasswordEncoder;

public class CustomNoOpPasswordEncoder implements PasswordEncoder {

	@Override
	public String encode(CharSequence rawPassword) {
		/* CharSequence는 클래스가 아니고 인터페이스다. 인터페이스명(character + sequence)에서 짐작하듯이
		 * char값을 읽을 수 있다.
		 */
		return rawPassword.toString();
	}// 인코딩 되기 전 비번을 문자열로 반환한다.

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		return rawPassword.toString().equals(encodedPassword);
		// 인코딩(암호화)되기 전 비번과 인코딩 된 비번을 비교
	}

}
