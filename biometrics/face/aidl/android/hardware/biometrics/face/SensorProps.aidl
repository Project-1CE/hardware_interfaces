/*
 * Copyright (C) 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.biometrics.face;

import android.hardware.biometrics.common.CommonProps;
import android.hardware.biometrics.face.FaceSensorType;

@VintfStability
parcelable SensorProps {
    /**
     * Statically configured properties that apply to this face sensor.
     */
    CommonProps commonProps;

    /**
     * A statically configured sensor type representing this face sensor.
     */
    FaceSensorType sensorType;

    /**
     * Whether or not the HAL is responsible for showing the face enrollment preview to the user.
     * Devices with multiple front camera sensors can set this to false and rely on the framework to
     * show the preview with one of the unused cameras. Devices with a single front sensor must set
     * this to true and configure their send their camera stream to the preview surface provided by
     * the framework.
     */
    boolean halControlsPreview;
}

