.class public Lbike/smarthalo/sdk/models/DeviceInformation;
.super Ljava/lang/Object;
.source "DeviceInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;
    }
.end annotation


# static fields
.field public static final ACC_VERSION_0:Ljava/lang/String; = "CTR"

.field public static final ACC_VERSION_1:Ljava/lang/String; = "AGR"

.field public static final ACC_VERSION_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final HARDWARE_VERSION_1:Ljava/lang/String; = "1.0/1.1"

.field public static final HARDWARE_VERSION_1_2:Ljava/lang/String; = "1.2"

.field public static final HARDWARE_VERSION_2:Ljava/lang/String; = "2.0"

.field public static final HARDWARE_VERSION_INDEX:I = 0x9

.field public static final HARDWARE_VERSION_UNKNOWN:Ljava/lang/String; = "Unknown"


# instance fields
.field public accelerometer:Ljava/lang/String;

.field public deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

.field public nordicBootloaderVersion:Ljava/lang/String;

.field public nordicFirmwareVersion:Ljava/lang/String;

.field public stmBootloaderVersion:Ljava/lang/String;

.field public stmFirmwareVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/sdk/models/HardwareVersion;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceSerials;)V
    .locals 0
    .param p7    # Lbike/smarthalo/sdk/models/DeviceSerials;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicBootloaderVersion:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lbike/smarthalo/sdk/models/DeviceInformation;->stmFirmwareVersion:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lbike/smarthalo/sdk/models/DeviceInformation;->stmBootloaderVersion:Ljava/lang/String;

    if-nez p6, :cond_0

    const-string p6, "Null"

    .line 45
    :cond_0
    iput-object p6, p0, Lbike/smarthalo/sdk/models/DeviceInformation;->accelerometer:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    .line 47
    iput-object p5, p0, Lbike/smarthalo/sdk/models/DeviceInformation;->hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

    return-void
.end method

.method public static build([BLbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/sdk/models/DeviceInformation;
    .locals 13

    .line 61
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x5

    const/4 v3, 0x1

    .line 65
    invoke-static {p0, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lbike/smarthalo/sdk/models/DeviceInformation;->makeFirmwareVersionString([B)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/sdk/models/DeviceInformation;->makeFirmwareVersionString([B)Ljava/lang/String;

    move-result-object v7

    .line 71
    sget-object v0, Lbike/smarthalo/sdk/models/HardwareVersion;->Unknown:Lbike/smarthalo/sdk/models/HardwareVersion;

    .line 73
    array-length v4, p0

    const/16 v5, 0xb

    const/16 v8, 0x13

    if-lt v4, v8, :cond_1

    const/16 v4, 0xf

    .line 74
    invoke-static {p0, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-static {v9}, Lbike/smarthalo/sdk/models/DeviceInformation;->makeFirmwareVersionString([B)Ljava/lang/String;

    move-result-object v9

    .line 75
    invoke-static {p0, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lbike/smarthalo/sdk/models/DeviceInformation;->makeFirmwareVersionString([B)Ljava/lang/String;

    move-result-object v4

    move-object v8, v9

    move-object v9, v4

    goto :goto_0

    :cond_1
    move-object v8, v1

    move-object v9, v8

    .line 78
    :goto_0
    array-length v4, p0

    if-lt v4, v5, :cond_4

    .line 79
    aget-byte v0, p0, v2

    invoke-static {v0}, Lbike/smarthalo/sdk/models/HardwareVersion;->build(I)Lbike/smarthalo/sdk/models/HardwareVersion;

    move-result-object v0

    const/16 v1, 0xa

    .line 81
    aget-byte v4, p0, v1

    if-nez v4, :cond_2

    const-string v1, "CTR"

    goto :goto_1

    :cond_2
    aget-byte v1, p0, v1

    if-ne v1, v3, :cond_3

    const-string v1, "AGR"

    goto :goto_1

    :cond_3
    const-string v1, "Unknown"

    :goto_1
    move-object v11, v1

    goto :goto_2

    :cond_4
    move-object v11, v1

    .line 86
    :goto_2
    array-length p0, p0

    if-ne p0, v2, :cond_5

    .line 87
    sget-object p0, Lbike/smarthalo/sdk/models/HardwareVersion;->V1:Lbike/smarthalo/sdk/models/HardwareVersion;

    move-object v10, p0

    goto :goto_3

    :cond_5
    move-object v10, v0

    .line 90
    :goto_3
    new-instance p0, Lbike/smarthalo/sdk/models/DeviceInformation;

    move-object v5, p0

    move-object v12, p1

    invoke-direct/range {v5 .. v12}, Lbike/smarthalo/sdk/models/DeviceInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/sdk/models/HardwareVersion;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceSerials;)V

    return-object p0
.end method

.method private static makeFirmwareVersionString([B)Ljava/lang/String;
    .locals 2

    .line 51
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    .line 54
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    .line 55
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;
    .locals 1

    .line 98
    iget-object v0, p0, Lbike/smarthalo/sdk/models/DeviceInformation;->hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-static {v0}, Lbike/smarthalo/sdk/models/DeviceModel;->fromHardwareVersion(Lbike/smarthalo/sdk/models/HardwareVersion;)Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    return-object v0
.end method
