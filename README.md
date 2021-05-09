# FaceMaskDetection
CMPE 255 Term Project

### To run the Transfer Learning Vgg16Model

* Step 1: Create the model
  - First run the facemask_detector.ipynb file. 
  - This creates the model, face_detector_model.h5 file. 
  - Additionally, it also creates the assets, variables and saved_model.pb files.
  - The model is then saved in a location accessible by other files.

* Step 2: Detection of images based on trained model
  - Once the model is ready, run the face_mask_detection_transfer_learning_model.ipynb file.
  - The trained model face_detector_model.h5 is loaded on the face_mask_detection_transfer_learning_model.ipynb file. 
  - Additional supporting files/folders like assets, variables and saved_model.pb should also be in the same path as the saved model and should have permissions to access.
  - Finally, the models runs on the input images to indicate the classification, with_mask, without_mask and incorrect_mask
