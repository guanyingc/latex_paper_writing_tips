# CVPR 2022 Template

This is the LaTeX template for IEEE/CVF CVPR 2022 submissions, rebuttals, and final versions.

The last version of the CVPR/ICCV LaTeX template had been developed by Paolo.Ienne@di.epfl.ch and awf@acm.org about 15 years ago. That version suffered from several issues:

* Authors needed several individual files: cvpr.sty, cvpr_eso.sty, eso-pic.sty.
* For CVPR/ICCV rebuttals, another version of cvpr.sty was required.
* Several warnings arose due to deprecated options.

To address this, a new package was subsequently developed by Ming-Ming Cheng (cmm_spam@nankai.edu.cn), which is intended to be used as a single style file that allows to build review, rebuttal, and final versions with just one package.

It is has been further modified by Stefan Roth (stefan.roth@NOSPAMtu-darmstadt.de) for CVPR 2022.

To apply it, simply use one of the following commands:

```Tex
\documentclass[10pt,twocolumn,letterpaper]{article}

\usepackage[review]{cvpr}      % To produce the REVIEW version
%\usepackage[rebuttal]{cvpr}    % To produce a REBUTTAL
%\usepackage{cvpr}              % To produce the CAMERA-READY version

\def\cvprPaperID{*****} % *** Enter the CVPR Paper ID here
\def\confName{CVPR}
\def\confYear{2022}

```


# Acknowledgements
This template is modified from the template by Ming-Ming Cheng from Nankai University (cmm_spam@nankai.edu.cn, see also https://github.com/MCG-NKU/CVPR_Template). That version was again modified from the the old CVPR/ICCV template files contributed by Paolo.Ienne@di.epfl.ch and awf@acm.org.
