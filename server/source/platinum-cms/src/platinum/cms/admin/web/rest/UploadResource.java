package platinum.cms.admin.web.rest;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import platinum.common.PTEnvironment;
import platinum.common.util.GUIDUtil;
import platinum.framework.web.rest.AbstractResource;

import com.sun.jersey.core.header.FormDataContentDisposition;
import com.sun.jersey.multipart.FormDataParam;

@Path("admin/upload")
public class UploadResource extends AbstractResource
{
	private static List<String> IMAGE_EXTENSION_LIST = null;
	private static List<String> ATTACHMENT_EXTENSION_LIST = null;
	
	@POST
	@Path("image")
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	public Response uploadImage(
			@FormDataParam("file") InputStream p_inputStream,
			@FormDataParam("file") FormDataContentDisposition p_fileDisposition)
	{
		String fileName = p_fileDisposition.getFileName().toLowerCase();
		String ext = fileName.substring(fileName.lastIndexOf('.') + 1);
		if (!_checkExtension(ext, "images"))
		{
			return responseWithHTML("<div id='result' class='error'>不合法的图片扩展名。</div>");
		}
		
		try
		{
			String relativePath = _uploadFile(p_inputStream, "images", ext);
			return responseWithHTML("<div id='result'>" + relativePath + "</div>");
		}
		catch (Exception e)
		{
			return responseWithHTML("<div id='result' class='error'>无法读取上传的内容。</div>");
		}
	}

	@POST
	@Path("attachment")
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	public Response uploadAttachment(
			@FormDataParam("file") InputStream p_inputStream,
			@FormDataParam("file") FormDataContentDisposition p_fileDisposition)
	{
		String fileName = p_fileDisposition.getFileName().toLowerCase();
		String ext = fileName.substring(fileName.lastIndexOf('.') + 1);
		if (!_checkExtension(ext, "attachments"))
		{
			return responseWithHTML("<div id='result' class='error'>不合法的文件扩展名（只支持 png、jpg、gif 等格式）。</div>");
		}
		
		try
		{
			String relativePath = _uploadFile(p_inputStream, "attachments", ext);
			return responseWithHTML("<div id='result'>" + relativePath + "</div>");
		}
		catch (Exception e)
		{
			return responseWithHTML("<div id='result' class='error'>无法读取上传的内容。</div>");
		}
	}

	private String _uploadFile(InputStream p_inputStream,
			String p_folderName, String p_fileExtension) throws IOException
	{
		String fileName = GUIDUtil.newGuid() + "." + p_fileExtension;
		String relativePath = "/uploads/" + p_folderName + "/" + fileName;
		String localPath = PTEnvironment.getSharedPath(relativePath);
		File localFile = new File(localPath);
		
		OutputStream outputStream = new FileOutputStream(localFile);
		int length = 0;
		byte[] bytes = new byte[10240];
		while ((length = p_inputStream.read(bytes)) != -1)
		{
			outputStream.write(bytes, 0, length);
		}
		outputStream.flush();
		outputStream.close();

		return relativePath;
	}
	

	private boolean _checkExtension(String p_extension, String p_type)
	{
		if (p_type.equals("images"))
		{
			if (IMAGE_EXTENSION_LIST == null)
			{
				IMAGE_EXTENSION_LIST = new ArrayList<String>();
				IMAGE_EXTENSION_LIST.add("jpg");
				IMAGE_EXTENSION_LIST.add("png");
				IMAGE_EXTENSION_LIST.add("gif");
			}
			return IMAGE_EXTENSION_LIST.contains(p_extension);
		}
		else
		{
			if (ATTACHMENT_EXTENSION_LIST == null)
			{
				ATTACHMENT_EXTENSION_LIST = new ArrayList<String>();
				ATTACHMENT_EXTENSION_LIST.add("pdf");
				ATTACHMENT_EXTENSION_LIST.add("zip");
				ATTACHMENT_EXTENSION_LIST.add("rar");
				ATTACHMENT_EXTENSION_LIST.add("doc");
				ATTACHMENT_EXTENSION_LIST.add("docx");
				ATTACHMENT_EXTENSION_LIST.add("ppt");
				ATTACHMENT_EXTENSION_LIST.add("pptx");
				ATTACHMENT_EXTENSION_LIST.add("xls");
				ATTACHMENT_EXTENSION_LIST.add("xlsx");
				ATTACHMENT_EXTENSION_LIST.add("xlsx");
				ATTACHMENT_EXTENSION_LIST.add("rmvb");
				ATTACHMENT_EXTENSION_LIST.add("rm");
				ATTACHMENT_EXTENSION_LIST.add("wmv");
				ATTACHMENT_EXTENSION_LIST.add("mov");
				ATTACHMENT_EXTENSION_LIST.add("mp4");
				ATTACHMENT_EXTENSION_LIST.add("mp3");
			}		
			return ATTACHMENT_EXTENSION_LIST.contains(p_extension);
		}
	}
}
