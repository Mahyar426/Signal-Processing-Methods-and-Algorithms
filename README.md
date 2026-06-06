# 📡 Signal Processing: Methods & Algorithms

> **MATLAB implementations of stochastic processes, spectral estimation, Kalman filtering, and statistical detection — from first principles to real-world data.**

[![MATLAB](https://img.shields.io/badge/MATLAB-R2023-blue?style=flat-square&logo=matrix&logoColor=white)](https://www.mathworks.com/)
[![Topics](https://img.shields.io/badge/Topics-Stochastic%20|%20Spectral%20|%20Kalman%20|%20Detection-orange?style=flat-square)](.)
[![Institution](https://img.shields.io/badge/MSc%20--%20Communications%20Engineering-darkred?style=flat-square)](.)
[![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=flat-square)](.)

---

## What This Is

This repo is a hands-on deep-dive into the mathematical engine behind modern signal processing. Seven labs, built from scratch in MATLAB — no black-box toolbox calls, no hand-holding. Every algorithm is implemented, every result is validated against theory.

The kind of work that shows up inside radar systems, sensor fusion stacks, audio engines, and anything that needs to extract meaning from noisy, real-world signals.

---

## Lab Breakdown

### 🔀 Lab 2 — Nonstationary Random Processes
**Building randomness with structure.**

Generated and visualized random processes with **time-varying mean and variance** — linear drift, step changes, and sinusoidal modulation. Explored how non-stationarity breaks the ergodicity assumptions you'd otherwise take for granted.

> *Skills: stochastic modeling, Monte Carlo simulation, process visualization*

---

### 🌊 Lab 3 — Wiener Process & Langevin Dynamics
**Brownian motion and its damped cousin.**

Implemented the **Wiener process** from first principles (cumulative sum of Gaussian increments) and validated its PDF against theoretical predictions at multiple time steps with 100k Monte Carlo runs. Then built the **Langevin / Ornstein-Uhlenbeck process** — a mean-reverting stochastic system — and studied how the damping coefficient `β` shapes its variance envelope over time.

> *Skills: stochastic differential equations, Monte Carlo validation, statistical analysis*

---

### 📊 Lab 4 — WSS Process Estimation & Sliding Windows
**Measuring what you can't see directly.**

Estimated the **mean, variance, and autocorrelation** of Wide Sense Stationary processes — with biased vs. unbiased estimator comparison validated against the Ornstein-Uhlenbeck theoretical autocorrelation. Then built a **sliding window estimator** and tested it on linear, step-change, and sinusoidal non-stationary signals, analyzing how window size trades off between lag and smoothing.

> *Skills: statistical estimation, autocorrelation (biased vs. unbiased), adaptive window design*

---

### ⏱️ Lab 5 — Spectral Estimation on Real Signals
**From an atomic clock to the frequency domain.**

Two tracks:

1. **Atomic clock data** — applied sliding mean + sliding standard deviation to a real-world 2M-sample signal, built ±2σ confidence bands to detect anomalies.
2. **Spectral estimation** — implemented the **periodogram** from scratch via FFT, then switched to the **Welch method** (overlapping windows, Hamming weighting) and compared the variance-reduction tradeoff.

> *Skills: FFT-based spectral analysis, Welch PSD estimation, real data processing*

---

### 🎛️ Lab 6 — Spectrogram & Time-Frequency Analysis
**Watching frequency evolve over time.**

Built a custom **short-time Fourier transform spectrogram** with configurable Hamming windows and FFT resolution. Tested on:
- Single sinusoid (sanity check)
- Sequential multi-tone signal (frequency-resolution vs. time-resolution tradeoff exploration)
- **Linear chirp** — a frequency-sweeping signal that only a time-frequency representation can properly reveal
- Unknown real-world signal — identify structure from the spectrogram alone

> *Skills: STFT, spectrogram design, time-frequency resolution tradeoffs, Hamming windowing*

---

### 🚢 Lab 7 — Kalman Filter for State Estimation
**Fusing noisy measurements into clean trajectories.**

Simulated a **boat moving under wind force** — a 4-state discrete-time stochastic system (x/y position + velocity) with process noise covariance `Q` and measurement noise covariance `R`. Implemented the full **discrete-time Kalman filter** from scratch:

- State extrapolation  
- Covariance extrapolation  
- Kalman gain computation  
- State and covariance update

Validated by comparing raw GPS-like noisy measurements against the filtered trajectory.

> *Skills: Kalman filter, state-space modeling, sensor fusion, covariance propagation*

---

### 🎯 Lab 8 — Detection Theory & ROC Curves
**When is a signal actually there?**

Derived and plotted **Receiver Operating Characteristic (ROC) curves** for a Neyman-Pearson detector under Gaussian noise, sweeping signal amplitude `A ∈ {0.1, 0.5, 1, 2, 4}`. Implemented the Q-function and its inverse analytically, then analyzed the probability of detection `P_D` vs. probability of false alarm `P_FA` for each case — theory confirmed by simulation.

> *Skills: hypothesis testing, Neyman-Pearson criterion, ROC analysis, detection probability*

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

## Why It Matters

These aren't toy algorithms. Kalman filters power GPS receivers, autonomous vehicles, and spacecraft navigation. Spectral estimation is at the core of audio compression, radar, and communications. Detection theory underlies everything from medical imaging to cybersecurity anomaly detection.

This repo is the mathematical foundation — built by hand, understood deeply.

---

*MSc in Communications Engineering — Politecnico di Torino*
