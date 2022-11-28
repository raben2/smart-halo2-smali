.class public Lcom/instabug/library/logging/InstabugLog;
.super Ljava/lang/Object;
.source "InstabugLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/logging/InstabugLog$b;,
        Lcom/instabug/library/logging/InstabugLog$a;
    }
.end annotation


# static fields
.field private static final INSTABUG_LOG_TAG:Ljava/lang/String; = "INSTABUG_LOG_TAG"

.field public static final LOG_MESSAGE_DATE_FORMAT:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static final TAG:Ljava/lang/String; = "InstabugLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized addLog(Lcom/instabug/library/logging/InstabugLog$b;)V
    .locals 1

    const-class v0, Lcom/instabug/library/logging/InstabugLog;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/instabug/library/logging/a;->a(Lcom/instabug/library/logging/InstabugLog$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static clearLogMessages()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/library/logging/a;->b()V

    return-void
.end method

.method public static clearLogs()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->clearLogMessages()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "logMessage"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->isInstabugLogsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/util/StringUtility;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 9
    invoke-static {v0, p0}, Lcom/instabug/library/logging/InstabugLog;->printInstabugLogs(ILjava/lang/String;)V

    .line 10
    new-instance v0, Lcom/instabug/library/logging/InstabugLog$b;

    invoke-direct {v0}, Lcom/instabug/library/logging/InstabugLog$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Ljava/lang/String;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    sget-object v0, Lcom/instabug/library/logging/InstabugLog$a;->D:Lcom/instabug/library/logging/InstabugLog$a;

    .line 11
    invoke-virtual {p0, v0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Lcom/instabug/library/logging/InstabugLog$a;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/logging/InstabugLog$b;->a(J)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/instabug/library/logging/InstabugLog;->addLog(Lcom/instabug/library/logging/InstabugLog$b;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "logMessage"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->isInstabugLogsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/util/StringUtility;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 9
    invoke-static {v0, p0}, Lcom/instabug/library/logging/InstabugLog;->printInstabugLogs(ILjava/lang/String;)V

    .line 10
    new-instance v0, Lcom/instabug/library/logging/InstabugLog$b;

    invoke-direct {v0}, Lcom/instabug/library/logging/InstabugLog$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Ljava/lang/String;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    sget-object v0, Lcom/instabug/library/logging/InstabugLog$a;->E:Lcom/instabug/library/logging/InstabugLog$a;

    .line 11
    invoke-virtual {p0, v0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Lcom/instabug/library/logging/InstabugLog$a;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/logging/InstabugLog$b;->a(J)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/instabug/library/logging/InstabugLog;->addLog(Lcom/instabug/library/logging/InstabugLog$b;)V

    return-void
.end method

.method private static getDate()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInMiliSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLogMessages()Ljava/lang/String;
    .locals 4

    const-string v0, "[]"

    .line 1
    invoke-static {}, Lcom/instabug/library/logging/a;->d()Lorg/json/JSONArray;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "InstabugLog"

    const-string v3, "Couldn\'t parse Instabug logs due to an OOM"

    .line 5
    invoke-static {v2, v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static getLogs()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getLogMessages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "logMessage"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->isInstabugLogsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/util/StringUtility;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    .line 9
    invoke-static {v0, p0}, Lcom/instabug/library/logging/InstabugLog;->printInstabugLogs(ILjava/lang/String;)V

    .line 10
    new-instance v0, Lcom/instabug/library/logging/InstabugLog$b;

    invoke-direct {v0}, Lcom/instabug/library/logging/InstabugLog$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Ljava/lang/String;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    sget-object v0, Lcom/instabug/library/logging/InstabugLog$a;->I:Lcom/instabug/library/logging/InstabugLog$a;

    .line 11
    invoke-virtual {p0, v0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Lcom/instabug/library/logging/InstabugLog$a;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/logging/InstabugLog$b;->a(J)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/instabug/library/logging/InstabugLog;->addLog(Lcom/instabug/library/logging/InstabugLog$b;)V

    return-void
.end method

.method private static isInstabugLogsDisabled()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->INSTABUG_LOGS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static printInstabugLogs(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "INSTABUG_LOG_TAG"

    .line 2
    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static trimLogs()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/library/logging/a;->f()V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "logMessage"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->isInstabugLogsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/util/StringUtility;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 9
    invoke-static {v0, p0}, Lcom/instabug/library/logging/InstabugLog;->printInstabugLogs(ILjava/lang/String;)V

    .line 10
    new-instance v0, Lcom/instabug/library/logging/InstabugLog$b;

    invoke-direct {v0}, Lcom/instabug/library/logging/InstabugLog$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Ljava/lang/String;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    sget-object v0, Lcom/instabug/library/logging/InstabugLog$a;->V:Lcom/instabug/library/logging/InstabugLog$a;

    .line 11
    invoke-virtual {p0, v0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Lcom/instabug/library/logging/InstabugLog$a;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/logging/InstabugLog$b;->a(J)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/instabug/library/logging/InstabugLog;->addLog(Lcom/instabug/library/logging/InstabugLog$b;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "logMessage"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->isInstabugLogsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/util/StringUtility;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 9
    invoke-static {v0, p0}, Lcom/instabug/library/logging/InstabugLog;->printInstabugLogs(ILjava/lang/String;)V

    .line 10
    new-instance v0, Lcom/instabug/library/logging/InstabugLog$b;

    invoke-direct {v0}, Lcom/instabug/library/logging/InstabugLog$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Ljava/lang/String;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    sget-object v0, Lcom/instabug/library/logging/InstabugLog$a;->W:Lcom/instabug/library/logging/InstabugLog$a;

    .line 11
    invoke-virtual {p0, v0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Lcom/instabug/library/logging/InstabugLog$a;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/logging/InstabugLog$b;->a(J)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/instabug/library/logging/InstabugLog;->addLog(Lcom/instabug/library/logging/InstabugLog$b;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "logMessage"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->isInstabugLogsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/util/StringUtility;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 9
    invoke-static {v0, p0}, Lcom/instabug/library/logging/InstabugLog;->printInstabugLogs(ILjava/lang/String;)V

    .line 10
    new-instance v0, Lcom/instabug/library/logging/InstabugLog$b;

    invoke-direct {v0}, Lcom/instabug/library/logging/InstabugLog$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Ljava/lang/String;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    sget-object v0, Lcom/instabug/library/logging/InstabugLog$a;->WTF:Lcom/instabug/library/logging/InstabugLog$a;

    .line 11
    invoke-virtual {p0, v0}, Lcom/instabug/library/logging/InstabugLog$b;->a(Lcom/instabug/library/logging/InstabugLog$a;)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/logging/InstabugLog$b;->a(J)Lcom/instabug/library/logging/InstabugLog$b;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/instabug/library/logging/InstabugLog;->addLog(Lcom/instabug/library/logging/InstabugLog$b;)V

    return-void
.end method
