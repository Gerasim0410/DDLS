import numpy as np
import cv2

img1 = cv2.imread("output/output_image.png")
img2 = cv2.imread("output/test_output_image.png")

# Computing the pixel-wise difference between the two images
diff = cv2.absdiff(img1, img2)

# Computing image similarity
sim = np.sum(diff == 0) / diff.size * 100
print("\tImage similarity: ", sim, "%")

if sim > 90:
    print("\tTest passed")
else:
    print("\tTest failed")