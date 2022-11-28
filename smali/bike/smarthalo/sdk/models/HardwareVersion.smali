.class public final enum Lbike/smarthalo/sdk/models/HardwareVersion;
.super Ljava/lang/Enum;
.source "HardwareVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/models/HardwareVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/models/HardwareVersion;

.field public static final enum Unknown:Lbike/smarthalo/sdk/models/HardwareVersion;

.field public static final enum V1:Lbike/smarthalo/sdk/models/HardwareVersion;

.field public static final enum V1_2:Lbike/smarthalo/sdk/models/HardwareVersion;

.field public static final enum V2:Lbike/smarthalo/sdk/models/HardwareVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/models/HardwareVersion;

    const-string v1, "V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/models/HardwareVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/HardwareVersion;->V1:Lbike/smarthalo/sdk/models/HardwareVersion;

    .line 11
    new-instance v0, Lbike/smarthalo/sdk/models/HardwareVersion;

    const-string v1, "V1_2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/models/HardwareVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/HardwareVersion;->V1_2:Lbike/smarthalo/sdk/models/HardwareVersion;

    .line 12
    new-instance v0, Lbike/smarthalo/sdk/models/HardwareVersion;

    const-string v1, "V2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/sdk/models/HardwareVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    .line 13
    new-instance v0, Lbike/smarthalo/sdk/models/HardwareVersion;

    const-string v1, "Unknown"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/sdk/models/HardwareVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/HardwareVersion;->Unknown:Lbike/smarthalo/sdk/models/HardwareVersion;

    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Lbike/smarthalo/sdk/models/HardwareVersion;

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V1:Lbike/smarthalo/sdk/models/HardwareVersion;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V1_2:Lbike/smarthalo/sdk/models/HardwareVersion;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->Unknown:Lbike/smarthalo/sdk/models/HardwareVersion;

    aput-object v1, v0, v5

    sput-object v0, Lbike/smarthalo/sdk/models/HardwareVersion;->$VALUES:[Lbike/smarthalo/sdk/models/HardwareVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blDeviceName(Ljava/lang/String;)Lbike/smarthalo/sdk/models/HardwareVersion;
    .locals 1

    const-string v0, "SH_BL"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object p0, Lbike/smarthalo/sdk/models/HardwareVersion;->V1:Lbike/smarthalo/sdk/models/HardwareVersion;

    return-object p0

    :cond_0
    const-string v0, "SH2_BL"

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 47
    sget-object p0, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    return-object p0

    .line 49
    :cond_1
    sget-object p0, Lbike/smarthalo/sdk/models/HardwareVersion;->Unknown:Lbike/smarthalo/sdk/models/HardwareVersion;

    return-object p0
.end method

.method public static build(I)Lbike/smarthalo/sdk/models/HardwareVersion;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 37
    sget-object p0, Lbike/smarthalo/sdk/models/HardwareVersion;->Unknown:Lbike/smarthalo/sdk/models/HardwareVersion;

    return-object p0

    .line 35
    :pswitch_0
    sget-object p0, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    return-object p0

    .line 33
    :pswitch_1
    sget-object p0, Lbike/smarthalo/sdk/models/HardwareVersion;->V1_2:Lbike/smarthalo/sdk/models/HardwareVersion;

    return-object p0

    .line 31
    :pswitch_2
    sget-object p0, Lbike/smarthalo/sdk/models/HardwareVersion;->V1:Lbike/smarthalo/sdk/models/HardwareVersion;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/models/HardwareVersion;
    .locals 1

    .line 9
    const-class v0, Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/models/HardwareVersion;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/models/HardwareVersion;
    .locals 1

    .line 9
    sget-object v0, Lbike/smarthalo/sdk/models/HardwareVersion;->$VALUES:[Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/models/HardwareVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/models/HardwareVersion;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 16
    sget-object v0, Lbike/smarthalo/sdk/models/HardwareVersion$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    invoke-virtual {p0}, Lbike/smarthalo/sdk/models/HardwareVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    return-object v0

    :pswitch_0
    const-string v0, "2.0"

    return-object v0

    :pswitch_1
    const-string v0, "1.2"

    return-object v0

    :pswitch_2
    const-string v0, "1.0/1.1"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
