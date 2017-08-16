# An Adaptive Peer-Sampling Protocol for Building Networks of Browsers

*Keywords: Web browsers, random peer-sampling, self-adjusting, logarithmic view size*

*Authors: Brice Nédelec, Julian Tanke, Davide Frey, Pascal Molli, Achour Mostéfaoui*

Peer-sampling protocols constitute a fundamental mechanism for a number of
large-scale distributed applications. The recent introduction of WebRTC
facilitated the deployment of decentralized applications over a network of
browsers. However, deploying existing peer-sampling protocols on top of WebRTC
raises issues about their lack of adaptiveness to sudden bursts of popularity
over a network that does not manage addressing or routing. Spray is a novel
random peer-sampling protocol that dynamically, quickly, and efficiently
self-adapts to the network size. Our experiments show the flexibility of Spray
and highlight its efficiency improvements at the cost of small overhead. We
embedded Spray in a real-time decentralized editor running in browsers and ran
experiments involving up to 600 communicating web browsers. The results
demonstrate that Spray significantly reduces the network traffic according to
the number of participants and saves bandwidth.

## BibTeX

```
@Article{nedelec2017adaptive,
  author="N{\'e}delec, Brice and Tanke, Julian and Frey, Davide and Molli, Pascal and Most{\'e}faoui, Achour",
  title="An adaptive peer-sampling protocol for building networks of browsers",
  journal="World Wide Web",
  year="2017",
  month="Aug",
  day="01",
  issn="1573-1413",
  doi="10.1007/s11280-017-0478-5",
  url="https://doi.org/10.1007/s11280-017-0478-5"
}
```

## Acknowledgments

This work was partially funded by the French ANR project SocioPlug
([ANR-13-INFR-0003](http://www.agence-nationale-recherche.fr/?Projet=ANR-13-INFR-0003)),
and by the DeSceNt project granted by the Labex CominLabs excellence laboratory
([ANR-10-LABX-07-01](http://www.descent.cominlabs.ueb.eu/fr)). Experiments
presented in this paper were carried out using the [Grid’5000
testbed](https://www.grid5000.fr), supported by a scientific interest group
hosted by Inria and including CNRS, RENATER and several Universities as well as
other organizations.


