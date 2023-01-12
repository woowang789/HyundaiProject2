package com.hyundai.api;

import java.io.File;
import java.nio.file.Files;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/api/image")
@Slf4j
public class ImageApi {
	
	@Value("#{filepath['file.path']}")
	private String uploadFolder;
	
	@PostMapping("/upload")
	public ResponseEntity<String> uploadImg(MultipartFile uploadFile) {
		log.info("upload img");
		log.info(uploadFolder);
		
		String fileName = UUID.randomUUID().toString().substring(8);
		log.info(uploadFile+"");
		try {
			File saveFile = new File(uploadFolder,fileName);
			uploadFile.transferTo(saveFile);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return new ResponseEntity<String>(fileName, HttpStatus.OK);
		
	}
	
	@GetMapping("/display")
	public ResponseEntity<byte[]> getFile(String fileName){
		log.info(fileName);
		File file = new File(uploadFolder, fileName);
		ResponseEntity<byte[]> result = null;
		try {
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		}catch(Exception e) {
			
		}
		return result;
	}
}
