package 数据库;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {
String encoding;
private static final String DEFAULT_CHARACTER_ENCODING = "UTF-8";
public EncodingFilter() {
}

public void destroy() {
}

public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
// TODO Auto-generated method stub
// place your code here

// pass the request along the filter chain
try {
if ((encoding!=null)&&(encoding.length()>0)) {
request.setCharacterEncoding(encoding);
//验证是否进入这个if语句
System.out.println("in filter and encoding :"+encoding);
}else {
request.setCharacterEncoding(DEFAULT_CHARACTER_ENCODING);
}
} catch (UnsupportedEncodingException e) {
request.setCharacterEncoding(DEFAULT_CHARACTER_ENCODING);
e.printStackTrace();
}
chain.doFilter(request, response);
}

public void init(FilterConfig fConfig) throws ServletException {
//获取配置文件中的encoding
encoding = fConfig.getInitParameter("encoding");
//确认web容器初始化的时候这个filter也已经初始化了
System.out.println(encoding);
}

}