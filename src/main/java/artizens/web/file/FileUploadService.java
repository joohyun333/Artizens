package artizens.web.file;

import artizens.domain.UploadFile;
import artizens.web.file.aws.AwsS3UploadService;
import artizens.web.file.local.LocalFileUploadService;
import com.amazonaws.services.s3.model.ObjectMetadata;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
@Component
public class FileUploadService {

    @Value("${spring.file.upload.option}")
    private String uploadOption;
    private final UploadService uploadService;

    public FileUploadService(UploadService uploadService) {
        this.uploadService = new LocalFileUploadService();
    }

    public UploadFile uploadImage(MultipartFile file) {
        String fileName = createFileName(file.getOriginalFilename());
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.setContentLength(file.getSize());
        objectMetadata.setContentType(file.getContentType());
        try (InputStream inputStream = file.getInputStream()) {
            uploadService.uploadFile(inputStream, objectMetadata, fileName);
        } catch (IOException e) {
            throw new IllegalArgumentException(String.format("파일 변환중 에러발생 (%s)", file.getOriginalFilename()));
        }
        return new UploadFile(file.getOriginalFilename(), uploadService.getFileUrl(fileName));
    }

    public List<UploadFile> uploadImages(List<MultipartFile> files) {
        List<UploadFile> storeFileResult = new ArrayList<>();
        for (MultipartFile multipartFile : files) {
            if (!multipartFile.isEmpty()) {
                storeFileResult.add(uploadImage(multipartFile));
            }
        }
        return storeFileResult;
    }

    public String createFileName(String originalFileName) {
        return UUID.randomUUID().toString().concat(getFileExtension(originalFileName));
    }

    private String getFileExtension(String originalFileName) {
        return originalFileName.substring(originalFileName.lastIndexOf("."));
    }
}
