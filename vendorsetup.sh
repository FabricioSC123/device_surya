#vendor
git clone https://github.com/FabricioSC123/proprietary_vendor_xiaomi_surya.git vendor/xiaomi/surya
#kernel
git clone https://github.com/stormbreaker-project/kernel_xiaomi_surya kernel/xiaomi/surya
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
#Fix Kernel storm
cd kernel/xiaomi/surya
git revert e28dfd2aaba38e0883b6fcf37231ee14e244c54d -n -e
git revert 4988721bb60be00e7046de1264334acc3cf9dd17 -n -e 
git revert 3a7a861f01bf47dc6162b810dad48b8895ec85e0 -n -e
git revert 8e8475087a44da20c1078afbd8fc9878e373a9dc -n -e 
git revert 81b34dcd608eaef73530d73406ace8997226e2c6 -n -e 
git revert 373a85e58fcf3966a5751ce3f6bf1215e013c6de -n -e 
git revert 7614a711f798a7517f1ff60546fcbb700873f7f6 -n -e
#fix changue kernel
git revert 928212482106338cfd5ad43e9f02d648ba0d0df1 -n -e
