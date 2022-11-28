.class public Lcom/instabug/library/model/State$Builder;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/model/State$Builder;->getConsoleLog()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/model/State$Builder;->getConsoleLog(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/model/State$Builder;->getVisualUserSteps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getConsoleLog()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/a;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature;->CONSOLE_LOGS:Lcom/instabug/library/Feature;

    invoke-virtual {v1, v2}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_4

    const/16 v1, 0x2bc

    .line 8
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logcat -v time -d "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 12
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit16 v1, v3, -0x2bc

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x12

    if-le v3, v5, :cond_2

    .line 28
    new-instance v3, Lcom/instabug/library/model/a;

    invoke-direct {v3}, Lcom/instabug/library/model/a;-><init>()V

    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/instabug/library/model/a;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-static {v5}, Lcom/instabug/library/model/a;->b(Ljava/lang/String;)J

    move-result-wide v5

    .line 35
    invoke-virtual {v3, v5, v6}, Lcom/instabug/library/model/a;->a(J)V

    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "State"

    const-string v3, "Could not read logcat log"

    .line 44
    invoke-static {v2, v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v0
.end method

.method private static getConsoleLog(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/a;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/model/State$Builder;->getConsoleLog()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getInstabugLog()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->INSTABUG_LOGS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getLogs()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "State"

    const-string v2, "Got error while parsing user events logs"

    .line 8
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "State"

    const-string v1, "Running low on memory. Excluding UserEvents serialization from state builder."

    .line 11
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPushNotificationToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReportedAt()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSessionProfilerTimeline()Lcom/instabug/library/n/b/a/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/n/a;->d()Lcom/instabug/library/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/n/a;->a()Lcom/instabug/library/n/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method private getTags()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getTagsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserData()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getUserData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserEmail()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserEvents()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/instabug/library/logging/InstabugUserEventLogger;->getInstance()Lcom/instabug/library/logging/InstabugUserEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/logging/InstabugUserEventLogger;->getUserEvents()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/user/UserEvent;->toJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "State"

    const-string v2, "Got error while parsing user events logs"

    .line 6
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-string v0, "State"

    const-string v1, "Running low on memory. Excluding UserEvents serialization from state builder."

    .line 9
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const-string v0, "[]"

    return-object v0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserSteps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/j;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/e;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getVisualUserSteps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/visualusersteps/VisualUserStep;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/h;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build(Z)Lcom/instabug/library/model/State;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/model/State;

    invoke-direct {v0}, Lcom/instabug/library/model/State;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$300(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setLocale(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getActiveSessionDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/model/State;->setDuration(J)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setDevice(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->isDeviceRooted()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$400(Lcom/instabug/library/model/State;Z)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getOS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setOS(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setCarrier(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getStartedActivitiesCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "foreground"

    goto :goto_0

    :cond_0
    const-string v1, "background"

    :goto_0
    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$500(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 11
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setAppVersion(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 12
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setAppPackageName(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 13
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getBatteryLevel(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setBatteryLevel(I)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 14
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getBatteryState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setBatteryState(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 15
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getWifiState(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$600(Lcom/instabug/library/model/State;Z)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 16
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$700(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 17
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getFreeMemory(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/model/State;->setFreeMemory(J)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 18
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$800(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 19
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/model/State;->setTotalMemory(J)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getFreeStorage()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$900(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getUsedStorage()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$1000(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getTotalStorage()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$1100(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 23
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getScreenDensity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setScreenDensity(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 24
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setScreenSize(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 25
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getScreenOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setScreenOrientation(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getCurrentView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setCurrentView(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/instabug/library/model/State$Builder;->getConsoleLog()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$1200(Lcom/instabug/library/model/State;Ljava/util/ArrayList;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getUserSteps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$1300(Lcom/instabug/library/model/State;Ljava/util/ArrayList;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 29
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserEmail(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 30
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserName(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 31
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setPushToken(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 32
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserData(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 33
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getReportedAt()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$1400(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 34
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setTags(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->getSDKUserAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserAttributes(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/instabug/library/model/State$Builder;->getNetworkLogs()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$1500(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 37
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getUserEvents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserEvents(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 38
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getSessionProfilerTimeline()Lcom/instabug/library/n/b/a/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$1600(Lcom/instabug/library/model/State;Lcom/instabug/library/n/b/a/e;)Lcom/instabug/library/model/State;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getInstabugLog()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getInstabugLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/library/model/State;->setInstabugLog(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public buildInternalState()Lcom/instabug/library/model/State;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/library/model/State;

    invoke-direct {v0}, Lcom/instabug/library/model/State;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$300(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setLocale(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getActiveSessionDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/model/State;->setDuration(J)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setDevice(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->isDeviceRooted()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$400(Lcom/instabug/library/model/State;Z)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getOS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setOS(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setCarrier(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getStartedActivitiesCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "foreground"

    goto :goto_0

    :cond_0
    const-string v1, "background"

    :goto_0
    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$500(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 11
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setAppVersion(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 12
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setAppPackageName(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 13
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getBatteryLevel(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setBatteryLevel(I)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 14
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getBatteryState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setBatteryState(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 15
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getWifiState(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$600(Lcom/instabug/library/model/State;Z)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 16
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/model/State;->access$700(Lcom/instabug/library/model/State;Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 17
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getFreeMemory(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/model/State;->setFreeMemory(J)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 18
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$800(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 19
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/model/State;->setTotalMemory(J)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getFreeStorage()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$900(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getUsedStorage()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$1000(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getTotalStorage()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$1100(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 23
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getScreenDensity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setScreenDensity(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 24
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setScreenSize(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    .line 25
    invoke-static {v1}, Lcom/instabug/library/util/DeviceStateProvider;->getScreenOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setScreenOrientation(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getCurrentView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setCurrentView(Ljava/lang/String;)Lcom/instabug/library/model/State;

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lcom/instabug/library/model/State$Builder;->getReportedAt()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/library/model/State;->access$1400(Lcom/instabug/library/model/State;J)Lcom/instabug/library/model/State;

    move-result-object v0

    return-object v0
.end method

.method public formatSessionDuration(J)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v1, p1

    .line 3
    rem-int/lit8 v1, v1, 0x3c

    const-wide/16 v2, 0x3c

    .line 4
    div-long/2addr p1, v2

    long-to-int v4, p1

    .line 5
    rem-int/lit8 v4, v4, 0x3c

    .line 6
    div-long/2addr p1, v2

    long-to-int p2, p1

    .line 7
    rem-int/lit8 p2, p2, 0x3c

    const/16 p1, 0x9

    if-gt p2, p1, :cond_0

    const-string v2, "0"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gt v4, p1, :cond_1

    const-string p2, "0"

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gt v1, p1, :cond_2

    const-string p1, "0"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkLogs()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/State$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/library/util/memory/MemoryGuard;->from(Landroid/content/Context;)Lcom/instabug/library/util/memory/MemoryGuard;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/logging/b;->a(Lcom/instabug/library/util/memory/MemoryGuard;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
