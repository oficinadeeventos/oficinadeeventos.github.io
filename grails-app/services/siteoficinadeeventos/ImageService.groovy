package siteoficinadeeventos

import java.awt.geom.AffineTransform
import java.awt.image.AffineTransformOp
import java.awt.image.BufferedImage
import javax.imageio.ImageIO

class ImageService {


    byte[] thumbnail(String serverUrl, int size = 75) {
        int width
        int height

        def uri = new URI(URLDecoder.decode(serverUrl))
        def url = uri.toURL()
        InputStream is = url.openStream()

        BufferedImage image = ImageIO.read(is)
        if (image.width >= image.height) {
            height = size
            width = image.width
        } else {
            width = size
            height = image.height
        }
        def parsedWidth = parseValue(width, image.width, true, "100%");
        def parsedHeight = parseValue(height, image.height, true, parsedWidth);

        def imageRatio = image.width / image.height;
        def fitRatio = parsedWidth / parsedHeight;

        if (fitRatio < imageRatio) {
            parsedHeight = image.height * (parsedWidth / image.width);
        } else {
            parsedWidth = image.width * (parsedHeight / image.height);
        }

        def img = parseAndScale(image, parsedWidth + "px", parsedHeight + "px")
        int x = (((img.width - size) / 2) > 0) ? ((img.width - size) / 2) : 0
        int y = (((img.height - size) / 2) > 0) ? ((img.height - size) / 2) : 0
        img = img.getSubimage(x, y, size, size)
        ByteArrayOutputStream baos = new ByteArrayOutputStream()
        ImageIO.write(img, "jpeg", baos)
        baos.flush()
        return baos.toByteArray()
    }

    BufferedImage parseAndScale(image, horizontal, vertical) {
        def parsedHorizontal = parseValue(horizontal, image.width, false, "100%");
        def parsedVertical = parseValue(vertical, image.height, false, parsedHorizontal);
        return scale(image, parsedHorizontal, parsedVertical);
    }

    BufferedImage scale(image, horizontal, vertical) {
        def transform = new AffineTransform();
        transform.scale(horizontal, vertical);
        def op = new AffineTransformOp(transform, AffineTransformOp.TYPE_NEAREST_NEIGHBOR);
        return op.filter(image, null);
    }

    Number parseValue(value, size, absolute, defaultValue = "0") {
        def pattern = "(-?[0-9]+\\.?[0-9]*)(.*)";
        def matcher = value =~ pattern;
        if (!matcher.find()) {
            matcher = defaultValue =~ pattern;
            matcher.find();
        }

        def decimalValue = Double.parseDouble(matcher.group(1));
        def type = matcher.group(2);

        if (absolute) { // pixels
            switch (type) {
                case "%":
                    return (int) size * (decimalValue / 100);
                case "px":
                default:
                    return (int) decimalValue;
            }
        }
        else { // scale
            switch (type) {
                case "px":
                    return decimalValue / size;
                case "%":
                    return decimalValue / 100;
                default:
                    return decimalValue;
            }
        }
    }
}
