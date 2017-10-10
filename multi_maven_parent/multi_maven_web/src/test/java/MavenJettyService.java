import javax.servlet.Servlet;

import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.DefaultHandler;
import org.eclipse.jetty.server.handler.HandlerCollection;
import org.eclipse.jetty.server.handler.RequestLogHandler;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.util.log.StdErrLog;
import org.eclipse.jetty.webapp.WebAppContext;

public class MavenJettyService {
 
	 /** port */
    private int port = 8088;

    protected String charset = "UTF-8";

    public MavenJettyService() {
    }

    public MavenJettyService(int port) {
        this.port = port;
    }

    public MavenJettyService(int port, String charset) {
        super();
        this.port = port;
        this.charset = charset;
    }

    /**
     * 服务器启动。
     * 
     */
    public void start() {

        // 设置Jetty日志
        System.setProperty("org.eclipse.jetty.util.log.class", StdErrLog.class.getName());

        HandlerCollection handlers = new HandlerCollection();

        Server server = new Server(this.port);

        RequestLogHandler requestLogHandler = new RequestLogHandler();

        // 设置context
        WebAppContext context = new WebAppContext();
        context.setContextPath("/maven");

        //这个地址的加载方式,eclipse和idea目录有区别,跟maven导入有关
        //context.setResourceBase("./src/main/webapp");
        //context.setDefaultsDescriptor("/src/test/java/jetty/webdefault.xml");

//        context.setResourceBase("./monitor/web/war/src/main/webapp");
        context.setResourceBase("./webapp");
//        context.setDefaultsDescriptor("monitor/web/war/src/test/java/jetty/webdefault.xml");

        // PS:嵌入式的Jetty，应用当前工程的ClassPath，如果不设置将使用WebAppClassLoder，WEB-INF/lib目录加载jar。
        context.setClassLoader(Thread.currentThread().getContextClassLoader());
        context.setParentLoaderPriority(true);

        handlers.setHandlers(new Handler[] { context, new DefaultHandler(), requestLogHandler });
        server.setHandler(handlers);
        
        // 启动Server
        try {
            server.start();
            server.join();
        } catch (Exception e) {
        }

    }

    public static void main(String[] args) throws Exception {
    	MavenJettyService service=new MavenJettyService();
    	service.start();
        System.out.println("server is  start");  
    }
 
}
