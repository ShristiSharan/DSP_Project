# DSP_Project

## Multi-stage sleep classification using photoplethysmographic sensor:

This project aims to develop a novel approach for classifying sleep stages using photoplethysmographic (PPG) sensor data.
For the monitoring sleep stages, we used only PPG and sleep class labeled by sleep experts using manual inspection of PSG signal.


In this dataset, provided the PPG-extracted features from three domains and sleep class labels and stored them in three .xlsx files. 

File 1: SleepStagingCardioRespiratoryFeatures.xlsx
File 2: SleepStagingStatisticalFeatures.xlsx
File 3: SleepStagingArterialFeatures.xlsx
______________________________________________________________________________
______________________Description of each .xlsx file___________________________
File 1: SleepStagingCardioRespiratoryFeatures.xlsx: Have the surrogate cardio-respiratory features extracted from PPG
File 2: SleepStagingStatisticalFeatures.xlsx: Have the statistical features extracted from PPG
File 3: SleepStagingArterialFeatures.xlsx: Have the surrogate arterial blood pressure features extracted from PPG
______________________________________________________________________________
______________________Description of  each Sheet___________________________

## Description of sheet and number of sheet
 Each .xlsx file has 10 sheets. Each sheet represents the de-identified subject number. For example:
All  the subject's information such as name, age, and sex were de-identified as per the data collection ethics protocol.
Sheet 1: Subject 1
Sheet 2: Subject 2
Sheet 3: Subject 3
Sheet 4: Subject 4
Sheet 5: Subject 5
Sheet 6 Subject 6
Sheet 7: Subject 7
Sheet 8 Subject 8
Sheet 9: Subject 9
Sheet 10: Subject 10
_____________________________________________________________________________
______________________Description of column of each Sheet__________________________
For those three xlsx files, 
1st column is the subject ID, 
2nd column is the segment ID,
3rd column is Feature 1,
4th column is Feature 2,
5th column is Feature 3,
6th column is Feature 4,
.........
.........
N-1 th  column is the Feature N-3,
Nth or Last  column is the Class Label
# N: Total number of column
______________________________________________________________________________________
_______________Description of features/column header for "SleepStagingArterialFeatures.xlsx"_________

SubNo:Subject ID
SegNo: Segment ID
AVppAmp: Average peak to peak amplitude (mV)
SDppAmp	: standard deviation of peak to peak amplitude (mV)
SDSDppAmp: standard deviation of successive difference of peak to peak amplitude (mV)
RMSSDppAmp: Root mean square of successive difference of peak to peak amplitude (mV)
AVpw: Average pulse width (second)
SDpw: standard deviation of pulse width(second)
SDSDpw: standard deviation of successive difference of pulse width	(second)
RMSSDpw: Root mean square of successive difference of pulse width (second)
meanA1: average of the systolic area (mV-second)
stdA1: standard deviation of  systolic area (mV-second)
meanA2: average of the diastolic area (mV-second)
stdA2: standard deviation of diastolic area (mV-second)
meanArea: average of PPG area (mV-second)
stdArea: standard deviation of PPG area (mV-second)
meanIPAR: average of inflection point area ratio	
stdIPAR: standard deviation of inflection point area ratio,
meanT1: average of systolic time (second)
stdT1: standard deviation of systolic time (second)
meanT2: average of diastolic time (second)
stdT2: standard deviation of diastolic time	 (second)
meanIPTR: average of  inflection point time ratio	
stdIPTR: standard deviation of inflection point time ratio	
Class: Label of class

____________________________________________________________________________________________
_______________Description of features/column header for "SleepStagingCardioRespiratoryFeatures"_________

SubNo:Subject ID
SegNo: Segment ID
MeanAbsDev: mean absolute deviation of peak to peak interval (second)
MedianAbsDev: median absolute deviation of peak to peak interval (second)
InterquartileRange: Interquartile Range of peak to peak interval (second)
centralMoment: central Moment of peak to peak interval 
averageCurveLength: average Curve Length of peak to peak interval
averageEnergy: average Energy of peak to peak interval
averageTeagerEnergy : average Teager Energy of peak to peak interval
shapeFactor : shape Factorof peak to peak interval
meanValue : mean Value of peak to peak interval (second)
sdValue : standard deviation of peak to peak interval (second)
rmsValue : root mean squire of peak to peak interval (second)
tmean25 : 25 \% trimmed mean of peak to peak interval (second)
tmean50 : 50 \% trimmed mean of peak to peak interval (second)
geometricMean : geometric Mean of peak to peak interval (second)
harmonicMean : harmonic Mean of peak to peak interval (second)
maxValue : max Value of peak to peak interval (second)
minValue : min Value of peak to peak interval (second)
svdPPI : singular value decomposition of peak to peak interval
skewPPI : skewness of peak to peak interval
kurtPPI : kurtosis of peak to peak interval
PoincareSD1 : Poincare SD1 of peak to peak interval
PoincareSD2 : Poincare SD1 of peak to peak interval
ratioSD1SD2 : Ration of.Poincare SD1 and SD2 of peak to peak interval
CCM : Complex correlation measure of peak to peak interval
HjorthActivity : Hjorth Activity of peak to peak interval
HjorthMobility : Hjorth Mobility of peak to peak interval
HjorthComplexity : Hjorth Complexity of peak to peak interval
lam : Lyapunov exponent of peak to peak interval
HFD :Higuchi Fractal Dimension of peak to peak interval
KFD : Katz?s fractal dimensionof peak to peak interval
Class: Label of class

______________________________________________________________________________________
_______________Description of features/column header for "SleepStagingStatisticalFeatures.xlsx"_________

SubNo:Subject ID
SegNo: Segment ID
MeanAbsDev: mean absolute deviation of PPG signal (mV)
MedianAbsDev: median absolute deviation of PPG signal (mV)
InterquartileRange: Interquartile Range of PPG signal (mV)
centralMoment: central Moment of PPG signal
averageCurveLength: average Curve Length of PPG signal
averageEnergy: average Energy of PPG signal
averageTeagerEnergy : average Teager Energy of PPG signal
shapeFactor : shape Factorof PPG signal
meanValue : mean Value of PPG signal (mV)
sdValue : standard deviation of PPG signal (mV)
rmsValue : root mean squire of PPG signal (mV)
tmean25 : 25 \% trimmed mean of PPG signal (mV)
tmean50 : 50 \% trimmed mean of PPG signal (mV)
geometricMean : geometric Mean of PPG signal (mV)
harmonicMean : harmonic Mean of PPG signal (mV)
maxValue : max Value of PPG signal (mV)
minValue : min Value of PPG signal (mV)
svdPPG : singular value decomposition of PPG signal
skewPPG : skewness of PPG signal
kurtPPG : kurtosis of PPG signal
PoincareSD1 : Poincare SD1 of PPG signal
PoincareSD2 : Poincare SD1 of PPG signal
ratioSD1SD2 : Ration of.Poincare SD1 and SD2 of PPG signal
CCM : Complex correlation measure of PPG signal
HjorthActivity : Hjorth Activity of PPG signal
HjorthMobility : Hjorth Mobility of PPG signal
HjorthComplexity : Hjorth Complexity of PPG signal
lam : Lyapunov exponent of PPG signal
HFD :Higuchi Fractal Dimension of PPG signal
KFD : Katz?s fractal dimension of PPG signal
Class: Label of class
_____________________________________________________________________________
______________________Any Empty Value in the Data/Feature__________________________
All the empty values in the column of the feature will be considered null or n/a values. 

_____________________________________________________________________________
______________________Description Class Label____________________________________
6: Awake

1: NREM 1 or Sleep stage N1
2: NREM 2 or Sleep stage N2
3: NREM 3 or Sleep stage N3
4: NREM 3 or Sleep stage N4
5: REM 

* REM: Rapid Eye Movement
*NREM: Non-Rapid Eye Movement
___________________________________________________________
