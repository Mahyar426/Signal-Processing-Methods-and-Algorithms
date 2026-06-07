<div align="center">

![header](https://readme-typing-svg.demolab.com?font=Fira+Code&size=26&pause=1000&color=F7C59F&center=true&vCenter=true&width=800&lines=📡+Signal+Processing%3A+Methods+%26+Algorithms;Kalman+filter.+Spectral+estimation.+ROC+curves.;Built+from+first+principles+in+MATLAB.)

```
███████╗██╗ ██████╗ ███╗   ██╗ █████╗ ██╗     ███████╗
██╔════╝██║██╔════╝ ████╗  ██║██╔══██╗██║     ██╔════╝
███████╗██║██║  ███╗██╔██╗ ██║███████║██║     ███████╗
╚════██║██║██║   ██║██║╚██╗██║██╔══██║██║     ╚════██║
███████║██║╚██████╔╝██║ ╚████║██║  ██║███████╗███████║
╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚══════╝
   stochastic · spectral · kalman · detection
```

[![MATLAB](https://img.shields.io/badge/MATLAB-R2023-blue?style=flat-square&logo=mathworks&logoColor=white)](https://www.mathworks.com/)
[![Topics](https://img.shields.io/badge/Topics-Stochastic_%7C_Spectral_%7C_Kalman_%7C_Detection-F7C59F?style=flat-square)](.)
[![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=flat-square)](.)

</div>

---

Seven labs covering the mathematical engine behind modern signal processing — stochastic processes, spectral estimation, Kalman filtering, and statistical detection. Built from scratch in MATLAB. No black-box toolbox calls for the core logic. Every algorithm is implemented, every result validated against theory.

The kind of work that shows up inside radar systems, sensor fusion stacks, audio engines, and anything that needs to extract meaning from noisy, real-world signals.

---

## Lab Breakdown

### 🔀 Lab 2 — Nonstationary Random Processes
Generated and visualized random processes with **time-varying mean and variance** — linear drift, step changes, and sinusoidal modulation. Explored how non-stationarity breaks the ergodicity assumptions you'd otherwise take for granted.

> *Stochastic modeling · Monte Carlo simulation · process visualization*

---

### 🌊 Lab 3 — Wiener Process & Langevin Dynamics
Implemented the **Wiener process** from first principles (cumulative sum of Gaussian increments) and validated its PDF against theoretical predictions at multiple time steps with 100k Monte Carlo runs. Then built the **Langevin / Ornstein-Uhlenbeck process** — a mean-reverting stochastic system — and studied how the damping coefficient `β` shapes its variance envelope over time.

> *Stochastic differential equations · Monte Carlo validation · statistical analysis*

---

### 📊 Lab 4 — WSS Process Estimation & Sliding Windows
Estimated the **mean, variance, and autocorrelation** of Wide Sense Stationary processes — with biased vs. unbiased estimator comparison validated against the Ornstein-Uhlenbeck theoretical autocorrelation. Built a **sliding window estimator** and tested it on linear, step-change, and sinusoidal non-stationary signals — analysing how window size trades off lag against smoothing.

> *Statistical estimation · autocorrelation (biased/unbiased) · adaptive window design*

---

### ⏱️ Lab 5 — Spectral Estimation on Real Signals
Two tracks:
1. **Atomic clock data** — sliding mean + sliding standard deviation on a real-world 2M-sample signal; ±2σ confidence bands for anomaly detection
2. **Spectral estimation** — periodogram from scratch via FFT, then **Welch method** (overlapping windows, Hamming weighting) with variance-reduction tradeoff compared

> *FFT-based spectral analysis · Welch PSD estimation · real data processing*

---

### 🎛️ Lab 6 — Spectrogram & Time-Frequency Analysis
Custom **short-time Fourier transform spectrogram** with configurable Hamming windows and FFT resolution. Tested on single sinusoids, multi-tone sequences, a **linear chirp** (a frequency-sweeping signal that only a time-frequency representation can reveal), and an unknown real-world signal identified from the spectrogram alone.

> *STFT · spectrogram design · time-frequency resolution tradeoffs · Hamming windowing*

---

### 🚢 Lab 7 — Kalman Filter for State Estimation
Simulated a **boat moving under wind force** — a 4-state discrete-time stochastic system (x/y position + velocity) with process noise `Q` and measurement noise `R`. Implemented the full **discrete-time Kalman filter** from scratch:

```
State extrapolation → Covariance extrapolation → Kalman gain → State & covariance update
```

Validated by comparing raw GPS-like noisy measurements against the filtered trajectory.

> *Kalman filter · state-space modeling · sensor fusion · covariance propagation*

---

### 🎯 Lab 8 — Detection Theory & ROC Curves
Derived and plotted **Receiver Operating Characteristic (ROC) curves** for a Neyman-Pearson detector under Gaussian noise, sweeping signal amplitude `A ∈ {0.1, 0.5, 1, 2, 4}`. Implemented the Q-function and its inverse analytically, then analysed `P_D` vs. `P_FA` for each case — theory confirmed by simulation.

> *Hypothesis testing · Neyman-Pearson criterion · ROC analysis · detection probability*

---

## Concepts Covered

| Domain | Topics |
|---|---|
| **Stochastic Processes** | Wiener process, Ornstein-Uhlenbeck, Langevin equation, non-stationarity |
| **Estimation** | Mean, variance, autocorrelation (biased/unbiased), sliding window |
| **Spectral Analysis** | Periodogram, Welch method, STFT, spectrograms, chirp signals |
| **State Estimation** | Kalman filter, state-space models, covariance propagation |
| **Detection Theory** | Neyman-Pearson, ROC curves, P_D vs. P_FA, Q-function |

---

## Tech Stack

```
Language    →  MATLAB
Core tools  →  fft, xcorr, pwelch, mvnrnd, randn
Custom impl →  Wiener.m, Langevin.m, sliding_mean.m,
               sliding_std.m, Spectrogram.m, Kalman_BoatWithWind.m
Real data   →  Atomic clock time series (~2M samples),
               Spectral estimation signal (1.8M samples),
               Unknown time-frequency signal
```

---

**Why it matters:** Kalman filters power GPS receivers, autonomous vehicles, and spacecraft navigation. Spectral estimation is at the core of audio compression, radar, and communications. Detection theory underlies everything from medical imaging to cybersecurity anomaly detection. This repo is the mathematical foundation — built by hand, understood deeply.

---

*M.Sc. Communications Engineering — Politecnico di Torino*
