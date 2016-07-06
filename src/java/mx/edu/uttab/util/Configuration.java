/**
 *
 * @author Weisß
 */
package mx.edu.uttab.util;
import java.io.IOException;
import java.util.Properties;
 
public class Configuration {
 
    Properties properties = null;
 
    /** Configuration file name */
    public final static String CONFIG_FILE_NAME = "Configuration.properties";
 
    /** Xml actividades universitarias */
    public final static String XML_ACTIVIDADES_UNIVERSITARIAS = "xml.actividades.universitarias";
 
    /** Xml gacetas */
    public final static String XML_GACETAS = "xml.gacetas";
    
    /** Xml eventos */
    public final static String XML_EVENTOS = "xml.eventos";

 
    private Configuration() {
        this.properties = new Properties();
        try {
            properties.load(Configuration.class.getClassLoader().getResourceAsStream(CONFIG_FILE_NAME));
        } catch (IOException ex) {
        }
    }//Configuration
 
    /**
     * Implementando Singleton
     *
     * @return
     */
    public static Configuration getInstance() {
        return ConfigurationHolder.INSTANCE;
    }
 
    private static class ConfigurationHolder {
 
        private static final Configuration INSTANCE = new Configuration();
    }
 
    /**
     * Retorna la propiedad de configuración solicitada
     *
     * @param key
     * @return
     */
    public String getProperty(String key) {
        return this.properties.getProperty(key);
    }//getProperty
}
