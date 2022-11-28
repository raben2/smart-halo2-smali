.class public final Lno/nordicsemi/android/error/LegacyDfuError;
.super Ljava/lang/Object;
.source "LegacyDfuError.java"


# static fields
.field public static final CRC_ERROR:I = 0x5

.field public static final DATA_SIZE_EXCEEDS_LIMIT:I = 0x4

.field public static final INVALID_STATE:I = 0x2

.field public static final NOT_SUPPORTED:I = 0x3

.field public static final OPERATION_FAILED:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "OPERATION FAILED"

    return-object p0

    :pswitch_1
    const-string p0, "INVALID CRC ERROR"

    return-object p0

    :pswitch_2
    const-string p0, "DATA SIZE EXCEEDS LIMIT"

    return-object p0

    :pswitch_3
    const-string p0, "NOT SUPPORTED"

    return-object p0

    :pswitch_4
    const-string p0, "INVALID STATE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
