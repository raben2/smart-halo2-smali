.class public final Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;
.super Ljava/lang/Object;
.source "DebugAnalyticsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0019\u0010\u000b\u001a\n \u000c*\u0004\u0018\u00010\u00080\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;",
        "",
        "()V",
        "LOG_MAX_SIZE",
        "",
        "getLOG_MAX_SIZE",
        "()I",
        "SMARTHALO_OS_PLATFORM",
        "",
        "getSMARTHALO_OS_PLATFORM",
        "()Ljava/lang/String;",
        "TAG",
        "kotlin.jvm.PlatformType",
        "getTAG",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLOG_MAX_SIZE()I
    .locals 1

    .line 55
    invoke-static {}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$getLOG_MAX_SIZE$cp()I

    move-result v0

    return v0
.end method

.method public final getSMARTHALO_OS_PLATFORM()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    invoke-static {}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$getSMARTHALO_OS_PLATFORM$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
