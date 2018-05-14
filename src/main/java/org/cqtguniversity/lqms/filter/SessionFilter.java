package org.cqtguniversity.lqms.filter;

import org.springframework.core.annotation.Order;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Writer;


/**
 * @author Tangshengyu
 * @create 2018- 04- 04- 17:01
 */
@Order(1) // 数值越小表示过滤越靠前
@WebFilter(filterName = "sessionFilter", urlPatterns = "/*")
public class SessionFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        ////  判断用户是否已经登录
        //HttpSession httpSession = httpServletRequest.getSession();
        //if ("/userAccount/checkLogin".equals(httpServletRequest.getServletPath()) || "/userAccount/login".equals(httpServletRequest.getServletPath())) {
        //    //  放行
        //    filterChain.doFilter(servletRequest, servletResponse);
        //    return;
        //} else {
        //    if (null != httpSession.getAttribute("sessionDTO")) {
        //        //  放行
        //        filterChain.doFilter(servletRequest, servletResponse);
        //        return;
        //    }
        //}
        //try (Writer writer = servletResponse.getWriter()) {
        //    writer.write("{\"status\":false}");
        //}
        //  放行
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
