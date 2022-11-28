.class public Lbike/smarthalo/app/helpers/SHBarracksHelper;
.super Ljava/lang/Object;
.source "SHBarracksHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBarracksBundle(Lbike/smarthalo/app/models/SHUser;Lbike/smarthalo/sdk/models/DeviceInformation;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Lbike/smarthalo/sdk/models/DeviceInformation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "userEmail"

    .line 22
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$email()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authLevel"

    .line 23
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$authLevel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "OS"

    const-string v1, "Android"

    .line 26
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "OS"

    const-string v1, "Android"

    .line 27
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "osVersion"

    .line 28
    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "phoneModel"

    .line 29
    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getPhoneVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "version"

    const-string v1, "1.18.0"

    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "build"

    const/16 v1, 0x286

    .line 32
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "configuration"

    .line 33
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->getCurrentBarracksEnvironmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 36
    iget-object p0, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    if-eqz p0, :cond_1

    const-string p0, "productSerial"

    .line 37
    iget-object v1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object v1, v1, Lbike/smarthalo/sdk/models/DeviceSerials;->product:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "pcbaSerial"

    .line 38
    iget-object v1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object v1, v1, Lbike/smarthalo/sdk/models/DeviceSerials;->pcba:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p0, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object p0, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->lock:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string p0, "lockSerial"

    .line 41
    iget-object v1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object v1, v1, Lbike/smarthalo/sdk/models/DeviceSerials;->lock:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object p0, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

    if-eqz p0, :cond_2

    const-string p0, "hardwareVersion"

    .line 46
    iget-object v1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/HardwareVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "accelerometer"

    .line 47
    iget-object p1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->accelerometer:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
