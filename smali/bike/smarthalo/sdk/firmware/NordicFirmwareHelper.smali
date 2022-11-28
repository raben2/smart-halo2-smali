.class public Lbike/smarthalo/sdk/firmware/NordicFirmwareHelper;
.super Ljava/lang/Object;
.source "NordicFirmwareHelper.java"


# static fields
.field private static final SH1_PROTOCOL_1:Ljava/lang/String; = "1.1.0.0"

.field private static final SH1_PROTOCOL_2:Ljava/lang/String; = "1.2.0.0"

.field private static final SH1_PROTOCOL_2_1:Ljava/lang/String; = "1.2.1.0"

.field private static final SH1_PROTOCOL_3:Ljava/lang/String; = "1.3.0.0"

.field private static final SH1_PROTOCOL_6:Ljava/lang/String; = "1.6.0.0"

.field private static final SH1_PROTOCOL_7:Ljava/lang/String; = "1.7.0.0"

.field private static final SH2_PROTOCOL:Ljava/lang/String; = "2.0.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProtocolString(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lbike/smarthalo/sdk/firmware/NordicFirmwareHelper$1;->$SwitchMap$bike$smarthalo$sdk$firmware$NordicProtocolVersion:[I

    invoke-virtual {p0}, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "2.0.0.0"

    return-object p0

    :pswitch_1
    const-string p0, "1.7.0.0"

    return-object p0

    :pswitch_2
    const-string p0, "1.6.0.0"

    return-object p0

    :pswitch_3
    const-string p0, "1.3.0.0"

    return-object p0

    :pswitch_4
    const-string p0, "1.2.1.0"

    return-object p0

    :pswitch_5
    const-string p0, "1.2.0.0"

    return-object p0

    :pswitch_6
    const-string p0, "1.1.0.0"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
