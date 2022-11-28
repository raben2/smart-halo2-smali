.class synthetic Lbike/smarthalo/sdk/models/HardwareVersion$1;
.super Ljava/lang/Object;
.source "HardwareVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/sdk/models/HardwareVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    invoke-static {}, Lbike/smarthalo/sdk/models/HardwareVersion;->values()[Lbike/smarthalo/sdk/models/HardwareVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/sdk/models/HardwareVersion$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    :try_start_0
    sget-object v0, Lbike/smarthalo/sdk/models/HardwareVersion$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V1:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/HardwareVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lbike/smarthalo/sdk/models/HardwareVersion$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V1_2:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/HardwareVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lbike/smarthalo/sdk/models/HardwareVersion$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/HardwareVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
