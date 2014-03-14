package platinum.common.util;

import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;

public class ImageUtil
{
	public static void resize(String p_sourcePath, String p_targetPath, float p_quality, int p_maxWidth, int p_maxHeight) throws IOException
	{
		double ratio = 0;
		File sourceFile = new File(p_sourcePath);
		BufferedImage bufferedImage = ImageIO.read(sourceFile);

		if ((bufferedImage.getHeight() > p_maxHeight) || (bufferedImage.getWidth() > p_maxWidth))
		{
			Image tempImage = bufferedImage.getScaledInstance(p_maxWidth, p_maxHeight, BufferedImage.SCALE_SMOOTH);
			
			if (bufferedImage.getHeight() > bufferedImage.getWidth())
			{
				ratio = (new Integer(p_maxHeight)).doubleValue() / bufferedImage.getHeight();
			}
			else
			{
				ratio = (new Integer(p_maxWidth)).doubleValue() / bufferedImage.getWidth();
			}
			AffineTransformOp op = new AffineTransformOp(
					AffineTransform.getScaleInstance(ratio, ratio), null);
			tempImage = op.filter(bufferedImage, null);
			
			
			
			Iterator<ImageWriter> iter = ImageIO  
	                .getImageWritersByFormatName("jpeg");// 得到迭代器  
	        ImageWriter imageWriter = (ImageWriter) iter.next(); // 得到writer  
	        ImageWriteParam iwp = imageWriter.getDefaultWriteParam();  
	        iwp.setCompressionMode(ImageWriteParam.MODE_EXPLICIT); // 设置可否压缩  
	        iwp.setCompressionQuality(p_quality); // 设置压缩质量参数 
	        
	        
	        iwp.setProgressiveMode(ImageWriteParam.MODE_DISABLED);  
	        
	        ColorModel colorModel = ColorModel.getRGBdefault();  
	        // 指定压缩时使用的色彩模式  
	        iwp.setDestinationType(new javax.imageio.ImageTypeSpecifier(colorModel,  
	                colorModel.createCompatibleSampleModel(16, 16)));  
	  
	        // 开始打包图片，写入byte[]  
	        FileOutputStream fileOutputStream = new FileOutputStream(new File(p_targetPath));  
	        IIOImage iIamge = new IIOImage((BufferedImage)tempImage, null, null);  
	        try {  
	            // 此处因为ImageWriter中用来接收write信息的output要求必须是ImageOutput  
	            // 通过ImageIo中的静态方法，得到byteArrayOutputStream的ImageOutput  
	        	imageWriter.setOutput(ImageIO  
	                    .createImageOutputStream(fileOutputStream));  
	        	imageWriter.write(null, iIamge, iwp);  
	        } catch (IOException e) {  
	            System.out.println("write errro");  
	            e.printStackTrace();
	        } finally
	        {
	        	fileOutputStream.close();
	        }	        
		}
	}
	
	public static void resize(String p_sourcePath, float p_quality, int p_maxWidth, int p_maxHeight) throws IOException
	{
		resize(p_sourcePath, p_sourcePath, p_quality, p_maxWidth, p_maxHeight);
	}
}
