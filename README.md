"Real time" with pre-processing astronomical data-driven composition system.
Generates music scores from the exploration of the MILES stellar spectra library.

![Screen Shot 2024-10-05 at 13 19 53](https://github.com/user-attachments/assets/17fcf5a5-2659-4565-b8f5-ecdc79bb9408)

MILES service is developed by the Spanish Virtual Observatory in the framework of the IAU Comission G5 Working Group : Spectral Stellar Libraries.

CONTENTS

- Jupyter notebook INT-Full_System.ipynb

- Display.png: A sample of the spectra.

- Graphical_Display.csd: Cabbage audio code to view spectra in real time.

- pre-calculated folder: numpy arrays containing the chords and durations extracted from the MAESTRO dataset.

LICENSE
README
requirements.txt

1 - Download all the content of this repository into the same folder

2 - Install all the dependencies included in the requirements.txt file

3 - Follow the steps detailed in the notebook to generate the stellar score.

IMPORTANT NOTE: The system generates a midi file with the final score. Additionally, it uses four MIDI ports to communicate in "real time" with any DAW installed in the computer, providing a live reproduction of the piece and the image of the spectra (via OSC). The Graphical_Display.csd file allows the visualization using Cabbage Audio software.

CABBAGE INSTALLATION

1- Download and install CSound 6.15 from: https://github.com/csound/csound/releases/tag/6.15.0

2- Download Cabbage from (current version 2.9.0): https://cabbageaudio.com/download/

3- Install only Cabbage from the downloaded Cabbage package.

Warning: Current Cabbage version 2.9.0 allows to optionally install the latest version of CSound. This default option should be unchecked not to overwrite CSound 6.15. Latests versions of CSound require additional plugins to work with the image CSound opcodes, so they should not be used.


Enjoy the piece!

Developer system info: Python 3.8.5 - Cabbage 2.5.0 - i7 macOS 10.15.7 - 32 GB - 1536 MB

