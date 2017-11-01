---
title: "Codebook fot the Getting and Cleaning Data Course Assignment"
author: "Esteban Rodriguez"
date: "31 October 2017"
output:
  html_document: default
  pdf_document: default
---

#Codebook for the Getting and Cleaning Data Course Project

This file contains the Codebook that should be used as a dictionary for the final dataset submitted.

##Summary
The output file will have 68 columns and 180 rows, where each column has a different variable stored. It has no NA o NaN inputs. The first two columns have the following description:

1. "Subject"
    + Subject number on which the measurement was taken
        + Numeric
        + 1:30
        + Units: No units
	
2. "Activity"
    + Activity class on which the measurement was taken for each subject
        + Character
        + STANDING: Standing still
        + SITTING: Sitting on a chair
        + LAYING: Laying down on a table
        + WALKING: Walking over a flat surface
        + WALKING-DOWN: Walking down a fly of stairs
        + WALKING-UP: Walking up a fly of stairs
            + Units: No units
            
The last 66 columns contain the arithmetic average for each of the different measurements taken on the 30 test subjects, such measurements can be summarized as follows:

![Variable summary.](UCI HAR Dataset/variables.png)

##Detailed Description
1. "Subject"
    + Subject number on which the measurement was taken
        + Numeric
        + 1:30
        + Units: No units
	
2. "Activity"
    + Activity class on which the measurement was taken for each subject
        + Character
        + STANDING: Standing still
        + SITTING: Sitting on a chair
        + LAYING: Laying down on a table
        + WALKING: Walking over a flat surface
        + WALKING-DOWN: Walking down a fly of stairs
        + WALKING-UP: Walking up a fly of stairs
            + Units: No units

3. "Mean of the Mean of timely body measure in accelerator in the X axis"
    + Average of the mean of the acceleration taken of the body by the accelerometer in the X direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

4. "Mean of the Mean of timely body measure in accelerator in the Y axis"
    + Average of the mean of the acceleration taken of the body by the accelerometer in the Y direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 


5. "Mean of the Mean of timely body measure in accelerator in the Z axis"
    + Average of the mean of the acceleration taken of the body by the accelerometer in the Z direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 


6. "Mean of the Standard deviation of timely body measure in accelerator in the X axis"
    + Average of the standard deviation of the acceleration taken of the body by the accelerometer in the X direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

7. "Mean of the Standard deviation of timely body measure in accelerator in the Y axis"
    + Average of the standard deviation of the acceleration taken of the body by the accelerometer in the Y direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

8. "Mean of the Standard deviation of timely body measure in accelerator in the Z axis"
    + Average of the standard deviation of the acceleration taken of the body by the accelerometer in the Z direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

9. "Mean of the Mean of timely gravity measure in accelerator in the X axis"
    + Average of the mean of the acceleration taken of gravity by the accelerometer in the X direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

10. "Mean of the Mean of timely gravity measure in accelerator in the Y axis"
    + Average of the mean of the acceleration taken of gravity by the accelerometer in the Y direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

11. "Mean of the Mean of timely gravity measure in accelerator in the Z axis"
    + Average of the mean of the acceleration taken of gravity by the accelerometer in the Z direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

12. "Mean of the Standard deviation of timely gravity measure in accelerator in the X axis"
    + Average of the standard deviation of the acceleration taken of gravity by the accelerometer in the X direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

13. "Mean of the Standard deviation of timely gravity measure in accelerator in the Y axis"
    + Average of the standard deviation of the acceleration taken of gravity by the accelerometer in the Y direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

14. "Mean of the Standard deviation of timely gravity measure in accelerator in the Z axis"
    + Average of the standard deviation of the acceleration taken of gravity by the accelerometer in the Z direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units -g- 

15. "Mean of the Mean of timely body measure in accelerator -jerk signals- in the X axis"
    + Average of the mean of the derivative of the acceleration taken of the body by the accelerometer in the X direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

16. "Mean of the Mean of timely body measure in accelerator -jerk signals- in the Y axis"
    + Average of the mean of the derivative of the acceleration taken of the body by the accelerometer in the Y direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

17. "Mean of the Mean of timely body measure in accelerator -jerk signals- in the Z axis"
    + Average of the mean of the derivative of the acceleration taken of the body by the accelerometer in the Z direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

18. "Mean of the Standard deviation of timely body measure in accelerator -jerk signals- in the X axis"
    + Average of the standard deviation of the derivative of the acceleration taken of the body by the accelerometer in the X direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

19. "Mean of the Standard deviation of timely body measure in accelerator -jerk signals- in the Y axis"
    + Average of the standard deviation of the derivative of the acceleration taken of the body by the accelerometer in the Y direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

20. "Mean of the Standard deviation of timely body measure in accelerator -jerk signals- in the Z axis"
    + Average of the standard deviation of the derivative of the acceleration taken of the body by the accelerometer in the Z direction on a regular time domain.
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

21. "Mean of the Mean of timely body measure in gyroscope in the X axis"
    + Average of the mean of the angular velocity taken of the body by the gyroscope in the X direction on a regular time domain.
        + Numerical
        + Units: radians/second 

22. "Mean of the Mean of timely body measure in gyroscope in the Y axis"
    + Average of the mean of the angular velocity taken of the body by the gyroscope in the Y direction on a regular time domain.
        + Numerical
        + Units: radians/second 

23. "Mean of the Mean of timely body measure in gyroscope in the Z axis"
    + Average of the mean of the angular velocity taken of the body by the gyroscope in the Z direction on a regular time domain.
        + Numerical
        + Units: radians/second 

24. "Mean of the Standard deviation of timely body measure in gyroscope in the X axis"
    + Average of the standard deviation of the angular velocity taken of the body by the gyroscope in the X direction on a regular time domain.
        + Numerical
        + nits: radians/second 

25. "Mean of the Standard deviation of timely body measure in gyroscope in the Y axis"
    + Average of the standard deviation of the angular velocity taken of the body by the gyroscope in the Y direction on a regular time domain.
        + Numerical
        + Units: radians/second 

26. "Mean of the Standard deviation of timely body measure in gyroscope in the Z axis"
    + Average of the standard deviation of the angular velocity taken of the body by the gyroscope in the Z direction on a regular time domain.
        + Numerical
        + Units: radians/second 

27. "Mean of the Mean of timely body measure in gyroscope -jerk signals- in the X axis"
    + Average of the mean of the derivative of the angular velocity taken of the body by the gyroscope in the X direction on a regular time domain.
        + Numerical
        + Units: radians/second^2^ 
	
28. "Mean of the Mean of timely body measure in gyroscope -jerk signals- in the Y axis"
    + Average of the mean of the derivative of the angular velocity taken of the body by the gyroscope in the Y direction on a regular time domain.
        + Numerical
        + Units: radians/second^2^

29. "Mean of the Mean of timely body measure in gyroscope -jerk signals- in the Z axis"
    + Average of the mean of the derivative of the angular velocity taken of the body by the gyroscope in the Z direction on a regular time domain.
        + Numerical
        + Units: radians/second^2^ 

30. "Mean of the Standard deviation of timely body measure in gyroscope -jerk signals- in the X axis"
    + Average of the standard deviation of the derivative of the angular velocity taken of the body by the gyroscope in the X direction on a regular time domain.
        + Numerical
        + Units: radians/second^2^ 

31. "Mean of the Standard deviation of timely body measure in gyroscope -jerk signals- in the Y axis"
    + Average of the standard deviation of the derivative of the angular velocity taken of the body by the gyroscope in the Y direction on a regular time domain.
        + Numerical
        + Units: radians/second^2^

32. "Mean of the Standard deviation of timely body measure in gyroscope -jerk signals- in the Z axis"
    + Average of the standard deviation of the derivative of the angular velocity taken of the body by the gyroscope in the Z direction on a regular time domain.
        + Numerical
        + Units: radians/second^2^

33. "Mean of the Mean of timely body measure in accelerator (magnitude) "
    + Average of the mean of the magnitude of the acceleration taken of the body by the accelerometer using Euclidean metrics.
        + Numerical
        + Units: Normalized gravity units -g- 

34. "Mean of the Standard deviation of timely body measure in accelerator (magnitude) "
    + Average of the standard deviation of the magnitude of the acceleration taken of the body by the accelerometer using Euclidean metrics.
        + Numerical
        + Units: Normalized gravity units -g- 

35. "Mean of the Mean of timely gravity measure in accelerator (magnitude) "
    + Average of the mean of the magnitude of the acceleration taken of gravity by the accelerometer using Euclidean metrics.
        + Numerical
        + Units: Normalized gravity units -g- 

36. "Mean of the Standard deviation of timely gravity measure in accelerator (magnitude) "
    + Average of the standard deviation of the magnitude of the acceleration taken of gravity by the accelerometer using Euclidean metrics.
        + Numerical
        + Units: Normalized gravity units -g- 

37. "Mean of the Mean of timely body measure in accelerator -jerk signals- (magnitude) "
    + Average of the mean of the magnitude of the derivative of the acceleration taken of gravity by the accelerometer using Euclidean metrics.
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

38. "Mean of the Standard deviation of timely body measure in accelerator -jerk signals- (magnitude) "
    + Average of the standard deviation of the magnitude of the derivative of the acceleration taken of gravity by the accelerometer using Euclidean metrics.
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

39. "Mean of the Mean of timely body measure in gyroscope (magnitude) "
    + Average of the mean of the magnitude of the angular velocity of the body taken by the gyroscope using Euclidean metrics.
        + Numerical
        + Units: radians/second 

40. "Mean of the Standard deviation of timely body measure in gyroscope (magnitude) "
    + Average of the standard deviation of the magnitude of the angular velocity of the body taken by the gyroscope using Euclidean metrics.
        + Numerical
        + Units: radians/second 

41. "Mean of the Mean of timely body measure in gyroscope -jerk signals- (magnitude) "
    + Average of the mean of the magnitude of the derivative of the angular velocity of the body taken by the gyroscope using Euclidean metrics.
        + Numerical
        + Units: radians/second^2^ 

42. "Mean of the Standard deviation of timely body measure in gyroscope -jerk signals- (magnitude) "
    + Average of the standard deviation of the magnitude of the derivative of the angular velocity of the body taken by the gyroscope using Euclidean metrics.
        + Numerical
        + Units: radians/second^2^  

43. "Mean of the Mean of FFT of body measure in accelerator in the X axis"
    + Average of the mean of the acceleration taken of the body by the accelerometer in the X direction on a regular domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units -g- 

44. "Mean of the Mean of FFT of body measure in accelerator in the Y axis"
    + Average of the mean of the acceleration taken of the body by the accelerometer in the Y direction on a regular domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units -g- 

45. "Mean of the Mean of FFT of body measure in accelerator in the Z axis"
    + Average of the mean of the acceleration taken of the body by the accelerometer in the Z direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units -g- 

46. "Mean of the Standard deviation of FFT of body measure in accelerator in the X axis"
    + Average of the standard deviation of the acceleration taken of the body by the accelerometer in the X direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units -g- 

47. "Mean of the Standard deviation of FFT of body measure in accelerator in the Y axis"
    + Average of the standard deviation of the acceleration taken of the body by the accelerometer in the Y direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units -g- 

48. "Mean of the Standard deviation of FFT of body measure in accelerator in the Z axis"
    + Average of the standard deviation of the acceleration taken of the body by the accelerometer in the Z direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units -g- 

49. "Mean of the Mean of FFT of body measure in accelerator -jerk signals- in the X axis"
    + Average of the mean of the derivative of the acceleration taken of the body by the accelerometer in the X direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

50. "Mean of the Mean of FFT of body measure in accelerator -jerk signals- in the Y axis"
    + Average of the mean of the derivative of the acceleration taken of the body by the accelerometer in the Y direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

51. "Mean of the Mean of FFT of body measure in accelerator -jerk signals- in the Z axis"
    + Average of the mean of the derivative of the acceleration taken of the body by the accelerometer in the Z direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

52. "Mean of the Standard deviation of FFT of body measure in accelerator -jerk signals- in the X axis"
    + Average of the standard deviation of the derivative of the acceleration taken of the body by the accelerometer in the X direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

53. "Mean of the Standard deviation of FFT of body measure in accelerator -jerk signals- in the Y axis"
    + Average of the standard deviation of the derivative of the acceleration taken of the body by the accelerometer in the Y direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

54. "Mean of the Standard deviation of FFT of body measure in accelerator -jerk signals- in the Z axis"
    + Average of the standard deviation of the derivative of the acceleration taken of the body by the accelerometer in the Z direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

55. "Mean of the Mean of FFT of body measure in gyroscope in the X axis"
    + Average of the mean of the angular velocity taken of the body by the gyroscope in the X direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second 

56. "Mean of the Mean of FFT of body measure in gyroscope in the Y axis"
    + Average of the mean of the angular velocity taken of the body by the gyroscope in the Y direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second 

57. "Mean of the Mean of FFT of body measure in gyroscope in the Z axis"
    + Average of the mean of the angular velocity taken of the body by the gyroscope in the Z direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second 

58. "Mean of the Standard deviation of FFT of body measure in gyroscope in the X axis"
    + Average of the standard deviation of the angular velocity taken of the body by the gyroscope in the X direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second 

59. "Mean of the Standard deviation of FFT of body measure in gyroscope in the Y axis"
    + Average of the standard deviation of the angular velocity taken of the body by the gyroscope in the Y direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second 

60. "Mean of the Standard deviation of FFT of body measure in gyroscope in the Z axis"
    + Average of the standard deviation of the angular velocity taken of the body by the gyroscope in the Z direction on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second 

61. "Mean of the Mean of FFT of body measure in accelerator (magnitude) "
    + Average of the mean of the magnitude of the acceleration taken of the body by the accelerometer using Euclidean metrics on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units -g- 

62. "Mean of the Standard deviation of FFT of body measure in accelerator (magnitude) "
    + Average of the standard deviation of the magnitude of the acceleration taken of the body by the accelerometer using Euclidean metrics on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units -g- 

63. "Mean of the Mean of FFT of body measure in accelerator -jerk signals- (magnitude) "
    + Average of the mean of the magnitude of the derivative of the acceleration taken of gravity by the accelerometer using Euclidean metrics on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

64. "Mean of the Standard deviation of FFT of body measure in accelerator -jerk signals- (magnitude) "
    + Average of the standard deviation of the magnitude of the derivative of the acceleration taken of gravity by the accelerometer using Euclidean metrics on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: Normalized gravity units over time -g/t- 

65. "Mean of the Mean of FFT of body measure in gyroscope (magnitude) "
    + Average of the mean of the magnitude of the angular velocity of the body taken by the gyroscope using Euclidean metrics on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second 

66. "Mean of the Standard deviation of FFT of body measure in gyroscope (magnitude) "
    + Average of the standard deviation of the magnitude of the angular velocity of the body taken by the gyroscope using Euclidean metrics on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second 

67. "Mean of the Mean of FFT of body measure in gyroscope -jerk signals- (magnitude) "
    + Average of the mean of the magnitude of the derivative of the angular velocity of the body taken by the gyroscope using Euclidean metrics on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second^2^ 

68. "Mean of the Standard deviation of FFT of body measure in gyroscope -jerk signals- (magnitude) "
    + Average of the standard deviation of the magnitude of the derivative of the angular velocity of the body taken by the gyroscope using Euclidean metrics on a frequency domain (Fast Fourier Transform applied).
        + Numerical
        + Units: radians/second^2^ 



