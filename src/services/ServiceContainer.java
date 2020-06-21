package services;

import exception.ServiceContructException;

import javax.servlet.ServletContext;
import java.lang.reflect.InvocationTargetException;

public class ServiceContainer extends ServiceContainerBase {
    @Override
    protected void injectServices() {
        addSingleton(MainServiceInterface.class, MainService.class);
    }

    public MainServiceInterface mainService() throws ServiceContructException, IllegalAccessException, InvocationTargetException, InstantiationException {
        return (MainServiceInterface) getService(MainServiceInterface.class);
    }

    /**
     * 创建服务容器
     * @param context 配置文件（web.xml）
     */
    public static void creatContianer(ServletContext context){
        instance = new ServiceContainer();
    }

    /**
     * 获取服务容器单例
     * @return 服务容器单例
     */
    public static ServiceContainer get() {
        return (ServiceContainer) instance;
    }
}
