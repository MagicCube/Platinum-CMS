package platinum.common.util;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class ImageUtil
{
	public static void resize(String p_sourcePath, String p_targetPath, int p_maxWidth, int p_maxHeight) throws IOException
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
			ImageIO.write((BufferedImage)tempImage, "jpg", new File(p_targetPath));
		}
	}
	
	public static void resize(String p_sourcePath, int p_maxWidth, int p_maxHeight) throws IOException
	{
		resize(p_sourcePath, p_sourcePath, p_maxWidth, p_maxHeight);
	}
}
