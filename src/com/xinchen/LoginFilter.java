package com.xinchen;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/LoginFilter")
public class LoginFilter implements Filter {
	private String charSet;
    public LoginFilter() {}

	public void init(FilterConfig fConfig) throws ServletException {
		this.charSet = fConfig.getInitParameter("charset");
	}
    

	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(charSet);
		chain.doFilter(request, response);
	}
}
