.class public final Lcom/instabug/apm/model/LogLevel$a;
.super Ljava/lang/Object;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/apm/model/LogLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "VERBOSE"

    return-object p0

    :pswitch_1
    const-string p0, "DEBUG"

    return-object p0

    :pswitch_2
    const-string p0, "INFO"

    return-object p0

    :pswitch_3
    const-string p0, "WARNING"

    return-object p0

    :pswitch_4
    const-string p0, "ERROR"

    return-object p0

    :pswitch_5
    const-string p0, "NONE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
