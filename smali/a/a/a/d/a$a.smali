.class public La/a/a/d/a$a;
.super Ljava/lang/Object;
.source "Anr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(La/a/a/d/a;)V
    .locals 3

    .line 35
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {v0}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/instabug/library/Feature;->USER_EVENTS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 38
    :try_start_0
    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->updateUserEvents()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Got error while parsing user events logs"

    .line 40
    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :cond_0
    :goto_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 45
    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getTagsAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setTags(Ljava/lang/String;)Lcom/instabug/library/model/State;

    .line 47
    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->updateConsoleLog()V

    .line 48
    sget-object v0, Lcom/instabug/library/Feature;->USER_DATA:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_1

    .line 50
    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserData(Ljava/lang/String;)Lcom/instabug/library/model/State;

    .line 52
    :cond_1
    sget-object v0, Lcom/instabug/library/Feature;->INSTABUG_LOGS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_2

    .line 54
    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getLogs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setInstabugLog(Ljava/lang/String;)V

    .line 57
    :cond_2
    sget-object v0, Lcom/instabug/library/Feature;->REPORT_PHONE_NUMBER:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->getCustomUserAttribute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getCustomUserAttribute()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IBG_phone_number"

    .line 61
    invoke-static {v2, v1}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->getSDKUserAttributesAndAppendToIt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserAttributes(Ljava/lang/String;)Lcom/instabug/library/model/State;

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->getSDKUserAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserAttributes(Ljava/lang/String;)Lcom/instabug/library/model/State;

    .line 68
    :goto_1
    invoke-virtual {p1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/model/State;->updateVisualUserSteps()V

    return-void
.end method


# virtual methods
.method public a()La/a/a/d/a;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Couldn\'t create a new instance of ANR due to a null context."

    .line 3
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "ANRError: Application Not Responding for at least 5000 ms."

    .line 6
    invoke-static {v1}, Lcom/instabug/library/util/threading/ThreadUtils;->getMainThreadData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/instabug/library/util/threading/ThreadUtils;->getThreadsData()Lorg/json/JSONArray;

    move-result-object v2

    .line 8
    new-instance v3, La/a/a/d/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, La/a/a/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-direct {p0, v3}, La/a/a/d/a$a;->a(La/a/a/d/a;)V

    .line 12
    invoke-static {v0}, Lcom/instabug/library/internal/storage/DiskUtils;->createStateTextFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 13
    invoke-static {v0}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object v2

    new-instance v4, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    .line 14
    invoke-virtual {v3}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instabug/library/model/State;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/instabug/library/internal/storage/DiskUtils;->writeOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->execute()Landroid/net/Uri;

    move-result-object v1

    .line 16
    invoke-virtual {v3}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instabug/library/model/State;->setUri(Landroid/net/Uri;)V

    .line 19
    :cond_1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/util/ReportHelper;->getReport(Lcom/instabug/library/model/Report$OnReportCreatedListener;)Lcom/instabug/library/model/Report;

    move-result-object v1

    .line 20
    invoke-virtual {v3}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/instabug/library/util/ReportHelper;->update(Lcom/instabug/library/model/State;Lcom/instabug/library/model/Report;)V

    .line 23
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 24
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 25
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-static {v0, v4, v2}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getNewFileAttachmentUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {v3, v2}, La/a/a/d/a;->a(Landroid/net/Uri;)La/a/a/d/a;

    goto :goto_0

    :cond_3
    return-object v3
.end method
