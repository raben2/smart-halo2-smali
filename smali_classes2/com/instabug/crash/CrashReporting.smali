.class public Lcom/instabug/crash/CrashReporting;
.super Ljava/lang/Object;
.source "CrashReporting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashReporting"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/instabug/crash/c/a;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/instabug/crash/CrashReporting;->createStateTextFile(Landroid/content/Context;Lcom/instabug/crash/c/a;Ljava/io/File;)V

    return-void
.end method

.method public static addCrashAttachments(Landroid/content/Context;Lcom/instabug/crash/c/a;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-static {p0, v2, v1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getNewFileAttachmentUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p1, v1}, Lcom/instabug/crash/c/a;->a(Landroid/net/Uri;)Lcom/instabug/crash/c/a;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static createFormattedException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/instabug/crash/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 5
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x1

    .line 8
    invoke-static {v0, p0}, Lcom/instabug/crash/CrashReporting;->reportException(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static createStateTextFile(Landroid/content/Context;Lcom/instabug/crash/c/a;Ljava/io/File;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/instabug/crash/c/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object p0

    new-instance v0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    .line 5
    invoke-virtual {p1}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/instabug/library/internal/storage/DiskUtils;->writeOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->execute()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/instabug/library/model/State;->setUri(Landroid/net/Uri;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/crash/c/a;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->encryptAttachments(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "CrashReporting"

    const-string p2, "error while creating state text file"

    .line 13
    invoke-static {p1, p2, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static deleteAutoScreenRecording()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_DELETE:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static getCrash(Lorg/json/JSONObject;ZLcom/instabug/library/model/State;)Lcom/instabug/crash/c/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/crash/c/a$b;

    invoke-direct {v0}, Lcom/instabug/crash/c/a$b;-><init>()V

    invoke-virtual {v0, p2}, Lcom/instabug/crash/c/a$b;->a(Lcom/instabug/library/model/State;)Lcom/instabug/crash/c/a;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/instabug/crash/c/a;->a(Ljava/lang/String;)Lcom/instabug/crash/c/a;

    .line 3
    sget-object p0, Lcom/instabug/crash/c/a$a;->READY_TO_BE_SENT:Lcom/instabug/crash/c/a$a;

    invoke-virtual {p2, p0}, Lcom/instabug/crash/c/a;->a(Lcom/instabug/crash/c/a$a;)Lcom/instabug/crash/c/a;

    .line 4
    invoke-virtual {p2, p1}, Lcom/instabug/crash/c/a;->a(Z)Lcom/instabug/crash/c/a;

    return-object p2
.end method

.method public static reportException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/instabug/library/APIBuildChecker;->check()V

    .line 2
    sget-object v0, Lcom/instabug/library/Feature;->CRASH_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/instabug/crash/CrashReporting;->createFormattedException(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static reportException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/instabug/library/APIBuildChecker;->check()V

    .line 18
    sget-object v0, Lcom/instabug/library/Feature;->CRASH_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_1

    return-void

    .line 21
    :cond_1
    invoke-static {p0, p1}, Lcom/instabug/crash/CrashReporting;->createFormattedException(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private static reportException(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/instabug/library/Feature;->CRASH_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/instabug/crash/d/a;->b()Lcom/instabug/crash/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/crash/d/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->autoScreenRecordingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {}, Lcom/instabug/crash/CrashReporting;->deleteAutoScreenRecording()V

    .line 16
    :cond_2
    new-instance v0, Lcom/instabug/crash/CrashReporting$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/crash/CrashReporting$a;-><init>(Lorg/json/JSONObject;Z)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static reportUncaughtException(Lorg/json/JSONObject;)V
    .locals 1
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/instabug/crash/CrashReporting;->reportException(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static setAnrState(Lcom/instabug/library/Feature$State;)V
    .locals 4
    .param p0    # Lcom/instabug/library/Feature$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CrashReporting"

    .line 2
    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p0, v1, :cond_0

    const-string p0, "ANR wasn\'t enabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    goto :goto_0

    :cond_0
    const-string p0, "ANR wasn\'t disabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 7
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 8
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 9
    invoke-virtual {v2, p0}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 10
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 14
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/instabug/library/Feature;->CRASH_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_2

    const-string p0, "CrashReporting"

    const-string v0, "Can not enable ANR reporting while Crash reporting is disabled"

    .line 16
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_2
    sget-object v0, Lcom/instabug/library/Feature;->ANR_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v0, p0}, Lcom/instabug/library/core/InstabugCore;->setFeatureState(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 20
    new-instance p0, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    const-string v0, "features"

    const-string v1, "updated"

    invoke-direct {p0, v0, v1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventPublisher;->post(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    return-void
.end method

.method public static setState(Lcom/instabug/library/Feature$State;)V
    .locals 4
    .param p0    # Lcom/instabug/library/Feature$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CrashReporting"

    .line 2
    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p0, v1, :cond_0

    const-string p0, "Crash reporting wasn\'t enabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    goto :goto_0

    :cond_0
    const-string p0, "Crash reporting wasn\'t disabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 7
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 8
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 9
    invoke-virtual {v2, p0}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 10
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 14
    sget-object v0, Lcom/instabug/library/Feature;->CRASH_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v0, p0}, Lcom/instabug/library/core/InstabugCore;->setFeatureState(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 15
    new-instance p0, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    const-string v0, "features"

    const-string v1, "updated"

    invoke-direct {p0, v0, v1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventPublisher;->post(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    return-void
.end method
