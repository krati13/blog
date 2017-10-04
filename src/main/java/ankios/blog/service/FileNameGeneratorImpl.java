package ankios.blog.service;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Service;

@Service("fileNameGenerator")
public class FileNameGeneratorImpl implements FileNameGenerator {
    @Override
    public String getFileName(String filename, String prefix) {
        StringBuilder sb=new StringBuilder();
        sb.append(prefix);
        sb.append(filename.hashCode() );
        sb.append(System.currentTimeMillis());
        return sb.toString();
    }
}
