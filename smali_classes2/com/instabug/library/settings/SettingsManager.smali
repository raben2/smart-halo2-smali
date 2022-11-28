.class public Lcom/instabug/library/settings/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field private static final ASR_DURATION_ERROR_MSG_BELOW_MIN:Ljava/lang/String; = "Auto screen recording duration should be in a range from 30 to 180 seconds. Falling back to %d seconds"

.field public static final INSTABUG_SHARED_PREF_NAME:Ljava/lang/String; = "instabug"

.field public static final MAX_ASR_DURATION_IN_SECONDS:I = 0xb4

.field public static final MIN_ASR_DURATION_IN_SECONDS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "Core-SettingManager"

.field public static final VERBOSE:Z = false

.field private static settingsManager:Lcom/instabug/library/settings/SettingsManager;


# instance fields
.field private DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/instabug/library/settings/SettingsManager;->DEBUG:Z

    return-void
.end method

.method private convertSecondToMilliseconds(I)I
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method private getASRError(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-ge p1, v2, :cond_0

    .line 1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Auto screen recording duration should be in a range from 30 to 180 seconds. Falling back to %d seconds"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Auto screen recording duration should be in a range from 30 to 180 seconds. Falling back to %d seconds"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/instabug/library/settings/SettingsManager;
    .locals 2

    const-class v0, Lcom/instabug/library/settings/SettingsManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/settings/SettingsManager;->settingsManager:Lcom/instabug/library/settings/SettingsManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/settings/SettingsManager;

    invoke-direct {v1}, Lcom/instabug/library/settings/SettingsManager;-><init>()V

    sput-object v1, Lcom/instabug/library/settings/SettingsManager;->settingsManager:Lcom/instabug/library/settings/SettingsManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/library/settings/SettingsManager;->settingsManager:Lcom/instabug/library/settings/SettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPushNotificationToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getSessionsSyncConfigurations(Landroid/content/Context;)Lcom/instabug/library/model/session/config/SessionsConfig;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-static {p0}, Lcom/instabug/library/settings/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/instabug/library/model/session/config/SessionsConfigMapper;->map(Ljava/lang/String;)Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object p0

    return-object p0
.end method

.method public static isInitialScreenShotAllowed()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->t()Z

    move-result v0

    return v0
.end method

.method public static isPushNotificationTokenSent()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->C()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setInitialScreenShotAllowed(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/settings/a;->c(Z)V

    return-void
.end method

.method public static setPushNotificationToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/settings/b;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setPushNotificationTokenSent(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/settings/b;->h(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addExtraAttachmentFile(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/settings/a;->a(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public addExtraAttachmentFile([BLjava/lang/String;)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    invoke-static {v1, v2, v3, v4}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->isValidSize(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v0, p1, p2}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getUriFromBytes(Landroid/content/Context;[BLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/settings/a;->a(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Core-SettingManager"

    const-string p2, "Can\'t execute addExtraAttachmentFile(). Null context"

    .line 10
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs addPrivateViews([Landroid/view/View;)V
    .locals 1
    .param p1    # [Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a([Landroid/view/View;)V

    return-void
.end method

.method public varargs addTags([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a([Ljava/lang/String;)V

    return-void
.end method

.method public autoScreenRecordingEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->a()Z

    move-result v0

    return v0
.end method

.method public autoScreenRecordingMaxDuration()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->b()I

    move-result v0

    return v0
.end method

.method public clearExtraAttachmentFiles()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->c()V

    return-void
.end method

.method public getAppToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoScreenRecordingAudioCapturingState()Lcom/instabug/library/Feature$State;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->d()Lcom/instabug/library/Feature$State;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPlaceHolders()Lcom/instabug/library/InstabugCustomTextPlaceHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->e()Lcom/instabug/library/InstabugCustomTextPlaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getEnteredEmail()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getEnteredUsername()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getExtraAttachmentFiles()Ljava/util/LinkedHashMap;
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
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->f()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturesCache()Lcom/instabug/library/model/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->c()Lcom/instabug/library/model/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeaturesHash()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFeaturesTTL()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->e()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirstRunAt()Ljava/util/Date;
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/b;->f()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getIdentifiedUserEmail()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getIdentifiedUsername()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getInstabugLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getLastContactedAt()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->i()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastKnownVersionCode()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->j()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getLastMigrationVersion()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "10.1.0"

    return-object v0
.end method

.method public getLastSeenTimestamp()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->m()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoggingFeatureSettings()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMD5Uuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnInvokeCallback()Lcom/instabug/library/invocation/OnInvokeCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->h()Lcom/instabug/library/invocation/OnInvokeCallback;

    move-result-object v0

    return-object v0
.end method

.method public getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->i()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnSdkDismissCallback()Lcom/instabug/library/OnSdkDismissCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->j()Lcom/instabug/library/OnSdkDismissCallback;

    move-result-object v0

    return-object v0
.end method

.method public getOnSdkInvokedCallback()Lcom/instabug/library/OnSdkInvokedCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->k()Lcom/instabug/library/OnSdkInvokedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->l()I

    move-result v0

    return v0
.end method

.method public getPrivateViews()Ljava/util/Collection;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->m()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->n()I

    move-result v0

    return v0
.end method

.method public getSessionStartedAt()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionsCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->q()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionsSyncConfigurations()Lcom/instabug/library/model/session/config/SessionsConfig;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->r()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/instabug/library/model/session/config/SessionsConfigMapper;->map(Ljava/lang/String;)Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "{}"

    .line 5
    invoke-static {v0}, Lcom/instabug/library/model/session/config/SessionsConfigMapper;->map(Ljava/lang/String;)Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->p()I

    move-result v0

    return v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->q()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTagsAsString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/a;->q()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, ", "

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Lcom/instabug/library/InstabugColorTheme;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->r()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->USER_DATA:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWelcomeMessageState()Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;->valueOf(Ljava/lang/String;)Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;->LIVE:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;->valueOf(Ljava/lang/String;)Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    move-result-object v0

    return-object v0
.end method

.method public incrementSessionsCount()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->v()V

    :cond_0
    return-void
.end method

.method public isAppOnForeground()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->w()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoScreenRecordingDenied()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->s()Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/SettingsManager;->DEBUG:Z

    return v0
.end method

.method public isDeviceRegistered()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->x()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstDismiss()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->y()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFirstRun()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->z()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFirstRunAfterEncryptorUpdate()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->A()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFirstSession()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->B()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOnboardingShowing()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->u()Z

    move-result v0

    return v0
.end method

.method public isProcessingForeground()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->v()Z

    move-result v0

    return v0
.end method

.method public isPromptOptionsScreenShown()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->w()Z

    move-result v0

    return v0
.end method

.method public isReproStepsScreenshotEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->x()Z

    move-result v0

    return v0
.end method

.method public isRequestPermissionScreenShown()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->y()Z

    move-result v0

    return v0
.end method

.method public isSDKVersionSet()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->D()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenCurrentlyRecorded()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->z()Z

    move-result v0

    return v0
.end method

.method public isScreenshotByMediaProjectionEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->A()Z

    move-result v0

    return v0
.end method

.method public isSessionEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->E()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isUserLoggedOut()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->F()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isUsersPageEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->G()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->E()V

    return-void
.end method

.method public varargs removePrivateViews([Landroid/view/View;)V
    .locals 1
    .param p1    # [Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->b([Landroid/view/View;)V

    return-void
.end method

.method public resetRequestedOrientation()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->B()V

    return-void
.end method

.method public resetSessionCount()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->H()V

    :cond_0
    return-void
.end method

.method public resetTags()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/a;->C()V

    return-void
.end method

.method public setAppToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoScreenRecordingAudioCapturingState(Lcom/instabug/library/Feature$State;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method public setAutoScreenRecordingDenied(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Z)V

    return-void
.end method

.method public setAutoScreenRecordingDuration(I)V
    .locals 2

    const/16 v0, 0xb4

    if-le p1, v0, :cond_0

    .line 1
    const-class v1, Lcom/instabug/library/Instabug;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/instabug/library/settings/SettingsManager;->getASRError(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/instabug/library/settings/SettingsManager;->convertSecondToMilliseconds(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/settings/a;->a(I)V

    return-void

    :cond_0
    const/16 v0, 0x1e

    if-ge p1, v0, :cond_1

    .line 5
    const-class v1, Lcom/instabug/library/Instabug;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/instabug/library/settings/SettingsManager;->getASRError(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/instabug/library/settings/SettingsManager;->convertSecondToMilliseconds(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/settings/a;->a(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(I)V

    return-void
.end method

.method public setAutoScreenRecordingEnabled(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->b(Z)V

    return-void
.end method

.method public setAutoScreenRecordingMaxDuration(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    const/16 v1, 0x7530

    if-le p1, v1, :cond_0

    const/16 p1, 0x7530

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(I)V

    return-void
.end method

.method public setCurrentSDKVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCustomPlaceHolders(Lcom/instabug/library/InstabugCustomTextPlaceHolder;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Lcom/instabug/library/InstabugCustomTextPlaceHolder;)V

    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/settings/SettingsManager;->DEBUG:Z

    return-void
.end method

.method public setEnteredEmail(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEnteredUsername(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFeaturesCache(Lcom/instabug/library/model/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->a(Lcom/instabug/library/model/b;)V

    :cond_0
    return-void
.end method

.method public setFeaturesHash(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFeaturesTTL(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/settings/b;->a(J)V

    :cond_0
    return-void
.end method

.method public setFirstRunAfterEncryptorUpdate(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public setFirstRunAt(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/settings/b;->b(J)V

    :cond_0
    return-void
.end method

.method public setIdentifiedUserEmail(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIdentifiedUsername(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setInstabugLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Ljava/util/Locale;)V

    return-void
.end method

.method public setIsAppOnForeground(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public setIsDeviceRegistered(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->c(Z)V

    :cond_0
    return-void
.end method

.method public setIsFirstDismiss(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->d(Z)V

    :cond_0
    return-void
.end method

.method public setIsFirstRun(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->e(Z)V

    :cond_0
    return-void
.end method

.method public setIsFirstSession(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public setIsSessionEnabled(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->g(Z)V

    :cond_0
    return-void
.end method

.method public setLastContactedAt(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/settings/b;->c(J)V

    :cond_0
    return-void
.end method

.method public setLastMigrationVersion(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->a(I)V

    :cond_0
    return-void
.end method

.method public setLastSeenTimestamp(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/settings/b;->d(J)V

    :cond_0
    return-void
.end method

.method public setLoggingFeatureSettings(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMD5Uuid(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnInvokeCallback(Lcom/instabug/library/invocation/OnInvokeCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Lcom/instabug/library/invocation/OnInvokeCallback;)V

    return-void
.end method

.method public setOnReportCreatedListener(Lcom/instabug/library/model/Report$OnReportCreatedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Lcom/instabug/library/model/Report$OnReportCreatedListener;)V

    return-void
.end method

.method public setOnSdkDismissCallback(Lcom/instabug/library/OnSdkDismissCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Lcom/instabug/library/OnSdkDismissCallback;)V

    return-void
.end method

.method public setOnSdkInvokedCallback(Lcom/instabug/library/OnSdkInvokedCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Lcom/instabug/library/OnSdkInvokedCallback;)V

    return-void
.end method

.method public setOnboardingShowing(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->d(Z)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->b(I)V

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/invocation/InvocationManager;->notifyPrimaryColorChanged()V

    return-void
.end method

.method public setProcessingForeground(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->e(Z)V

    return-void
.end method

.method public setPromptOptionsScreenShown(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->f(Z)V

    return-void
.end method

.method public setReproStepsScreenshotEnabled(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->g(Z)V

    return-void
.end method

.method public setRequestPermissionScreenShown(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->h(Z)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->c(I)V

    return-void
.end method

.method public setScreenCurrentlyRecorded(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->i(Z)V

    return-void
.end method

.method public setScreenshotByMediaProjectionEnabled(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->j(Z)V

    return-void
.end method

.method public setSessionStartedAt(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/settings/a;->a(J)V

    return-void
.end method

.method public setSessionsSyncConfigurations(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setShouldAutoShowOnboarding(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->i(Z)V

    :cond_0
    return-void
.end method

.method public setShouldMakeUUIDMigrationRequest(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->j(Z)V

    :cond_0
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->d(I)V

    return-void
.end method

.method public setTheme(Lcom/instabug/library/InstabugColorTheme;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/a;->a(Lcom/instabug/library/InstabugColorTheme;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUserLoggedOut(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->k(Z)V

    :cond_0
    return-void
.end method

.method public setUsersPageEnabled(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->l(Z)V

    :cond_0
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVersionCode(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->c(I)V

    :cond_0
    return-void
.end method

.method public setWelcomeMessageState(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->a(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    :cond_0
    return-void
.end method

.method public shouldAutoShowOnboarding()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->I()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public shouldMakeUUIDMigrationRequest()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/b;->J()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateUserSessionCount(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/b;->L()Lcom/instabug/library/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/b;->b(I)V

    :cond_0
    return-void
.end method
