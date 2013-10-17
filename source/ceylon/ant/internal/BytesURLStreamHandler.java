package ceylon.ant.internal;

import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

public class BytesURLStreamHandler extends URLStreamHandler {
    
    private byte[] content;

    public BytesURLStreamHandler(byte[] content) {
        this.content = content;
    }

    public URLConnection openConnection(URL url) {
        return new BytesURLConnection(url, content);
    }
    
}