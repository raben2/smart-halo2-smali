.class public Lcom/instabug/crash/a;
.super Ljava/lang/Object;
.source "InstabugUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/crash/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/crash/c/a;Lorg/json/JSONObject;Landroid/content/Context;)Lcom/instabug/crash/c/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/crash/c/a;->a(Ljava/lang/String;)Lcom/instabug/crash/c/a;

    .line 10
    sget-object p2, Lcom/instabug/crash/c/a$a;->READY_TO_BE_SENT:Lcom/instabug/crash/c/a$a;

    invoke-virtual {p1, p2}, Lcom/instabug/crash/c/a;->a(Lcom/instabug/crash/c/a$a;)Lcom/instabug/crash/c/a;

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Lcom/instabug/crash/c/a;->a(Z)Lcom/instabug/crash/c/a;

    .line 13
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 14
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->size()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 15
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 17
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-static {p3, v1, v0}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getNewFileAttachmentUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1, v0}, Lcom/instabug/crash/c/a;->a(Landroid/net/Uri;)Lcom/instabug/crash/c/a;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "threadName"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-string v4, "threadId"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    const-string v3, "threadPriority"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "threadState"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 34
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v3

    const-string v4, "maxPriority"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result p1

    const-string v3, "activeCount"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "threadGroup"

    .line 37
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "thread"

    .line 40
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 41
    invoke-static {p2, p1}, Lcom/instabug/crash/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "error"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_DELETE:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/instabug/crash/c/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/instabug/library/internal/storage/DiskUtils;->createStateTextFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object p1

    new-instance v1, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    .line 4
    invoke-virtual {p2}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/model/State;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/instabug/library/internal/storage/DiskUtils;->writeOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->execute()Landroid/net/Uri;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/model/State;->setUri(Landroid/net/Uri;)V

    .line 8
    invoke-static {p2}, Lcom/instabug/crash/b/b;->b(Lcom/instabug/crash/c/a;)J

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.facebook.react.modules"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/instabug/library/model/Report;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/instabug/library/model/Report;

    invoke-direct {v1}, Lcom/instabug/library/model/Report;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/instabug/library/model/Report$OnReportCreatedListener;->onReportCreated(Lcom/instabug/library/model/Report;)V

    :cond_0
    return-object v1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->CRASH_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/crash/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "InstabugUncaughtExceptionHandler"

    .line 8
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instabug Caught an Unhandled Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v0, v1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 15
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/instabug/crash/a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 20
    :goto_0
    invoke-static {}, Lcom/instabug/crash/d/a;->b()Lcom/instabug/crash/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/crash/d/a;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->autoScreenRecordingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/instabug/crash/a;->a()V

    .line 25
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/instabug/crash/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    iget-object v0, p0, Lcom/instabug/crash/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 30
    :cond_3
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "InstabugUncaughtExceptionHandler"

    const-string v1, "Instabug context is null while persisting crash"

    .line 32
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_4
    new-instance v2, Lcom/instabug/crash/c/a$b;

    invoke-direct {v2}, Lcom/instabug/crash/c/a$b;-><init>()V

    invoke-static {v1}, Lcom/instabug/library/model/State;->getState(Landroid/content/Context;)Lcom/instabug/library/model/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/crash/c/a$b;->a(Lcom/instabug/library/model/State;)Lcom/instabug/crash/c/a;

    move-result-object v2

    .line 36
    invoke-virtual {p0, v2, v0, v1}, Lcom/instabug/crash/a;->a(Lcom/instabug/crash/c/a;Lorg/json/JSONObject;Landroid/content/Context;)Lcom/instabug/crash/c/a;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/instabug/crash/a;->b()Lcom/instabug/library/model/Report;

    move-result-object v2

    .line 39
    invoke-virtual {v0}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/instabug/library/util/ReportHelper;->update(Lcom/instabug/library/model/State;Lcom/instabug/library/model/Report;)V

    .line 41
    invoke-virtual {v0}, Lcom/instabug/crash/c/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->encryptAttachments(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 44
    :try_start_3
    invoke-virtual {p0, v1, v0}, Lcom/instabug/crash/a;->a(Landroid/content/Context;Lcom/instabug/crash/c/a;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "InstabugUncaughtExceptionHandler"

    .line 48
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncaughtException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "InstabugUncaughtExceptionHandler"

    .line 49
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncaughtException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const-string v0, "InstabugUncaughtExceptionHandler"

    const-string v1, "Crash persisted for upload at next startup"

    .line 53
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IB-UnCaughtException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_2
    iget-object v0, p0, Lcom/instabug/crash/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_5

    .line 60
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method
