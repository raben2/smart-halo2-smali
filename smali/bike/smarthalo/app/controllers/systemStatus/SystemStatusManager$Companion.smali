.class public final Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager$Companion;
.super Ljava/lang/Object;
.source "SystemStatusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\r\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager$Companion;",
        "",
        "()V",
        "DELAY_FOR_NOTIFICATION",
        "",
        "getDELAY_FOR_NOTIFICATION",
        "()J",
        "DONT_REMIND_LOCATION_OFF",
        "",
        "getDONT_REMIND_LOCATION_OFF",
        "()Ljava/lang/String;",
        "DONT_REMIND_POWER_SAVING_OFF",
        "getDONT_REMIND_POWER_SAVING_OFF",
        "LOCATION_NOTIFICATION_TIMESTAMP",
        "getLOCATION_NOTIFICATION_TIMESTAMP",
        "POWER_SAVING_NOTIFICATION_TIMESTAMP",
        "getPOWER_SAVING_NOTIFICATION_TIMESTAMP",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDELAY_FOR_NOTIFICATION()J
    .locals 2

    .line 17
    invoke-static {}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->access$getDELAY_FOR_NOTIFICATION$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDONT_REMIND_LOCATION_OFF()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    invoke-static {}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->access$getDONT_REMIND_LOCATION_OFF$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDONT_REMIND_POWER_SAVING_OFF()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    invoke-static {}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->access$getDONT_REMIND_POWER_SAVING_OFF$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLOCATION_NOTIFICATION_TIMESTAMP()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    invoke-static {}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->access$getLOCATION_NOTIFICATION_TIMESTAMP$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPOWER_SAVING_NOTIFICATION_TIMESTAMP()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    invoke-static {}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->access$getPOWER_SAVING_NOTIFICATION_TIMESTAMP$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
