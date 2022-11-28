.class public Lcom/instabug/library/core/InstabugCore;
.super Ljava/lang/Object;
.source "InstabugCore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/instabug/library/internal/storage/Encryptor;->a(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    :goto_0
    const-class v0, Lcom/instabug/library/internal/storage/Encryptor;

    const-string v1, "Can\'t Decrypt attachment"

    invoke-static {v0, v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static decryptOnTheFly(Ljava/lang/String;)Lcom/instabug/library/internal/storage/ProcessedBytes;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/instabug/library/util/FileUtils;->isEncryptedFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/instabug/library/internal/storage/Encryptor;->b(Ljava/lang/String;)Lcom/instabug/library/internal/storage/ProcessedBytes;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    .line 7
    invoke-static {v0, p0}, Lcom/instabug/library/internal/storage/Encryptor;->a(Ljava/io/File;[B)V

    .line 8
    new-instance v0, Lcom/instabug/library/internal/storage/ProcessedBytes;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/instabug/library/internal/storage/ProcessedBytes;-><init>([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 11
    :goto_0
    const-class v0, Lcom/instabug/library/internal/storage/Encryptor;

    const-string v1, "Can\'t Decrypt attachment"

    invoke-static {v0, v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance p0, Lcom/instabug/library/internal/storage/ProcessedBytes;

    const/4 v0, 0x0

    new-array v1, v0, [B

    invoke-direct {p0, v1, v0}, Lcom/instabug/library/internal/storage/ProcessedBytes;-><init>([BZ)V

    return-object p0
.end method

.method public static doOnBackground(Ljava/lang/Runnable;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator()Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/core/InstabugCore$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/core/InstabugCore$a;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrate()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/instabug/library/internal/storage/Encryptor;->c(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    :goto_0
    const-class v0, Lcom/instabug/library/internal/storage/Encryptor;

    const-string v1, "Can\'t Encrypt attachment"

    invoke-static {v0, v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getApplicationScopeServiceLocator()Lcom/instabug/library/l/e/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/l/e/f/b;->a()Lcom/instabug/library/l/e/b;

    move-result-object v0

    return-object v0
.end method

.method public static getEnteredEmail()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnteredUsername()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraAttachmentFiles()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstRunAt()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getFirstRunAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIdentifiedUserEmail()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdentifiedUsername()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstabugDbHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/a;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/storage/cache/db/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getLastSeenTimestamp()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getLastSeenTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v0

    return-object v0
.end method

.method public static getOnSdkInvokedCallback()Lcom/instabug/library/OnSdkInvokedCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnSdkInvokedCallback()Lcom/instabug/library/OnSdkInvokedCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getPrimaryColor()I

    move-result v0

    return v0
.end method

.method public static getPushNotificationToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningSession()Lcom/instabug/library/model/common/Session;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/h;->g()Lcom/instabug/library/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/h;->b()Lcom/instabug/library/model/common/Session;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "10.1.0"

    return-object v0
.end method

.method public static getSessionCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getSessionsCount()I

    move-result v0

    return v0
.end method

.method public static getStartedActivitiesCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/h;->g()Lcom/instabug/library/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/h;->d()I

    move-result v0

    return v0
.end method

.method public static getTagsAsString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getTagsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getUserData()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getUserData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/core/plugin/a;->a(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object p0

    return-object p0
.end method

.method public static isAppOnForeground()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isAppOnForeground()Z

    move-result v0

    return v0
.end method

.method public static isExperimentalFeatureAvailable(Lcom/instabug/library/Feature;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;)Z

    move-result p0

    return p0
.end method

.method public static isFeatureAvailable(Lcom/instabug/library/Feature;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/d;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFeatureEnabled(Lcom/instabug/library/Feature;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

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

.method public static isFeaturesFetchedBefore()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/d;->b()Z

    move-result v0

    return v0
.end method

.method public static isFirstRunAfterEncryptorUpdate()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isFirstRunAfterEncryptorUpdate()Z

    move-result v0

    return v0
.end method

.method public static isForegroundBusy()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->f()Z

    move-result v0

    return v0
.end method

.method public static isInitialScreenShotAllowed()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->isInitialScreenShotAllowed()Z

    return-void
.end method

.method public static isPushNotificationTokenSent()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->isPushNotificationTokenSent()Z

    move-result v0

    return v0
.end method

.method public static isReproStepsScreenshotEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isReproStepsScreenshotEnabled()Z

    move-result v0

    return v0
.end method

.method public static isUserLoggedOut()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isUserLoggedOut()Z

    move-result v0

    return v0
.end method

.method public static isUsersPageEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isUsersPageEnabled()Z

    move-result v0

    return v0
.end method

.method public static retrieveAllSDKAttributes()Ljava/util/HashMap;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributeCacheManager;->retrieveAllSDKAttributes()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static setAutoScreenRecordingEnabled(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/settings/SettingsManager;->setAutoScreenRecordingEnabled(Z)V

    return-void
.end method

.method public static setBugReportingState(Lcom/instabug/library/Feature$State;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->BUG_REPORTING:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method public static setChatsState(Lcom/instabug/library/Feature$State;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->CHATS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method public static setDeprecatedChatState(Lcom/instabug/library/Feature$State;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->DEPRECATED_CHATS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method public static setEnteredEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/user/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static setEnteredUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/user/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static setFeatureState(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method public static setFirstRunAfterEncryptorUpdate(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/settings/SettingsManager;->setFirstRunAfterEncryptorUpdate(Z)V

    return-void
.end method

.method public static setIdentifiedUserEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/user/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static setInitialScreenShotAllowed(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/settings/SettingsManager;->setInitialScreenShotAllowed(Z)V

    return-void
.end method

.method public static setLastContactedAt(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/library/settings/SettingsManager;->setLastContactedAt(J)V

    return-void
.end method

.method public static setLastSeenTimestamp(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/library/settings/SettingsManager;->setLastSeenTimestamp(J)V

    return-void
.end method

.method public static setPluginState(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/instabug/library/core/plugin/Plugin;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    :cond_0
    return-void
.end method

.method public static setPushNotificationState(Lcom/instabug/library/Feature$State;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->PUSH_NOTIFICATION:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method public static setPushNotificationToken(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/library/settings/SettingsManager;->setPushNotificationToken(Ljava/lang/String;)V

    return-void
.end method

.method public static setPushNotificationTokenSent(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/library/settings/SettingsManager;->setPushNotificationTokenSent(Z)V

    return-void
.end method

.method public static setRepliesState(Lcom/instabug/library/Feature$State;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->REPLIES:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method public static setTemporaryDisabled()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/d;->c()V

    .line 2
    const-class v0, Lcom/instabug/library/Instabug;

    const-string v1, "disableInternal"

    invoke-static {v0, v1}, Lcom/instabug/library/f;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
