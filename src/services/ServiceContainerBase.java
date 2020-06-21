package services;

import exception.ServiceContructException;
import util.Tools;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;

/**
 * 服务容器（IoC容器）类
 * 依赖注入的框架，用来映射依赖，管理对象创建和生存周期（DI框架）。
 *
 */
public abstract class ServiceContainerBase {
    /**
     * 私有构造，创造服务容器，完成服务的注入
     */
    protected ServiceContainerBase(){
        this.injectServices();
    }

    /**
     * 服务单例哈希表
     */
    private final HashMap<String, Object> singletonServices = new HashMap<>();

    /**
     * 服务类声明单例哈希表
     */
    private final HashMap<String, Class<?>> singletonServicesClass = new HashMap<>();

    /**
     * 设置信息哈希表
     */
    private final HashMap<String, Object> settings = new HashMap<>();

    /**
     * 注册服务，添加服务类声明到对应哈希表
     * @param interfaceClass 接口类声明
     * @param serviceClass 服务类声明
     */
    public final void addSingleton(Class<?> interfaceClass, Class<?> serviceClass){
        singletonServicesClass.put(interfaceClass.getName(),serviceClass);
    }

    /**
     * 通过服务类声明创建服务类实例
     * @param serviceClass 服务类声明
     * @return 服务类实例
     * @throws ServiceContructException 服务容器构造错误
     */
    private Object creatService(Class<?> serviceClass) throws ServiceContructException{
        try{

            Constructor<?>[] constructors = serviceClass.getConstructors();

            Constructor<?> constructor = constructors[0];

            Class<?>[] parameterClasses = constructor.getParameterTypes();
            Object[] parameters = new Object[parameterClasses.length];
            for(int i = 0; i < parameterClasses.length; i++){
                parameters[i] = getService(parameterClasses[i]);
            }
            return constructor.newInstance(parameters);
        }catch (ServiceContructException sce){
            throw sce;
        }catch (Exception e){
            e.printStackTrace();
            throw new ServiceContructException("服务器创建失败",e);
        }
    }

    /**
     * 通过服务类声明获取服务实例
     * @param serviceClass 服务类声明
     * @return 返回的服务实例
     * @throws ServiceContructException 服务容器构造错误
     */
    public final <T> T getService(Class<?> serviceClass) throws ServiceContructException, InvocationTargetException, InstantiationException, IllegalAccessException{
        if(serviceClass.equals(this.getClass()))
            return (T)this;

        Class<?> singletonServiceClass = singletonServicesClass.get(serviceClass.getName());
        if(singletonServiceClass != null){
            Object service = singletonServices.get(singletonServiceClass);
            if(service != null){
                return (T)service;
            }

            service = creatService(singletonServiceClass);
            return (T)service;
        }

        return null;
    }

    public Object getSettings(String key){
        return settings.get(key);
    }
    public void setSettings(String key,Object value){
        settings.put(key,value);
    }

    /**
     * 注入服务，初始化时调用
     */
    protected abstract void injectServices();
    protected static ServiceContainerBase instance;
}
