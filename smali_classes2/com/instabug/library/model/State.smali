.class public Lcom/instabug/library/model/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/model/State$Builder;,
        Lcom/instabug/library/model/State$StateItem;,
        Lcom/instabug/library/model/State$Action;
    }
.end annotation


# static fields
.field public static final KEY_APP_PACKAGE_NAME:Ljava/lang/String; = "bundle_id"

.field private static final KEY_APP_STATUS:Ljava/lang/String; = "app_status"

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_state"

.field public static final KEY_CARRIER:Ljava/lang/String; = "carrier"

.field public static final KEY_CONSOLE_LOG:Ljava/lang/String; = "console_log"

.field public static final KEY_CURRENT_VIEW:Ljava/lang/String; = "current_view"

.field public static final KEY_DENSITY:Ljava/lang/String; = "density"

.field public static final KEY_DEVICE:Ljava/lang/String; = "device"

.field public static final KEY_DEVICE_ROOTED:Ljava/lang/String; = "device_rooted"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_INSTABUG_LOG:Ljava/lang/String; = "instabug_log"

.field public static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_MEMORY_FREE:Ljava/lang/String; = "memory_free"

.field private static final KEY_MEMORY_TOTAL:Ljava/lang/String; = "memory_total"

.field private static final KEY_MEMORY_USED:Ljava/lang/String; = "memory_used"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_NETWORK_LOGS:Ljava/lang/String; = "network_log"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_OS:Ljava/lang/String; = "os"

.field public static final KEY_PUSH_TOKEN:Ljava/lang/String; = "push_token"

.field public static final KEY_REPORTED_AT:Ljava/lang/String; = "reported_at"

.field public static final KEY_SCREEN_SIZE:Ljava/lang/String; = "screen_size"

.field public static final KEY_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field public static final KEY_SESSIONS_PROFILER:Ljava/lang/String; = "sessions_profiler"

.field public static final KEY_STORAGE_FREE:Ljava/lang/String; = "storage_free"

.field public static final KEY_STORAGE_TOTAL:Ljava/lang/String; = "storage_total"

.field public static final KEY_STORAGE_USED:Ljava/lang/String; = "storage_used"

.field public static final KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final KEY_USER_ATTRIBUTES:Ljava/lang/String; = "user_attributes"

.field public static final KEY_USER_DATA:Ljava/lang/String; = "user_data"

.field public static final KEY_USER_EVENTS:Ljava/lang/String; = "user_events"

.field public static final KEY_USER_STEPS:Ljava/lang/String; = "user_steps"

.field public static final KEY_VISUAL_USER_STEPS:Ljava/lang/String; = "user_repro_steps"

.field public static final KEY_WIFI_SSID:Ljava/lang/String; = "wifi_ssid"

.field public static final KEY_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field private static final TAG:Ljava/lang/String; = "State"

.field static final VALUE_APP_STATUS_BACKGROUND:Ljava/lang/String; = "background"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final VALUE_APP_STATUS_FOREGROUND:Ljava/lang/String; = "foreground"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private OS:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ScreenOrientation:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private appPackageName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private appStatus:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private appVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private batteryLevel:I

.field private batteryState:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private carrier:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private consoleLog:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private currentView:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customUserAttribute:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private device:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private duration:J

.field private freeMemory:J

.field public freeStorage:J

.field private instabugLog:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isDeviceRooted:Z

.field private locale:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private networkLogs:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pushToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private reportedAt:J

.field private screenDensity:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private screenSize:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sdkVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sessionProfilerTimeline:Lcom/instabug/library/n/b/a/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tags:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private totalMemory:J

.field private totalStorage:J

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private usedMemory:J

.field private usedStorage:J

.field private userAttributes:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userData:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userEmail:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userEvents:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userSteps:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/j;",
            ">;"
        }
    .end annotation
.end field

.field private visualUserSteps:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/visualusersteps/VisualUserStep;",
            ">;"
        }
    .end annotation
.end field

.field private wifiSSID:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private wifiState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/model/State;->setUsedStorage(J)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/model/State;->setTotalStorage(J)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/instabug/library/model/State;Ljava/util/ArrayList;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setConsoleLog(Ljava/util/ArrayList;)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/instabug/library/model/State;Ljava/util/ArrayList;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setUserSteps(Ljava/util/ArrayList;)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/model/State;->setReportedAt(J)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setNetworkLogs(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/instabug/library/model/State;Lcom/instabug/library/n/b/a/e;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setSessionProfilerTimeline(Lcom/instabug/library/n/b/a/e;)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setSdkVersion(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/instabug/library/model/State;Z)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setIsDeviceRooted(Z)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setAppStatus(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/instabug/library/model/State;Z)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setWifiState(Z)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setWifiSSID(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/model/State;->setUsedMemory(J)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/model/State;->setFreeStorage(J)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method private getFreeStorage()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/State;->freeStorage:J

    return-wide v0
.end method

.method private getSessionProfilerTimeline()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->sessionProfilerTimeline:Lcom/instabug/library/n/b/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/n/b/a/e;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getState(Landroid/content/Context;)Lcom/instabug/library/model/State;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/model/State$Builder;

    invoke-direct {v0, p0}, Lcom/instabug/library/model/State$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Lcom/instabug/library/model/State$Builder;->build(Z)Lcom/instabug/library/model/State;

    move-result-object p0

    return-object p0
.end method

.method private static getTagsAsString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ", "

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setAppStatus(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->appStatus:Ljava/lang/String;

    return-object p0
.end method

.method private setConsoleLog(Ljava/util/ArrayList;)Lcom/instabug/library/model/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/a;",
            ">;)",
            "Lcom/instabug/library/model/State;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->consoleLog:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setFreeStorage(J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/model/State;->freeStorage:J

    return-object p0
.end method

.method private setIsDeviceRooted(Z)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/model/State;->isDeviceRooted:Z

    return-object p0
.end method

.method private setNetworkLogs(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->networkLogs:Ljava/lang/String;

    return-object p0
.end method

.method private setReportedAt(J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/model/State;->reportedAt:J

    return-object p0
.end method

.method private setSdkVersion(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method private setSessionProfilerTimeline(Lcom/instabug/library/n/b/a/e;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->sessionProfilerTimeline:Lcom/instabug/library/n/b/a/e;

    return-object p0
.end method

.method private setTotalStorage(J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/model/State;->totalStorage:J

    return-object p0
.end method

.method private setUsedMemory(J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/model/State;->usedMemory:J

    return-object p0
.end method

.method private setUsedStorage(J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/model/State;->usedStorage:J

    return-object p0
.end method

.method private setUserSteps(Ljava/util/ArrayList;)Lcom/instabug/library/model/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/j;",
            ">;)",
            "Lcom/instabug/library/model/State;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->userSteps:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setVisualUserSteps(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/visualusersteps/VisualUserStep;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->visualUserSteps:Ljava/util/ArrayList;

    return-void
.end method

.method private setWifiSSID(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->wifiSSID:Ljava/lang/String;

    return-object p0
.end method

.method private setWifiState(Z)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/model/State;->wifiState:Z

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/instabug/library/model/State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/instabug/library/model/State;

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getBatteryLevel()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getBatteryState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getBatteryState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getAppStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getAppStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getConsoleLog()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getConsoleLog()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getCurrentView()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getCurrentView()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getDuration()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getFreeMemory()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getFreeMemory()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 31
    invoke-direct {p1}, Lcom/instabug/library/model/State;->getFreeStorage()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/instabug/library/model/State;->getFreeStorage()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getOS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getOS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getReportedAt()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getReportedAt()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getScreenDensity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getScreenDensity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getScreenOrientation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getScreenOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getTotalMemory()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getTotalMemory()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getTotalStorage()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getTotalStorage()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getTags()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUsedMemory()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUsedMemory()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUsedStorage()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUsedStorage()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getPushToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getPushToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUserSteps()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserSteps()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getWifiSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->isDeviceRooted()Z

    move-result v0

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->isDeviceRooted()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->isWifiEnable()Z

    move-result v0

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->isWifiEnable()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getInstabugLog()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getInstabugLog()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUserAttributes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserAttributes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getNetworkLogs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getNetworkLogs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUserEvents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserEvents()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getVisualUserSteps()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getVisualUserSteps()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p1}, Lcom/instabug/library/model/State;->getSessionProfilerTimeline()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-direct {p0}, Lcom/instabug/library/model/State;->getSessionProfilerTimeline()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "bundle_id"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bundle_id"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setAppPackageName(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_0
    const-string p1, "app_version"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "app_version"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setAppVersion(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_1
    const-string p1, "battery_level"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "battery_level"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setBatteryLevel(I)Lcom/instabug/library/model/State;

    :cond_2
    const-string p1, "battery_state"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "battery_state"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setBatteryState(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_3
    const-string p1, "carrier"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "carrier"

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setCarrier(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_4
    const-string p1, "console_log"

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    new-instance p1, Lorg/json/JSONArray;

    const-string v1, "console_log"

    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/instabug/library/model/a;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setConsoleLog(Ljava/util/ArrayList;)Lcom/instabug/library/model/State;

    :cond_5
    const-string p1, "current_view"

    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "current_view"

    .line 18
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setCurrentView(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_6
    const-string p1, "density"

    .line 19
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "density"

    .line 20
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setScreenDensity(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_7
    const-string p1, "device"

    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "device"

    .line 22
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setDevice(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_8
    const-string p1, "device_rooted"

    .line 23
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "device_rooted"

    .line 24
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setIsDeviceRooted(Z)Lcom/instabug/library/model/State;

    :cond_9
    const-string p1, "duration"

    .line 25
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "duration"

    .line 26
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/library/model/State;->setDuration(J)Lcom/instabug/library/model/State;

    :cond_a
    const-string p1, "email"

    .line 27
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "email"

    .line 28
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setUserEmail(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_b
    const-string p1, "name"

    .line 29
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "name"

    .line 30
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setUserName(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_c
    const-string p1, "push_token"

    .line 32
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "push_token"

    .line 33
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setPushToken(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_d
    const-string p1, "instabug_log"

    .line 35
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "instabug_log"

    .line 36
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setInstabugLog(Ljava/lang/String;)V

    :cond_e
    const-string p1, "locale"

    .line 37
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "locale"

    .line 38
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setLocale(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_f
    const-string p1, "memory_free"

    .line 39
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "memory_free"

    .line 40
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/library/model/State;->setFreeMemory(J)Lcom/instabug/library/model/State;

    :cond_10
    const-string p1, "memory_total"

    .line 41
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "memory_total"

    .line 42
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/library/model/State;->setTotalMemory(J)Lcom/instabug/library/model/State;

    :cond_11
    const-string p1, "memory_used"

    .line 43
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "memory_used"

    .line 44
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instabug/library/model/State;->setUsedMemory(J)Lcom/instabug/library/model/State;

    :cond_12
    const-string p1, "orientation"

    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "orientation"

    .line 46
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setScreenOrientation(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_13
    const-string p1, "os"

    .line 47
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "os"

    .line 48
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setOS(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_14
    const-string p1, "app_status"

    .line 49
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "app_status"

    .line 50
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setAppStatus(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_15
    const-string p1, "reported_at"

    .line 51
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "reported_at"

    .line 52
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instabug/library/model/State;->setReportedAt(J)Lcom/instabug/library/model/State;

    :cond_16
    const-string p1, "screen_size"

    .line 53
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "screen_size"

    .line 54
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setScreenSize(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_17
    const-string p1, "sdk_version"

    .line 55
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "sdk_version"

    .line 56
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setSdkVersion(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_18
    const-string p1, "storage_free"

    .line 57
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "storage_free"

    .line 58
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instabug/library/model/State;->setFreeStorage(J)Lcom/instabug/library/model/State;

    :cond_19
    const-string p1, "storage_total"

    .line 59
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "storage_total"

    .line 60
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instabug/library/model/State;->setTotalStorage(J)Lcom/instabug/library/model/State;

    :cond_1a
    const-string p1, "storage_used"

    .line 61
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "storage_used"

    .line 62
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instabug/library/model/State;->setUsedStorage(J)Lcom/instabug/library/model/State;

    :cond_1b
    const-string p1, "tags"

    .line 63
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "tags"

    .line 64
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setTags(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_1c
    const-string p1, "user_data"

    .line 65
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "user_data"

    .line 66
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setUserData(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_1d
    const-string p1, "user_steps"

    .line 67
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 68
    new-instance p1, Lorg/json/JSONArray;

    const-string v1, "user_steps"

    .line 69
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lcom/instabug/library/model/j;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setUserSteps(Ljava/util/ArrayList;)Lcom/instabug/library/model/State;

    :cond_1e
    const-string p1, "wifi_ssid"

    .line 72
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "wifi_ssid"

    .line 73
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setWifiSSID(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_1f
    const-string p1, "wifi_state"

    .line 74
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "wifi_state"

    .line 75
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setWifiState(Z)Lcom/instabug/library/model/State;

    :cond_20
    const-string p1, "user_attributes"

    .line 76
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, "user_attributes"

    .line 77
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setUserAttributes(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_21
    const-string p1, "network_log"

    .line 78
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, "network_log"

    .line 79
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setNetworkLogs(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_22
    const-string p1, "user_events"

    .line 80
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    const-string p1, "user_events"

    .line 81
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/State;->setUserEvents(Ljava/lang/String;)Lcom/instabug/library/model/State;

    :cond_23
    const-string p1, "user_repro_steps"

    .line 82
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 83
    new-instance p1, Lorg/json/JSONArray;

    const-string v1, "user_repro_steps"

    .line 84
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setVisualUserSteps(Ljava/util/ArrayList;)V

    :cond_24
    const-string p1, "sessions_profiler"

    .line 88
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 89
    new-instance p1, Lorg/json/JSONObject;

    const-string v1, "sessions_profiler"

    .line 90
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/instabug/library/n/b/a/e;->a(Lorg/json/JSONObject;)Lcom/instabug/library/n/b/a/e;

    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setSessionProfilerTimeline(Lcom/instabug/library/n/b/a/e;)Lcom/instabug/library/model/State;

    :cond_25
    return-void
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getAppStatus()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->appStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/model/State;->batteryLevel:I

    return v0
.end method

.method public getBatteryState()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->batteryState:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getConsoleLog()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->consoleLog:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/instabug/library/model/a;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentView()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->currentView:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomUserAttribute()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->customUserAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/State;->duration:J

    return-wide v0
.end method

.method public getFreeMemory()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/State;->freeMemory:J

    return-wide v0
.end method

.method public getInstabugLog()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->instabugLog:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getLogsItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/State$StateItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "console_log"

    .line 3
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getConsoleLog()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "instabug_log"

    .line 7
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getInstabugLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "user_data"

    .line 11
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "network_log"

    .line 16
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getNetworkLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "user_events"

    .line 20
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserEvents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature;->TRACK_USER_STEPS:Lcom/instabug/library/Feature;

    invoke-virtual {v1, v2}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_0

    .line 26
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "user_steps"

    .line 27
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserSteps()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    invoke-virtual {v1, v2}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_1

    .line 33
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "user_repro_steps"

    .line 34
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getVisualUserSteps()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature;->SESSION_PROFILER:Lcom/instabug/library/Feature;

    invoke-virtual {v1, v2}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_2

    .line 41
    iget-object v1, p0, Lcom/instabug/library/model/State;->sessionProfilerTimeline:Lcom/instabug/library/n/b/a/e;

    if-eqz v1, :cond_2

    .line 42
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "sessions_profiler"

    .line 43
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/instabug/library/model/State;->getSessionProfilerTimeline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getNetworkLogs()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->networkLogs:Ljava/lang/String;

    return-object v0
.end method

.method public getOS()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->OS:Ljava/lang/String;

    return-object v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getReportedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/State;->reportedAt:J

    return-wide v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->screenDensity:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenOrientation()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->ScreenOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->screenSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStateItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/State$StateItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "bundle_id"

    .line 3
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "app_version"

    .line 7
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "battery_level"

    .line 11
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getBatteryLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "battery_state"

    .line 15
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getBatteryState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "carrier"

    .line 19
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "current_view"

    .line 23
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getCurrentView()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "density"

    .line 27
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getScreenDensity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "device"

    .line 31
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "device_rooted"

    .line 35
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->isDeviceRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "duration"

    .line 39
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "email"

    .line 43
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "name"

    .line 47
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "push_token"

    .line 51
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getPushToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "locale"

    .line 55
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "memory_free"

    .line 59
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getFreeMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "memory_total"

    .line 63
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getTotalMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "memory_used"

    .line 67
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUsedMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "orientation"

    .line 71
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getScreenOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "os"

    .line 75
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getOS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "reported_at"

    .line 79
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getReportedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "screen_size"

    .line 83
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "sdk_version"

    .line 87
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "storage_free"

    .line 91
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/instabug/library/model/State;->getFreeStorage()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "storage_total"

    .line 95
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getTotalStorage()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "storage_used"

    .line 99
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUsedStorage()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "tags"

    .line 103
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "wifi_ssid"

    .line 107
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getWifiSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "wifi_state"

    .line 111
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->isWifiEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "user_attributes"

    .line 115
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getUserAttributes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/instabug/library/model/State$StateItem;

    invoke-direct {v1}, Lcom/instabug/library/model/State$StateItem;-><init>()V

    const-string v2, "app_status"

    .line 119
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setKey(Ljava/lang/String;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getAppStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$StateItem;->setValue(Ljava/lang/Object;)Lcom/instabug/library/model/State$StateItem;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalMemory()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/State;->totalMemory:J

    return-wide v0
.end method

.method public getTotalStorage()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/State;->totalStorage:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUsedMemory()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/State;->usedMemory:J

    return-wide v0
.end method

.method public getUsedStorage()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/State;->usedStorage:J

    return-wide v0
.end method

.method public getUserAttributes()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->userAttributes:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEvents()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->userEvents:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSteps()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->userSteps:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/instabug/library/model/j;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getVisualUserSteps()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->visualUserSteps:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->toJsonString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getReportedAt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDeviceRooted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/model/State;->isDeviceRooted:Z

    return v0
.end method

.method public isWifiEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/model/State;->wifiState:Z

    return v0
.end method

.method public setAppPackageName(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->appPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setBatteryLevel(I)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/model/State;->batteryLevel:I

    return-object p0
.end method

.method public setBatteryState(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->batteryState:Ljava/lang/String;

    return-object p0
.end method

.method public setCarrier(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->carrier:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentView(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->currentView:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomUserAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->customUserAttribute:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->device:Ljava/lang/String;

    return-object p0
.end method

.method public setDuration(J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/model/State;->duration:J

    return-object p0
.end method

.method public setFreeMemory(J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/model/State;->freeMemory:J

    return-object p0
.end method

.method public setInstabugLog(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->instabugLog:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public setOS(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->OS:Ljava/lang/String;

    return-object p0
.end method

.method public setPushToken(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->pushToken:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenDensity(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->screenDensity:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenOrientation(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->ScreenOrientation:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenSize(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->screenSize:Ljava/lang/String;

    return-object p0
.end method

.method public setTags(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->tags:Ljava/lang/String;

    return-object p0
.end method

.method public setTags(Ljava/util/List;)Lcom/instabug/library/model/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/instabug/library/model/State;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/instabug/library/model/State;->getTagsAsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/model/State;->tags:Ljava/lang/String;

    return-object p0
.end method

.method public setTotalMemory(J)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/model/State;->totalMemory:J

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->uri:Landroid/net/Uri;

    return-void
.end method

.method public setUserAttributes(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->userAttributes:Ljava/lang/String;

    return-object p0
.end method

.method public setUserData(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->userData:Ljava/lang/String;

    return-object p0
.end method

.method public setUserEmail(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->userEmail:Ljava/lang/String;

    return-object p0
.end method

.method public setUserEvents(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->userEvents:Ljava/lang/String;

    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/instabug/library/model/State;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/State;->userName:Ljava/lang/String;

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getStateItems()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/library/model/State$StateItem;

    invoke-virtual {v4}, Lcom/instabug/library/model/State$StateItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instabug/library/model/State$StateItem;

    invoke-virtual {v5}, Lcom/instabug/library/model/State$StateItem;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->getLogsItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/model/State$StateItem;

    invoke-virtual {v3}, Lcom/instabug/library/model/State$StateItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/library/model/State$StateItem;

    invoke-virtual {v4}, Lcom/instabug/library/model/State$StateItem;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/model/State;->toJson()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something went wrong while getting state.toString()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "State"

    .line 6
    invoke-static {v2, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "error"

    return-object v0
.end method

.method public updateConsoleLog()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/model/State$Builder;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/model/State;->setConsoleLog(Ljava/util/ArrayList;)Lcom/instabug/library/model/State;

    return-void
.end method

.method public updateConsoleLog(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/instabug/library/model/State$Builder;->access$100(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/library/model/State;->setConsoleLog(Ljava/util/ArrayList;)Lcom/instabug/library/model/State;

    return-void
.end method

.method public updateUserEvents()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/logging/InstabugUserEventLogger;->getInstance()Lcom/instabug/library/logging/InstabugUserEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/logging/InstabugUserEventLogger;->getUserEvents()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/user/UserEvent;->toJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/instabug/library/model/State;->setUserEvents(Ljava/lang/String;)Lcom/instabug/library/model/State;

    return-void
.end method

.method public updateVisualUserSteps()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/model/State$Builder;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/model/State;->setVisualUserSteps(Ljava/util/ArrayList;)V

    return-void
.end method
