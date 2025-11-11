import qrcode
import qrcode.image.svg
from qrcode.image.styledpil import StyledPilImage
from qrcode.image.styles.moduledrawers.pil import RoundedModuleDrawer
from qrcode.image.styles.colormasks import SolidFillColorMask
from matplotlib.colors import to_rgba_array


# tuple(int(255*i) for i in to_rgb("#2e3440"))
def create_qr_code(url: str) -> StyledPilImage:
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_M,
        box_size=20,
        border=2,
    )
    qr.add_data(url)
    qr.make(fit=True)

    img = qr.make_image(
        image_factory=StyledPilImage,
        module_drawer=RoundedModuleDrawer(),
        color_mask=SolidFillColorMask(
            back_color=(46, 52, 64),  # (24, 29, 55),
            front_color=(236, 239, 244),
        ),
    )
    return img


if __name__ == "__main__":
    img_arxiv = create_qr_code("https://doi.org/10.1038/s41598-024-82006-5")
    img_arxiv.save("../assets/qr_code_paper.png")

    img_slides = create_qr_code(
        "https://pintergreg.github.io/geolocating_cities_using_human_activity_traces"
    )
    img_slides.save("../assets/qr_code_slides.png")
