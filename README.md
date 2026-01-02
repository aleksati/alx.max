1. [alx.ksync](#alxksync) - Synchronize an abritrary number of oscillators using the Kuramoto model (With Max MC support)
2. [alx.gl.spectral](#alxglspectral) - Print real-time motiongrams (spectral mean images) using openGL jitter. Both CPU and GPU versions included.
3. [alx.multiplot.js](#alxmultiplotjs) - A custom plotting tool for visualizing lists in Max.
4. [alx.scaleui](#alxscaleui) - Make the patching window automatically adjust Zoom according to the window size. Includes different approaches. 
5. [alx.multislider](#alxmultislider) - A modified and customizable version of Max's multislider object.

# alx.ksync

**Type:** Abstraction

A multi-channel Max-native DSP abstraction for synchronizing n-number of oscillators (sine waves) using the Kuramoto model. The model describes the synchronization behavior of a system of interacting oscillators.

Specify the number of oscillators as the object argument and define their states (on/off) and frequencies as mc.sig~ inputs. Toggle sine waves at arbitrary times and commence the synchronization process by providing a k-value (coupling constant) greater than 0. The higher this k-value, the quicker the synchronization process occurs.

<p align="left">
 <img src="img/ksync.png" width=600>
</p>

### Related articles

- [Synchronization of Globally Coupled Nonlinear Oscillators:the Rich Behavior of the Kuramoto Model](http://go.owu.edu/~physics/StudentResearch/2005/BryanDaniels/kuramoto_paper.pdf)

### Contributors

- [Balint Laczko](https://github.com/balintlaczko)

# alx.gl.spectral

Generate/print real-time motiongrams and videograms (spectral mean images) with openGL jitter. These images are temporal representations of motion in videos over time.

Any video source is fine. You can add different noise reduction filters, adjust the brightness, and configure the printing rate. The abstraction uses (and starts) the audio thread for precision printing and timing. You can also specify if you want to conduct the main vector mean calculations on the GPU (via [jit.gl.pix]) or CPU (via [xray.jit.mean]). The CPU version is the default and what's generally recommended (this is also documented by [the Cyling74 website](https://cycling74.com/tutorials/best-practices-in-jitter-part-1)).

Also, use high performance power settings on you machine for best results.

<p align="left">
 <img src="img/spectral.png" width=600>
</p>

<!-- 440 -->

### Related articles

- Jensenius, Alexander Refsum (2005). [Developing Tools for Studying Musical Gestures within the Max/MSP/Jitter Environment](https://www.duo.uio.no/handle/10852/26907). Proceedings of the International Computer Music Conference, p. 282-285.

### Related applications

- [VideoAnalysis](https://github.com/fourMs/VideoAnalysis)
- [AudioVideoAnalysis](https://github.com/fourMs/AudioVideoAnalysis)

### Dependencies

XRAY external package

# alx.multiplot

**Type:** jsui file

An easy-to-use dynamic plotting tool for visualizing lists of numbers in Max. The object is an upgraded and enhanced version of Timothy Place's `plot.js` built with the [jsui] Max object.

To use it, create a [jsui] object in Max and load it with the `alx.multiplot.js` file.

The interface can plot an arbitrary number of lists and will render the content of each list (the number values) on the Y-axis and the list indices on the X-axis. You can also design the plotting interface in many cool ways, assign a custom color to your lists, add axis titles and labels, and write the data directly to a Max dictionary.

<p align="left">
 <img src="img/multiplot.png" width=600>
</p>

### Related applications

- [Hardanger Fiddle Performance Analysis](https://github.com/aleksati/hardanger-fiddle-performance-analysis)

# alx.scaleui

**Type:** Abstraction

Make the Max patching window automatically adjust Zoom according to the window size. Perfect for standalone Max application builds where you want a dynamic and resizable user interface.

You can choose from two scaling philosophies; "continuous" or "ondemand". The continuous version reads and updates/scales the window size continuously (as a sub-process) when initiated by a "start" message. You can also specify the update rate in ms. The "ondemand" version only updates/scales the window size when it receives bangs.

<p align="left">
 <img src="img/scaleui.png" width=600>
</p>

# alx.multislider.js

**Type:** jsui file

```diff
! Under development...!
```

A modified and customizable version of Max's [multislider] object built with the [jsui] object.
