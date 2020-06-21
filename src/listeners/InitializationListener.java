package listeners;

import services.ServiceContainer;
import util.Tools;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;

public class InitializationListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent event) {
        ServiceContainer.creatContianer(event.getServletContext());
        Tools.printClassMessage(this, "init the container");
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
        Tools.printClassMessage(this, "destroy the container");
        Enumeration<Driver> drivers = DriverManager.getDrivers();
        while (drivers.hasMoreElements()) {
            Driver driver = drivers.nextElement();
            try {
                DriverManager.deregisterDriver(driver);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
