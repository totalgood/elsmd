---
title: Introduction to Digital Health Data Science
author: Hobson Lane
date: July 22, 2019
sansfont: Fira Sans
slide-numbers: true


mainfont: Hoefler Text
biblatex: true
biblatex-chicago: true
biblatexoptions: [notes, noibid]
bibliography: ../sources/introduction-dhds-sources.bib
---

# Digital Health Data Science

## What is Data Science?

- Doing science on data
- Testing hypotheses using data
- Making predictions using data
- Training predictive models using data
- Using machine learning to model the world

::: notes

Data science is about applying the scientific method to data.
The scientific method is about testing hypotheses.
These hypothese are about new situations, new data that we haven't seen yet.
So Data Science allows us to make predictions about new data based on data that we have.
This isn't necessarily about predictions in the future.
Most of the time it means simply predicting one numerical fact, called the target, based on a bunch of other numerical facts, called features, predictors, or indicators.

:::

# What's different?

- more data
- new algorithms
- faster computers

::: notes

Moore's law and the Internet have produced a virtuous cycle of exponential growth in data, computational power, and medical technology.

:::

# Virtuous cycle

diagram of arrows of computer tech feeding back into medical tech and spinoff technologies radiating out from that virtuous cycle

## technology <-> science

- neuroscience -> deep learning -> lstm, attention
- gene sequencing -> encoder/decoder -> NLP -> human genome -> 23andme (genetics)
- 2D gene sequencing -> topology, deep learning -> 3D gene sequencing
- MRI -> optical cortex neuroscience -> computer vision architectures -> FMRI
- psychometrics -> goal-based reasoning
- psychology/philosophy -> fuzzy logic -> bayesean networks -> causal diagrams
- BMI -> steven hawking -> physics and math -> better BMI
- wikipedia, pub med -> more educated patients and doctors -> self-help medicine
- embedded processes -> insulin pumps and pace makers -> more data -> treatments for computer scientists

::: notes

Faster and faster computers have enabled computer scientists, physicicists, chemists, and biologists to test and experiment with more and more efficient models and algorithms for biological systems.
And those algorithms have helped scientists generate and record more and more data about biology.
And surprisingly, that data about human biology has spawned new biomimicing algorithms that are better than engineered algorithms for solving many computer science problems.
For example, as we learn more and more about the human brain and neurobiology we are able to apply more and more of that architecture insight into thinking machines, like artificial neural networks.
It's that one advancement, often called deep learning that has
and advance medical technology which have in turned generated more data and life-saving technologies to motivate additional investment and growth in technology.

:::

# Gene Sequencing

::: notes

The sequencing of the human genome, containing 3B base would not have been possible if it weren't for fast comptures with vast storage.
23andme, fitbit spawned a citizen science and self-service medicine trend (quantified self)

:::

# What is a data scientist

- A statistician that can program
- A computer programmer than understand statistics
- A statstician that lives in Silicon Valley

::: notes

So you want to be a data scientist so you can help save lives?


:::

# Healthcare Data Science

- Individual Clinical Healthcare
- Occupational Health and Safety
- Population Health

::: notes

Clin health -- individual patient diagnosis and treatment
Occ health -- monitoring and design of the workplace for worker health and safety
Pop health or Epi -- Epidemiology and spatio-temporal data modeling

:::

# Spatiotemporal data

Epidemology data often has

- a place (location in space)
- time (when the data was observed)

This adds 3 dimensions (latitude, longitude, time) to data that is already probably high dimensional.
For most predictive models these discretized locations and and times often become additional dimensions.
Predictive models must deal with extremely high dimensional features.

note{

Epidemiology and populaiton health data is usually recorded over time and the geographic information is critical to the model.
A GIS system is often used to store and visualize spatiotemporal data.
Layers are added/modified over time to show the evolving geography of a phenomenon.
The end result is a "spy satellite" movie.
The past history of all the events nearby are all relevant feature for the prediction of what is about to happen at a particular location at a particular time.

:::

# Epidemiology

Simulations are a special kind of data science modeling, typically used to forecast spatiotemporal data.
A python exercise in simulation of an epidemic.

MIT Intro to Computational Thinking [Problem Set 4: Simulating the Spread of Disease and Bacteria Population (ZIP)](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-0002-introduction-to-computational-thinking-and-data-science-fall-2016/assignments/PS4.zip)

# Spurious Correlation

![Cheesy Bedsheet Tanglings](../media/spurious-correlation-tyler-vygen-bedsheet-tangling-deaths.svg)
[tyler vigen](http://tylervigen.com/spurious-correlations)

# Confounding

[NIH guidelines](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4017459/)

::: notes
The debate around smoking wasn't entirely the fault of big tobacco lobbying groups. Many doctors and statisticians believed their own statistical analyses that show
At the very end of this long discussion of all the techniques that have been used in the past, and how they are all flawed in one way or another, it finally mentions at the very end that a multivariate model designed with domain knowledge and a causal model are the only way to be sure.
:::

# Causal Revolution

::: notes
Sometimes prediction is not enough. To cure diseases, to save lives, you need a causal model.
:::


# DEMO: Slide overlay tricks

\only<1,3>{This text appears on the first and third versions of the slide, but not the second.}

This uses beamer's highlighting command to \alert<2>{draw attention here}, but only on the second slide.

\note<1>{

Notes can also have overlay specs. First slide version note.

}

\note<2>{

Second.

}

\note<3>{

And third. Use \LaTeX\ macros in notes, like \emph{emphasis}.

}

# TeX-LOGO

\begin{textblock}{4}(0,1)
Grid demo UL
\end{textblock}

\begin{textblock}{4}(7,1)
Grid demo UR
\end{textblock}

\begin{textblock}{4}(0,5)
Grid demo LL
\end{textblock}

\begin{textblock}{4}(7,5)
\only<2>{Grid demo LR}
\end{textblock}

\note<2>{

To get overlay effects with materials placed using \texttt{textpos}, you have to specify the overlay within the \texttt{textblock} environment.

}


