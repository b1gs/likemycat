/**
 * 
 */
package net.likemycat.storage;

import org.springframework.context.annotation.Configuration;

/**
 * @author b1gs
 *
 */
@Configuration
public class StorageProperties {
	/**
     * Folder location for storing files
     */
    private String location = "C:\\storage";

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
