#vendor
git clone https://github.com/FabricioSC123/proprietary_vendor_xiaomi_surya.git vendor/xiaomi/surya
#kernel
git clone https://github.com/FabricioSC123/kernel_surya.git kernel/xiaomi/surya
#PocoParts
git clone https://github.com/FabricioSC123/vendor_PocoParts.git vendor/PocoParts
#VendorSupport
git clone https://github.com/FabricioSC123/android_vendor_support.git vendor/support
# fix error pixel kernel
rm -rf hardware/google/pixel/kernel_headers/Android.bp
# Disable Realme partitions
git -C build/tools fetch https://github.com/Evolution-X/build elle 75895232a2b045431589bcb31ed808cc86ebffa4
git -C build/tools revert 75895232a2b045431589bcb31ed808cc86ebffa4 --no-edit
# Hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi
# Display Hals
git -C hardware/qcom-caf/sm8150/display remote add pixel https://github.com/PixelExperience/hardware_qcom-caf_sm8150_display
git -C hardware/qcom-caf/sm8150/display fetch pixel && git -C hardware/qcom-caf/sm8150/display checkout pixel/eleven
# Firmware
git clone https://gitlab.com/Ardjlon/firmware_xiaomi_surya firmware/xiaomi/surya
# EVA GCC
git clone --depth=1 https://github.com/mvaisakh/gcc-arm64 prebuilts/gcc/linux-x86/aarch64/aarch64-elf
git clone --depth=1 https://github.com/mvaisakh/gcc-arm prebuilts/gcc/linux-x86/arm/arm-eabi
