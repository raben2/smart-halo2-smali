.class synthetic Lbike/smarthalo/sdk/models/DeviceModel$1;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/sdk/models/DeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$bike$smarthalo$sdk$models$DeviceModel:[I

.field static final synthetic $SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    invoke-static {}, Lbike/smarthalo/sdk/models/DeviceModel;->values()[Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$DeviceModel:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$DeviceModel:[I

    sget-object v2, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v2}, Lbike/smarthalo/sdk/models/DeviceModel;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$DeviceModel:[I

    sget-object v3, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v3}, Lbike/smarthalo/sdk/models/DeviceModel;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$DeviceModel:[I

    sget-object v4, Lbike/smarthalo/sdk/models/DeviceModel;->Unknown:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v4}, Lbike/smarthalo/sdk/models/DeviceModel;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 22
    :catch_2
    invoke-static {}, Lbike/smarthalo/sdk/models/HardwareVersion;->values()[Lbike/smarthalo/sdk/models/HardwareVersion;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    :try_start_3
    sget-object v3, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    sget-object v4, Lbike/smarthalo/sdk/models/HardwareVersion;->V1:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {v4}, Lbike/smarthalo/sdk/models/HardwareVersion;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    sget-object v3, Lbike/smarthalo/sdk/models/HardwareVersion;->V1_2:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {v3}, Lbike/smarthalo/sdk/models/HardwareVersion;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/HardwareVersion;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->Unknown:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/HardwareVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
