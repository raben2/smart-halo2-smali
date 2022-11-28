.class public final Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;
.super Ljava/lang/Object;
.source "SystemStatusManager.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016J\u0008\u0010\u0012\u001a\u00020\u000cH\u0016J\u0008\u0010\u0013\u001a\u00020\u000fH\u0016J\u0008\u0010\u0014\u001a\u00020\u000fH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;",
        "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
        "context",
        "Landroid/content/Context;",
        "appStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V",
        "getAppStorageManager",
        "()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
        "getContext",
        "()Landroid/content/Context;",
        "dontRemindLocationOn",
        "",
        "dontRemindPowerSaving",
        "isLocationOn",
        "",
        "isPowerSaverOn",
        "setHasViewedLocationNotification",
        "setHasViewedPowerSavingNotification",
        "shouldNotifyLocationOff",
        "shouldNotifyPowerSaving",
        "Companion",
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
.field public static final Companion:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager$Companion;

# The value of this static final field might be set in the static constructor
.field private static final DELAY_FOR_NOTIFICATION:J = 0x15180L

# The value of this static final field might be set in the static constructor
.field private static final DONT_REMIND_LOCATION_OFF:Ljava/lang/String; = "DONT_REMIND_POWER_SAVING_OFF"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final DONT_REMIND_POWER_SAVING_OFF:Ljava/lang/String; = "DONT_REMIND_POWER_SAVING_OFF"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final LOCATION_NOTIFICATION_TIMESTAMP:Ljava/lang/String; = "POWER_SAVING_NOTIFICATION_TIMESTAMP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final POWER_SAVING_NOTIFICATION_TIMESTAMP:Ljava/lang/String; = "POWER_SAVING_NOTIFICATION_TIMESTAMP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->Companion:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager$Companion;

    const-wide/32 v0, 0x15180

    .line 17
    sput-wide v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DELAY_FOR_NOTIFICATION:J

    const-string v0, "DONT_REMIND_POWER_SAVING_OFF"

    .line 18
    sput-object v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DONT_REMIND_POWER_SAVING_OFF:Ljava/lang/String;

    const-string v0, "POWER_SAVING_NOTIFICATION_TIMESTAMP"

    .line 19
    sput-object v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->POWER_SAVING_NOTIFICATION_TIMESTAMP:Ljava/lang/String;

    const-string v0, "DONT_REMIND_POWER_SAVING_OFF"

    .line 20
    sput-object v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DONT_REMIND_LOCATION_OFF:Ljava/lang/String;

    const-string v0, "POWER_SAVING_NOTIFICATION_TIMESTAMP"

    .line 21
    sput-object v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->LOCATION_NOTIFICATION_TIMESTAMP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appStorageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    return-void
.end method

.method public static final synthetic access$getDELAY_FOR_NOTIFICATION$cp()J
    .locals 2

    .line 13
    sget-wide v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DELAY_FOR_NOTIFICATION:J

    return-wide v0
.end method

.method public static final synthetic access$getDONT_REMIND_LOCATION_OFF$cp()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DONT_REMIND_LOCATION_OFF:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDONT_REMIND_POWER_SAVING_OFF$cp()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DONT_REMIND_POWER_SAVING_OFF:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLOCATION_NOTIFICATION_TIMESTAMP$cp()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->LOCATION_NOTIFICATION_TIMESTAMP:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPOWER_SAVING_NOTIFICATION_TIMESTAMP$cp()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->POWER_SAVING_NOTIFICATION_TIMESTAMP:Ljava/lang/String;

    return-object v0
.end method

.method private final isLocationOn()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/location/LocationManager;

    .line 62
    invoke-static {v0}, Landroidx/core/location/LocationManagerCompat;->isLocationEnabled(Landroid/location/LocationManager;)Z

    move-result v0

    return v0

    .line 60
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final isPowerSaverOn()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/os/PowerManager;

    .line 41
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0

    .line 40
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dontRemindLocationOn()V
    .locals 3

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    sget-object v1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DONT_REMIND_LOCATION_OFF:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setBooleanItem(Ljava/lang/String;Z)V

    return-void
.end method

.method public dontRemindPowerSaving()V
    .locals 3

    .line 36
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    sget-object v1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DONT_REMIND_POWER_SAVING_OFF:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setBooleanItem(Ljava/lang/String;Z)V

    return-void
.end method

.method public final getAppStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setHasViewedLocationNotification()V
    .locals 4

    .line 52
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    sget-object v1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->LOCATION_NOTIFICATION_TIMESTAMP:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHasViewedPowerSavingNotification()V
    .locals 4

    .line 32
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    sget-object v1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->POWER_SAVING_NOTIFICATION_TIMESTAMP:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldNotifyLocationOff()Z
    .locals 6

    .line 45
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    sget-object v1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->LOCATION_NOTIFICATION_TIMESTAMP:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 46
    iget-object v2, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    sget-object v3, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DONT_REMIND_LOCATION_OFF:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-wide v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DELAY_FOR_NOTIFICATION:J

    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    .line 48
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->isLocationOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public shouldNotifyPowerSaving()Z
    .locals 6

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    sget-object v1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->POWER_SAVING_NOTIFICATION_TIMESTAMP:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 26
    iget-object v2, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    sget-object v3, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DONT_REMIND_POWER_SAVING_OFF:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-wide v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->DELAY_FOR_NOTIFICATION:J

    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    .line 28
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;->isPowerSaverOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method
