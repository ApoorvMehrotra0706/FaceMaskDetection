# FaceMaskDetection
CMPE 255 Term Project

### To run the Transfer Learning MobileNetV2 Model

* Step 1: Create the model
  - First run the facemask_detector.ipynb file. 
  - This creates the model, face_detector_model.h5 file. 
  - Additionally, it also creates the assets, variables and saved_model.pb files.
  - The model is then saved in a location accessible by other files.

* Step 2: Detection of images based on trained model
  - Once the model is ready, run the face_mask_detection_transfer_learning_model.ipynb file.
  - The trained model face_detector_model.h5 is loaded on the face_mask_detection_transfer_learning_model.ipynb file. 
  - Additional supporting files/folders like assets, variables and saved_model.pb should also be in the same path as the saved model and should have permissions to access.
  - Finally, the models runs on the input images to indicate the classification- with_mask, without_mask and incorrect_mask

### To run the Base CNN Model

* Step 1: Create the model
  - First run the Base model.ipynb.ipynb file. 
  - This creates the model, withoutAugmentedDataModel.h5.h5 file. 
  - Additionally, it also creates the assets, variables and saved_model.pb files.
  - The model is then saved in a location accessible by other files.
  - Following the further steps in the Python notebook, the same model gets loaded back and is re-trained on the augmented dataset
  - The newly trained model is saved as withAugmentedDataModel.h5

* Step 2: Detection of images based on trained model
  - Now two models are ready, one is the base CNN model without augmnetation and next is the base CNN model trained on augmented dataset
  - Both the models are loaded and the test image dataset could be loaded over there. IT autoatically gets converted to the allowed size. 
  - Finally, the models runs on the input images to indicate the classification- with_mask, without_mask and incorrect_mask

### References
* https://github.com/ankitgoyal0301/COVID-19-Face-Mask-Detector
* https://www.kaggle.com/spandanpatnaik09/face-mask-detectormask-not-mask-incorrect-mask
* M. Sandler, A. Howard, M. Zhu, A. Zhmoginov, and L. C. Chen, "Mobilenetv2: The next generation of on-device computer vision networks", 2020, [online] Available:https://Ai.Googleblog.Com/2018/04/Mobilenetv2-next-Generation-of-on.
* A. Oumina, N. El Makhfi and M. Hamdi, "Control The COVID-19 Pandemic: Face Mask Detection Using Transfer Learning," 2020 IEEE 2nd International Conference on Electronics, Control, Optimization and Computer Science (ICECOCS), 2020, pp. 1-5, doi: 10.1109/ICECOCS50124.2020.9314511.
* https://machinelearningmastery.com/how-to-configure-image-data-augmentation-when-training-deep-learning-neural-networks/
