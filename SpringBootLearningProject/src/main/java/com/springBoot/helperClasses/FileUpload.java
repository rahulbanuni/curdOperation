package com.springBoot.helperClasses;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

@Component
public class FileUpload
{

    @Autowired
    ServletContext ctx;
    public final String uploadDirectory = "G:\\Codes\\crudOperation\\SpringBootLearningProject\\src\\main\\resources\\static\\images\\";
//    public final String uploadDirectory = new ClassPathResource("static/images/").getFile().getAbsolutePath();

    public boolean uploadFile(MultipartFile file)
    {
        boolean fileUploaded = false;
        try{
            Files.copy(file.getInputStream(), Paths.get(uploadDirectory+ File.separator+file.getOriginalFilename()), StandardCopyOption.REPLACE_EXISTING);
            fileUploaded = true;
        }catch(Exception e){
          e.printStackTrace();
        }
        return fileUploaded;
    }

    public FileUpload() throws IOException
    {
    }
}
