.class public Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;
.super Ljava/lang/Object;
.source "ConnectionActivityRequest.java"


# instance fields
.field public accelerometer:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_version"
    .end annotation
.end field

.field public batteryInCharge:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "battery_in_charge"
    .end annotation
.end field

.field public batteryStateOfCharge:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "battery_state_of_charge"
    .end annotation
.end field

.field public configuration:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_id"
    .end annotation
.end field

.field public deviceModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_model"
    .end annotation
.end field

.field public hardwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hardware_version"
    .end annotation
.end field

.field public lockSerial:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lock_serial"
    .end annotation
.end field

.field public nordicBootloader:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nordic_bootloader"
    .end annotation
.end field

.field public nordicFirmware:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nordic_firmware"
    .end annotation
.end field

.field public pcbaSerial:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pcba_serial"
    .end annotation
.end field

.field public phoneModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_model"
    .end annotation
.end field

.field public phoneOS:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_os"
    .end annotation
.end field

.field public phoneOSVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_os_version"
    .end annotation
.end field

.field public productSerial:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_serial"
    .end annotation
.end field

.field public stmBootloader:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stm_bootloader"
    .end annotation
.end field

.field public stmFirmware:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stm_firmware"
    .end annotation
.end field

.field public userAuthLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_auth_level"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
