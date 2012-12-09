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
	public static void resize(String p_filePath, int p_maxWidth, int p_maxHeight) throws IOException
	{
		double ratio = 0;
		File file = new File(p_filePath);
		BufferedImage bufferedImage = ImageIO.read(file);
		Image tempImage = bufferedImage.getScaledInstance(p_maxWidth, p_maxHeight, BufferedImage.SCALE_SMOOTH);

		if ((bufferedImage.getHeight() > p_maxHeight) || (bufferedImage.getWidth() > p_maxWidth))
		{
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

			
			BufferedImage image = new BufferedImage(p_maxWidth,
					p_maxHeight, BufferedImage.TYPE_INT_RGB);
			Graphics2D g = image.createGraphics();
			g.setColor(Color.white);
			g.fillRect(0, 0, p_maxWidth, p_maxHeight);
			if (p_maxWidth == tempImage.getWidth(null))
			{
				g.drawImage(tempImage, 0,
						(p_maxHeight - tempImage.getHeight(null)) / 2,
						tempImage.getWidth(null), tempImage.getHeight(null),
						Color.white, null);
			}
			else
			{
				g.drawImage(tempImage, (p_maxWidth - tempImage.getWidth(null)) / 2,
						0, tempImage.getWidth(null), tempImage.getHeight(null),
						Color.white, null);
			}
			g.dispose();
			tempImage = image;
			
			ImageIO.write((BufferedImage)tempImage, "jpg", file);
		}
	}
}
