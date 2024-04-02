import os
import pandas as pd
import numpy as np
import pywt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from skimage.transform import resize


# Function to compute CWT
def compute_cwt(signal):
    scales = np.arange(1, 128)  # Adjust the range of scales as needed
    wavelet = "morl"  # Morlet wavelet is commonly used for CWT
    coefs, _ = pywt.cwt(signal, scales, wavelet)
    return coefs


# Load and process each CSV file
all_X = []
all_y = []

for filename in os.listdir("csv_data"):
    if filename.endswith(".csv"):
        filepath = os.path.join("csv_data", filename)
        data = pd.read_csv(filepath, low_memory=False)
        print(f"Processing {filepath}...")

        # Encode sleep stage labels
        label_encoder = LabelEncoder()
        data["labels"] = data["label"].astype(str)

        # Preprocess the data into 30-second windows
        fs = 128  # Sampling frequency
        window_size = 30 * fs  # 30 seconds * 128 Hz
        windows = [data[i : i + window_size] for i in range(0, len(data), window_size)]

        # Compute and resize CWT visualizations for each window
        cwt_images = []
        labels = []

        for window in windows:
            signal = window["values"].values
            label = window["labels"].values[0]
            coefs = compute_cwt(signal)
            # Resize the CWT visualization to a fixed size (e.g., 64x64)
            resized_coefs = resize(np.abs(coefs), (224, 224))
            cwt_images.append(resized_coefs)
            labels.append(label)

        all_X.extend(cwt_images)
        all_y.extend(labels)

# Convert to numpy arrays
X = np.array(all_X)
y = np.array(all_y)

# Split the dataset into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)

# Save the dataset
np.savez(
    "complete_cwt_dataset.npz",
    X_train=X_train,
    X_test=X_test,
    y_train=y_train,
    y_test=y_test,
)
