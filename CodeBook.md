### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time Accelerometer-XYZ and tGyro-XYZ. 
These time domain signals were captured at a constant rate of 50 Hz. 

Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleromete-XYZ and TimeGravityAcceleromete-XYZ) 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
Note the 'Frequency' to indicate frequency domain signals. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

<b> Note suffix Mean: Mean value and  Std: Standard deviation </b>

<ol>                                     
<li>DataTidy$Activities                  </li>
<li>DataTidy$Subject                     </li>
<li>TimeBodyAccelerometerMeanX           </li>
<li>TimeBodyAccelerometerMeanY           </li>
<li>TimeBodyAccelerometerMeanZ           </li>
<li>TimeBodyAccelerometerStdX            </li>
<li>TimeBodyAccelerometerStdY            </li>
<li>TimeBodyAccelerometerStdZ            </li>
<li>TimeGravityAccelerometerMeanX        </li>
<li>TimeGravityAccelerometerMeanY        </li>
<li>TimeGravityAccelerometerMeanZ        </li>
<li>TimeGravityAccelerometerStdX         </li>
<li>TimeGravityAccelerometerStdY         </li>
<li>TimeGravityAccelerometerStdZ         </li>
<li>TimeBodyAccelerometerJerkMeanX       </li>
<li>TimeBodyAccelerometerJerkMeanY       </li>
<li>TimeBodyAccelerometerJerkMeanZ       </li>
<li>TimeBodyAccelerometerJerkStdX        </li>
<li>TimeBodyAccelerometerJerkStdY        </li>
<li>TimeBodyAccelerometerJerkStdZ        </li>
<li>TimeBodyGyroscopeMeanX               </li>
<li>TimeBodyGyroscopeMeanY               </li>
<li>TimeBodyGyroscopeMeanZ               </li>
<li>TimeBodyGyroscopeStdX                </li>
<li>TimeBodyGyroscopeStdY                </li>
<li>TimeBodyGyroscopeStdZ                </li>
<li>TimeBodyGyroscopeJerkMeanX           </li>
<li>TimeBodyGyroscopeJerkMeanY           </li>
<li>TimeBodyGyroscopeJerkMeanZ           </li>
<li>TimeBodyGyroscopeJerkStdX            </li>
<li>TimeBodyGyroscopeJerkStdY            </li>
<li>TimeBodyGyroscopeJerkStdZ            </li>
<li>TimeBodyAccelerometerMagMean         </li>
<li>TimeBodyAccelerometerMagStd          </li>
<li>TimeGravityAccelerometerMagMean      </li>
<li>TimeGravityAccelerometerMagStd       </li>
<li>TimeBodyAccelerometerJerkMagMean     </li>
<li>TimeBodyAccelerometerJerkMagStd      </li>
<li>TimeBodyGyroscopeMagMean             </li>
<li>TimeBodyGyroscopeMagStd              </li>
<li>TimeBodyGyroscopeJerkMagMean         </li>
<li>TimeBodyGyroscopeJerkMagStd          </li>
<li>FrequencyBodyAccelerometerMeanX      </li>
<li>FrequencyBodyAccelerometerMeanY      </li>
<li>FrequencyBodyAccelerometerMeanZ      </li>
<li>FrequencyBodyAccelerometerStdX       </li>
<li>FrequencyBodyAccelerometerStdY       </li>
<li>FrequencyBodyAccelerometerStdZ       </li>
<li>FrequencyBodyAccelerometerJerkMeanX  </li>
<li>FrequencyBodyAccelerometerJerkMeanY  </li>
<li>FrequencyBodyAccelerometerJerkMeanZ  </li>
<li>FrequencyBodyAccelerometerJerkStdX   </li>
<li>FrequencyBodyAccelerometerJerkStdY   </li>
<li>FrequencyBodyAccelerometerJerkStdZ   </li>
<li>FrequencyBodyGyroscopeMeanX          </li>
<li>FrequencyBodyGyroscopeMeanY          </li>
<li>FrequencyBodyGyroscopeMeanZ          </li>
<li>FrequencyBodyGyroscopeStdX           </li>
<li>FrequencyBodyGyroscopeStdY           </li>
<li>FrequencyBodyGyroscopeStdZ           </li>
<li>FrequencyBodyAccelerometerMagMean    </li>
<li>FrequencyBodyAccelerometerMagStd     </li>
<li>FrequencyBodyBodyAccelerometerJerkMagMean</li>
<li>FrequencyBodyBodyAccelerometerJerkMagStd</li>
<li>FrequencyBodyBodyGyroscopeMagMean    </li>
<li>FrequencyBodyBodyGyroscopeMagStd     </li>
<li>FrequencyBodyBodyGyroscopeJerkMagMean</li>
<li>FrequencyBodyBodyGyroscopeJerkMagStd </li>
</ol>
