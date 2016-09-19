/**
 * 
 */
package net.likemycat.storage;

/**
 * @author b1gs
 *
 */
public class StorageFileNotFoundException extends StorageException {
	
	public StorageFileNotFoundException(String message) {
        super(message);
    }

    public StorageFileNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }
	
}
