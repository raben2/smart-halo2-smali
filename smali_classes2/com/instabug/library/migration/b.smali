.class public Lcom/instabug/library/migration/b;
.super Lcom/instabug/library/migration/AbstractMigration;
.source "LastContactedAtToLastBugAndLastChatTimeMigration.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "last_contacted_at_to_last_bug_and_last_chat_time_migration"

    .line 1
    invoke-direct {p0, v0}, Lcom/instabug/library/migration/AbstractMigration;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doAfterMigration()V
    .locals 0

    return-void
.end method

.method public doPreMigration()V
    .locals 0

    return-void
.end method

.method public getMigrationId()Ljava/lang/String;
    .locals 1

    const-string v0, "last_contacted_at_to_last_bug_and_last_chat_time_migration"

    return-object v0
.end method

.method public getMigrationVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    new-instance v0, Lcom/instabug/library/migration/b$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/migration/b$a;-><init>(Lcom/instabug/library/migration/b;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public shouldMigrate()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/migration/b;->getMigrationVersion()I

    move-result v0

    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->getLastMigrationVersion()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getLastContactedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
