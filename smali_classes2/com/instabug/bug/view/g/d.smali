.class public Lcom/instabug/bug/view/g/d;
.super Ljava/lang/Object;
.source "DisclaimerHelper.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "#metadata-screen"

    const-string v1, "instabug-bug://instabug-disclaimer.com/disclaimer"

    .line 93
    invoke-static {p0, v0, v1}, Lcom/instabug/bug/l/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/view/g/a;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 6
    invoke-virtual {v1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 7
    invoke-virtual {v1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 9
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bundle_id"

    invoke-direct {v2, v4, v3}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_version"

    invoke-direct {v2, v4, v3}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getBatteryState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 18
    new-instance v2, Lcom/instabug/bug/view/g/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getBatteryLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getBatteryState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BATTERY"

    invoke-direct {v2, v4, v3}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 21
    :cond_2
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getCarrier()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 22
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getCarrier()Ljava/lang/String;

    move-result-object v3

    const-string v4, "carrier"

    invoke-direct {v2, v4, v3}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 25
    :cond_3
    invoke-static {}, Lcom/instabug/bug/view/g/d;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 26
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getConsoleLog()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "console_log"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/bug/view/g/a;->a(Z)Lcom/instabug/bug/view/g/a;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 29
    :cond_4
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getCurrentView()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 30
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getCurrentView()Ljava/lang/String;

    move-result-object v4

    const-string v5, "current_view"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 32
    :cond_5
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getScreenDensity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 33
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getScreenDensity()Ljava/lang/String;

    move-result-object v4

    const-string v5, "density"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 35
    :cond_6
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getDevice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 36
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getDevice()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 38
    :cond_7
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->isDeviceRooted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_rooted"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 39
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 40
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 41
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUserEmail()Ljava/lang/String;

    move-result-object v4

    const-string v5, "email"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 43
    :cond_8
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getInstabugLog()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 44
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getInstabugLog()Ljava/lang/String;

    move-result-object v4

    const-string v5, "instabug_log"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/bug/view/g/a;->a(Z)Lcom/instabug/bug/view/g/a;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 46
    :cond_9
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getLocale()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 47
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getLocale()Ljava/lang/String;

    move-result-object v4

    const-string v5, "locale"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 49
    :cond_a
    new-instance v2, Lcom/instabug/bug/view/g/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUsedMemory()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getTotalMemory()J

    move-result-wide v7

    long-to-float v5, v7

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MEMORY"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 51
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getNetworkLogs()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 52
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getNetworkLogs()Ljava/lang/String;

    move-result-object v4

    const-string v5, "network_log"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/bug/view/g/a;->a(Z)Lcom/instabug/bug/view/g/a;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 54
    :cond_b
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getScreenOrientation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 55
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getScreenOrientation()Ljava/lang/String;

    move-result-object v4

    const-string v5, "orientation"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 57
    :cond_c
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getOS()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 58
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getOS()Ljava/lang/String;

    move-result-object v4

    const-string v5, "os"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 60
    :cond_d
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getReportedAt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "reported_at"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 61
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 62
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getScreenSize()Ljava/lang/String;

    move-result-object v4

    const-string v5, "screen_size"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 64
    :cond_e
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 65
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdk_version"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 67
    :cond_f
    new-instance v2, Lcom/instabug/bug/view/g/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUsedStorage()J

    move-result-wide v7

    long-to-float v5, v7

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getTotalStorage()J

    move-result-wide v7

    long-to-float v5, v7

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "STORAGE"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 72
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUserAttributes()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 73
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUserAttributes()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_attributes"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/bug/view/g/a;->a(Z)Lcom/instabug/bug/view/g/a;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 75
    :cond_10
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUserData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 76
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUserData()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_data"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/bug/view/g/a;->a(Z)Lcom/instabug/bug/view/g/a;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 78
    :cond_11
    invoke-static {}, Lcom/instabug/bug/view/g/d;->d()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 79
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUserSteps()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_steps"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/bug/view/g/a;->a(Z)Lcom/instabug/bug/view/g/a;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 81
    :cond_12
    invoke-static {}, Lcom/instabug/bug/view/g/d;->c()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 82
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getVisualUserSteps()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_repro_steps"

    invoke-direct {v2, v5, v4}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/bug/view/g/a;->a(Z)Lcom/instabug/bug/view/g/a;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 84
    :cond_13
    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getWifiSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 85
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getWifiSSID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi_ssid"

    invoke-direct {v2, v4, v3}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    .line 87
    :cond_14
    new-instance v2, Lcom/instabug/bug/view/g/a;

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->isWifiEnable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "wifi_state"

    invoke-direct {v2, v3, v1}, Lcom/instabug/bug/view/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/instabug/bug/view/g/d;->a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V

    :cond_15
    return-object v0
.end method

.method static a(Lcom/instabug/bug/view/g/a;Ljava/util/ArrayList;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/bug/view/g/a;",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/view/g/a;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/instabug/bug/view/g/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/bug/view/g/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/instabug/bug/view/g/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{}"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/bug/view/g/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/instabug/bug/view/g/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/bug/view/g/a;->a(Ljava/lang/String;)Lcom/instabug/bug/view/g/a;

    .line 92
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "instabug-bug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "instabug-disclaimer.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/disclaimer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/instabug/bug/view/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->CONSOLE_LOGS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/instabug/library/Feature;->DISCLAIMER:Lcom/instabug/library/Feature;

    .line 3
    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object p0

    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->TRACK_USER_STEPS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
