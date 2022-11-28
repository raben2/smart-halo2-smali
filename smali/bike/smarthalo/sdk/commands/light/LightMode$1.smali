.class synthetic Lbike/smarthalo/sdk/commands/light/LightMode$1;
.super Ljava/lang/Object;
.source "LightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/sdk/commands/light/LightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$bike$smarthalo$sdk$commands$light$LightMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    invoke-static {}, Lbike/smarthalo/sdk/commands/light/LightMode;->values()[Lbike/smarthalo/sdk/commands/light/LightMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/sdk/commands/light/LightMode$1;->$SwitchMap$bike$smarthalo$sdk$commands$light$LightMode:[I

    :try_start_0
    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode$1;->$SwitchMap$bike$smarthalo$sdk$commands$light$LightMode:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/light/LightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode$1;->$SwitchMap$bike$smarthalo$sdk$commands$light$LightMode:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/light/LightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
