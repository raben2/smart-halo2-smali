.class public Lcom/instabug/crash/network/InstabugCrashesUploaderService;
.super Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;
.source "InstabugCrashesUploaderService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->autoScreenRecordingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->autoScreenRecordingMaxDuration()I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/crash/b/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/crash/c/a;

    .line 10
    invoke-virtual {v2}, Lcom/instabug/crash/c/a;->c()Lcom/instabug/crash/c/a$a;

    move-result-object v3

    sget-object v4, Lcom/instabug/crash/c/a$a;->WAITING_FOR_SCREEN_RECORDING_TO_BE_TRIMMED:Lcom/instabug/crash/c/a$a;

    if-ne v3, v4, :cond_1

    .line 11
    invoke-virtual {v2}, Lcom/instabug/crash/c/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/library/model/Attachment;

    .line 12
    invoke-virtual {v4}, Lcom/instabug/library/model/Attachment;->isEncrypted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    invoke-static {v4}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->decryptAttachmentAndUpdateDb(Lcom/instabug/library/model/Attachment;)Z

    move-result v5

    .line 14
    invoke-virtual {v4, v5}, Lcom/instabug/library/model/Attachment;->setEncrypted(Z)V

    .line 17
    :cond_3
    invoke-virtual {v4}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instabug/library/model/Attachment$Type;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/instabug/library/model/Attachment$Type;->AUTO_SCREEN_RECORDING_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v6}, Lcom/instabug/library/model/Attachment$Type;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    invoke-virtual {v4}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 19
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/instabug/library/internal/storage/AttachmentManager;->getAutoScreenRecordingFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 22
    invoke-static {v3, v5, v0}, Lcom/instabug/library/internal/video/InstabugVideoUtils;->startTrim(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 28
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/instabug/library/model/Attachment;->setName(Ljava/lang/String;)Lcom/instabug/library/model/Attachment;

    .line 30
    :cond_4
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 31
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/instabug/library/model/Attachment;->setLocalPath(Ljava/lang/String;)Lcom/instabug/library/model/Attachment;

    :cond_5
    const-string v5, "InstabugCrashesUploaderService"

    const-string v6, "auto screen recording trimmed"

    .line 34
    invoke-static {v5, v6}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v5, Lcom/instabug/crash/c/a$a;->READY_TO_BE_SENT:Lcom/instabug/crash/c/a$a;

    invoke-virtual {v2, v5}, Lcom/instabug/crash/c/a;->a(Lcom/instabug/crash/c/a$a;)Lcom/instabug/crash/c/a;

    .line 38
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 39
    sget-object v6, Lcom/instabug/crash/c/a$a;->READY_TO_BE_SENT:Lcom/instabug/crash/c/a$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "crash_state"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Lcom/instabug/crash/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/instabug/crash/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 43
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "local_path"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4}, Lcom/instabug/library/model/Attachment;->getId()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/instabug/library/internal/storage/cache/AttachmentsDbHelper;->update(JLandroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 3
    const-class v0, Lcom/instabug/crash/network/InstabugCrashesUploaderService;

    const/16 v1, 0xa16

    invoke-static {p0, v0, v1, p1}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->enqueueInstabugWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/instabug/crash/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/crash/c/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attachments related to crash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Lcom/instabug/crash/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugCrashesUploaderService"

    .line 48
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/instabug/crash/network/a;->a()Lcom/instabug/crash/network/a;

    move-result-object v0

    new-instance v1, Lcom/instabug/crash/network/InstabugCrashesUploaderService$c;

    invoke-direct {v1, p0, p1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService$c;-><init>(Lcom/instabug/crash/network/InstabugCrashesUploaderService;Lcom/instabug/crash/c/a;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/instabug/crash/network/a;->b(Landroid/content/Context;Lcom/instabug/crash/c/a;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/crash/network/InstabugCrashesUploaderService;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->b()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/crash/network/InstabugCrashesUploaderService;Lcom/instabug/crash/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->b(Lcom/instabug/crash/c/a;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating last_crash_time to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InstabugCrashesUploaderService"

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/instabug/crash/e/a;->c()Lcom/instabug/crash/e/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instabug/crash/e/a;->a(J)V

    return-void
.end method

.method private b(Lcom/instabug/crash/c/a;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START uploading all logs related to this crash id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/instabug/crash/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugCrashesUploaderService"

    .line 4
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/instabug/crash/network/a;->a()Lcom/instabug/crash/network/a;

    move-result-object v0

    new-instance v1, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;

    invoke-direct {v1, p0, p1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;-><init>(Lcom/instabug/crash/network/InstabugCrashesUploaderService;Lcom/instabug/crash/c/a;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/instabug/crash/network/a;->c(Landroid/content/Context;Lcom/instabug/crash/c/a;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/crash/network/InstabugCrashesUploaderService;Lcom/instabug/crash/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->a(Lcom/instabug/crash/c/a;)V

    return-void
.end method

.method private c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/crash/b/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " crashes in cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InstabugCrashesUploaderService"

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/crash/c/a;

    .line 7
    invoke-virtual {v1}, Lcom/instabug/crash/c/a;->c()Lcom/instabug/crash/c/a$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/crash/c/a$a;->READY_TO_BE_SENT:Lcom/instabug/crash/c/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading crash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/instabug/crash/c/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstabugCrashesUploaderService"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/instabug/crash/network/a;->a()Lcom/instabug/crash/network/a;

    move-result-object v2

    new-instance v3, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;

    invoke-direct {v3, p0, v1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;-><init>(Lcom/instabug/crash/network/InstabugCrashesUploaderService;Lcom/instabug/crash/c/a;)V

    invoke-virtual {v2, p0, v1, v3}, Lcom/instabug/crash/network/a;->a(Landroid/content/Context;Lcom/instabug/crash/c/a;Lcom/instabug/library/network/Request$Callbacks;)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v1}, Lcom/instabug/crash/c/a;->c()Lcom/instabug/crash/c/a$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/crash/c/a$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/crash/c/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/instabug/crash/c/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already uploaded but has unsent logs, uploading now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstabugCrashesUploaderService"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, v1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->b(Lcom/instabug/crash/c/a;)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v1}, Lcom/instabug/crash/c/a;->c()Lcom/instabug/crash/c/a$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/crash/c/a$a;->ATTACHMENTS_READY_TO_BE_UPLOADED:Lcom/instabug/crash/c/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/instabug/crash/c/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already uploaded but has unsent attachments, uploading now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstabugCrashesUploaderService"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, v1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->a(Lcom/instabug/crash/c/a;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected runBackgroundTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->a()V

    .line 2
    invoke-direct {p0}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->c()V

    return-void
.end method
