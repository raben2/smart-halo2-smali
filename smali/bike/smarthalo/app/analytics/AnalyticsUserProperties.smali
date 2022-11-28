.class public final Lbike/smarthalo/app/analytics/AnalyticsUserProperties;
.super Ljava/lang/Object;
.source "AnalyticsUserProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lbike/smarthalo/app/analytics/AnalyticsUserProperties;",
        "",
        "()V",
        "AUDIENCE",
        "",
        "DEVICE_MODEL",
        "DEVICE_MODEL_NONE",
        "DEVICE_MODEL_SH1",
        "DEVICE_MODEL_SH2",
        "USER_ID",
        "getDeviceModelUserProperty",
        "deviceModel",
        "Lbike/smarthalo/sdk/models/DeviceModel;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final AUDIENCE:Ljava/lang/String; = "audience"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEVICE_MODEL:Ljava/lang/String; = "deviceModel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEVICE_MODEL_NONE:Ljava/lang/String; = "none"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEVICE_MODEL_SH1:Ljava/lang/String; = "sh1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEVICE_MODEL_SH2:Ljava/lang/String; = "sh2"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lbike/smarthalo/app/analytics/AnalyticsUserProperties;

.field public static final USER_ID:Ljava/lang/String; = "cloudUserId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lbike/smarthalo/app/analytics/AnalyticsUserProperties;

    invoke-direct {v0}, Lbike/smarthalo/app/analytics/AnalyticsUserProperties;-><init>()V

    sput-object v0, Lbike/smarthalo/app/analytics/AnalyticsUserProperties;->INSTANCE:Lbike/smarthalo/app/analytics/AnalyticsUserProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDeviceModelUserProperty(Lbike/smarthalo/sdk/models/DeviceModel;)Ljava/lang/String;
    .locals 1
    .param p0    # Lbike/smarthalo/sdk/models/DeviceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "deviceModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lbike/smarthalo/app/analytics/AnalyticsUserProperties$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lbike/smarthalo/sdk/models/DeviceModel;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 25
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "none"

    goto :goto_0

    :pswitch_1
    const-string p0, "sh2"

    goto :goto_0

    :pswitch_2
    const-string p0, "sh1"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
