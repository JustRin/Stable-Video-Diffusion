# Stable-Video-Diffusion
Stable Video Diffusion auto install with web UI

### Automatic Installation on Windows
1. Install [Python 3.10.11](https://www.python.org/downloads/release/python-31011/) (Newer version of Python does not support torch), checking "Add Python to PATH".
2. Download the stable-video-diffusion repository, for example by running `git clone [https://github.com/JustRin/Stable-Video-Diffusion.git](https://github.com/JustRin/Stable-Video-Diffusion.git)`.
3. Run `webui.bat` from Windows Explorer as normal, non-administrator, user.

### Setup Model for Stable Video Diffusion
1. Dowload [svd](https://huggingface.co/stabilityai/stable-video-diffusion-img2vid/resolve/main/svd.safetensors?download=true) model or [svd_xt](https://huggingface.co/stabilityai/stable-video-diffusion-img2vid-xt/resolve/main/svd_xt.safetensors?download=true) model.
2. Сreate `checkpoints/` folder in the root directory.
3. Save `scd model` into `checkpoints/` folder.

# Exemple Generation
Image created using Stable Diffusion img2img -> Then sent to stable video diffusion to generate video.

![tile](assets/gif1.gif)
![tile](assets/gif2.gif)
