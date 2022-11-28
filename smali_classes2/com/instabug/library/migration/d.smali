.class public Lcom/instabug/library/migration/d;
.super Lcom/instabug/library/migration/AbstractMigration;
.source "SDKAnalyticsMigration.java"


# instance fields
.field private a:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "sdk_analytics_migration"

    .line 1
    invoke-direct {p0, v0}, Lcom/instabug/library/migration/AbstractMigration;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/migration/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/migration/d;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public doAfterMigration()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const-string v1, "10.1.0"

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setCurrentSDKVersion(Ljava/lang/String;)V

    return-void
.end method

.method public doPreMigration()V
    .locals 0

    return-void
.end method

.method public getMigrationVersion()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/migration/d;->a:Landroid/content/Context;

    return-void
.end method

.method public migrate()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/library/migration/AbstractMigration;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/migration/d$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/migration/d$a;-><init>(Lcom/instabug/library/migration/d;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public shouldMigrate()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getLastSDKVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "10.1.0"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/migration/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->haveBeenCleanedBefore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "10.1.0"

    const-string v2, "8.0.0"

    .line 17
    invoke-static {v0, v2}, Lcom/instabug/library/util/StringUtility;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 18
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isSDKVersionSet()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method
