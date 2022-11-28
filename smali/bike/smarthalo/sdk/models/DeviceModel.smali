.class public final enum Lbike/smarthalo/sdk/models/DeviceModel;
.super Ljava/lang/Enum;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/models/DeviceModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/models/DeviceModel;

.field public static final BOOTLOADER_ADVERTISEMENT_DATA:B = 0x1t

.field public static final enum SH1:Lbike/smarthalo/sdk/models/DeviceModel;

.field public static final enum SH2:Lbike/smarthalo/sdk/models/DeviceModel;

.field public static final SMARTHALO_1:Ljava/lang/String; = "1"

.field public static final SMARTHALO_1_ADVERTISEMENT_DATA:B = 0x0t

.field public static final SMARTHALO_2:Ljava/lang/String; = "2"

.field public static final SMARTHALO_2_ADVERTISEMENT_DATA:B = 0x2t

.field public static final enum Unknown:Lbike/smarthalo/sdk/models/DeviceModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/models/DeviceModel;

    const-string v1, "SH1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/models/DeviceModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    .line 11
    new-instance v0, Lbike/smarthalo/sdk/models/DeviceModel;

    const-string v1, "SH2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/models/DeviceModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    .line 12
    new-instance v0, Lbike/smarthalo/sdk/models/DeviceModel;

    const-string v1, "Unknown"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/sdk/models/DeviceModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->Unknown:Lbike/smarthalo/sdk/models/DeviceModel;

    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [Lbike/smarthalo/sdk/models/DeviceModel;

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->Unknown:Lbike/smarthalo/sdk/models/DeviceModel;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->$VALUES:[Lbike/smarthalo/sdk/models/DeviceModel;

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

.method public static fromAdvertisementData(B)Lbike/smarthalo/sdk/models/DeviceModel;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 53
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->Unknown:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0

    .line 50
    :cond_0
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0

    .line 48
    :cond_1
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0
.end method

.method public static fromHardwareVersion(Lbike/smarthalo/sdk/models/HardwareVersion;)Lbike/smarthalo/sdk/models/DeviceModel;
    .locals 1

    .line 22
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$HardwareVersion:[I

    invoke-virtual {p0}, Lbike/smarthalo/sdk/models/HardwareVersion;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 30
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->Unknown:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0

    .line 27
    :pswitch_0
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0

    .line 25
    :pswitch_1
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromSavedData(Ljava/lang/String;)Lbike/smarthalo/sdk/models/DeviceModel;
    .locals 1

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :pswitch_1
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    .line 41
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->Unknown:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0

    .line 39
    :pswitch_2
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0

    .line 37
    :pswitch_3
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static geDeviceModel([B)Lbike/smarthalo/sdk/models/DeviceModel;
    .locals 2

    .line 71
    array-length v0, p0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 72
    aget-byte p0, p0, v1

    invoke-static {p0}, Lbike/smarthalo/sdk/models/HardwareVersion;->build(I)Lbike/smarthalo/sdk/models/HardwareVersion;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/sdk/models/DeviceModel;->fromHardwareVersion(Lbike/smarthalo/sdk/models/HardwareVersion;)Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    sget-object p0, Lbike/smarthalo/sdk/models/DeviceModel;->Unknown:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/models/DeviceModel;
    .locals 1

    .line 9
    const-class v0, Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/models/DeviceModel;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/models/DeviceModel;
    .locals 1

    .line 9
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->$VALUES:[Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/models/DeviceModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/models/DeviceModel;

    return-object v0
.end method


# virtual methods
.method public getSimpleValue()Ljava/lang/String;
    .locals 2

    .line 59
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel$1;->$SwitchMap$bike$smarthalo$sdk$models$DeviceModel:[I

    invoke-virtual {p0}, Lbike/smarthalo/sdk/models/DeviceModel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "2"

    return-object v0

    :pswitch_1
    const-string v0, "1"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
