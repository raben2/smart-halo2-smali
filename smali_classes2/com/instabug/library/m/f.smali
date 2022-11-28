.class public Lcom/instabug/library/m/f;
.super Ljava/lang/Object;
.source "SessionsSyncManager.java"


# instance fields
.field private a:Lcom/instabug/library/model/session/config/SessionsConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/instabug/library/m/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/instabug/library/internal/utils/PreferencesUtils;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/instabug/library/m/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/instabug/library/m/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lcom/instabug/library/l/d/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/library/model/session/config/SessionsConfig;Lcom/instabug/library/m/a;Lcom/instabug/library/internal/utils/PreferencesUtils;Lcom/instabug/library/m/c;Lcom/instabug/library/m/e;Lcom/instabug/library/l/d/b;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/session/config/SessionsConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/m/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/library/internal/utils/PreferencesUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/instabug/library/m/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/instabug/library/m/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/instabug/library/l/d/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/m/f;->b:Lcom/instabug/library/m/a;

    .line 4
    iput-object p3, p0, Lcom/instabug/library/m/f;->c:Lcom/instabug/library/internal/utils/PreferencesUtils;

    .line 5
    iput-object p4, p0, Lcom/instabug/library/m/f;->d:Lcom/instabug/library/m/c;

    .line 6
    iput-object p5, p0, Lcom/instabug/library/m/f;->e:Lcom/instabug/library/m/e;

    .line 7
    iput-object p6, p0, Lcom/instabug/library/m/f;->f:Lcom/instabug/library/l/d/b;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/instabug/library/m/f;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    new-instance v2, Lcom/instabug/library/m/b;

    invoke-direct {v2}, Lcom/instabug/library/m/b;-><init>()V

    .line 5
    new-instance v3, Lcom/instabug/library/internal/utils/PreferencesUtils;

    const-string v0, "instabug"

    invoke-direct {v3, p0, v0}, Lcom/instabug/library/internal/utils/PreferencesUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    new-instance v4, Lcom/instabug/library/m/c;

    invoke-direct {v4}, Lcom/instabug/library/m/c;-><init>()V

    .line 7
    new-instance v0, Lcom/instabug/library/network/NetworkManager;

    invoke-direct {v0}, Lcom/instabug/library/network/NetworkManager;-><init>()V

    .line 8
    new-instance v1, Lcom/instabug/library/util/f;

    invoke-direct {v1, p0}, Lcom/instabug/library/util/f;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v5, Lcom/instabug/library/m/e;

    invoke-direct {v5, v0, v1}, Lcom/instabug/library/m/e;-><init>(Lcom/instabug/library/network/a;Lcom/instabug/library/util/f;)V

    .line 10
    invoke-static {p0}, Lcom/instabug/library/settings/SettingsManager;->getSessionsSyncConfigurations(Landroid/content/Context;)Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object v1

    .line 11
    new-instance v6, Lcom/instabug/library/l/d/a;

    invoke-direct {v6}, Lcom/instabug/library/l/d/a;-><init>()V

    .line 12
    new-instance p0, Lcom/instabug/library/m/f;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/instabug/library/m/f;-><init>(Lcom/instabug/library/model/session/config/SessionsConfig;Lcom/instabug/library/m/a;Lcom/instabug/library/internal/utils/PreferencesUtils;Lcom/instabug/library/m/c;Lcom/instabug/library/m/e;Lcom/instabug/library/l/d/b;)V

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/library/m/f;)Lcom/instabug/library/model/session/config/SessionsConfig;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/library/m/f;Ljava/util/List;)Lio/reactivex/Completable;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/m/f;->a(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Lio/reactivex/Completable;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/SessionsBatchDTO;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/model/session/SessionsBatchDTO;

    .line 36
    invoke-static {v1}, Lcom/instabug/library/model/session/SessionMapper;->toIDs(Lcom/instabug/library/model/session/SessionsBatchDTO;)Ljava/util/List;

    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/instabug/library/m/f;->e:Lcom/instabug/library/m/e;

    invoke-virtual {v3, v1}, Lcom/instabug/library/m/e;->a(Lcom/instabug/library/model/session/SessionsBatchDTO;)Lio/reactivex/Completable;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Synced a batch of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Lcom/instabug/library/model/session/SessionsBatchDTO;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " session/s."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/library/m/f;->b(Ljava/lang/String;)Lio/reactivex/functions/Action;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v1

    iget-object v3, p0, Lcom/instabug/library/m/f;->d:Lcom/instabug/library/m/c;

    .line 39
    invoke-virtual {v3, v2}, Lcom/instabug/library/m/c;->b(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v1

    iget-object v3, p0, Lcom/instabug/library/m/f;->d:Lcom/instabug/library/m/c;

    .line 40
    invoke-virtual {v3, v2}, Lcom/instabug/library/m/c;->a(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/library/m/f;->f:Lcom/instabug/library/l/d/b;

    .line 41
    invoke-interface {v2}, Lcom/instabug/library/l/d/b;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v0}, Lio/reactivex/Completable;->mergeDelayError(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/library/m/f;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/m/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SessionsSyncManager"

    .line 49
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/library/m/f;)Lcom/instabug/library/m/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/m/f;->b:Lcom/instabug/library/m/a;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lio/reactivex/functions/Action;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    new-instance v0, Lcom/instabug/library/m/f$e;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/m/f$e;-><init>(Lcom/instabug/library/m/f;Ljava/lang/String;)V

    return-object v0
.end method

.method private c()J
    .locals 4

    .line 2
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instabug/library/m/f;->c:Lcom/instabug/library/internal/utils/PreferencesUtils;

    const-string v3, "key_last_batch_synced_at"

    invoke-virtual {v2, v3}, Lcom/instabug/library/internal/utils/PreferencesUtils;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/instabug/library/m/f;)Lcom/instabug/library/internal/utils/PreferencesUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/m/f;->c:Lcom/instabug/library/internal/utils/PreferencesUtils;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SessionsSyncManager"

    .line 4
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private d()Lio/reactivex/functions/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/functions/Predicate<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/m/f$f;

    invoke-direct {v0, p0}, Lcom/instabug/library/m/f$f;-><init>(Lcom/instabug/library/m/f;)V

    return-object v0
.end method

.method private e()Lio/reactivex/Completable;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/m/f$d;

    invoke-direct {v0, p0}, Lcom/instabug/library/m/f$d;-><init>(Lcom/instabug/library/m/f;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lio/reactivex/Completable;
    .locals 5

    .line 14
    invoke-direct {p0}, Lcom/instabug/library/m/f;->c()J

    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v2}, Lcom/instabug/library/model/session/config/SessionsConfig;->getSyncIntervalsInMinutes()I

    move-result v2

    .line 16
    iget-object v3, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v3}, Lcom/instabug/library/model/session/config/SessionsConfig;->getSyncMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalidating cache. Sync mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v1}, Lcom/instabug/library/model/session/config/SessionsConfig;->getSyncMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/m/f;->c(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/instabug/library/m/f;->d:Lcom/instabug/library/m/c;

    invoke-virtual {v0}, Lcom/instabug/library/m/c;->a()Lio/reactivex/Completable;

    move-result-object v0

    return-object v0

    :cond_0
    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 19
    iget-object v2, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v2}, Lcom/instabug/library/model/session/config/SessionsConfig;->getSyncMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->getVersionCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/library/settings/SettingsManager;->getLastKnownVersionCode()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 24
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->getVersionCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setVersionCode(I)V

    .line 25
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instabug/library/settings/SettingsManager;->setIsFirstSession(Z)V

    const-string v0, "App version has changed. Marking cached sessions as ready for sync"

    .line 26
    invoke-direct {p0, v0}, Lcom/instabug/library/m/f;->a(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/instabug/library/m/f;->d:Lcom/instabug/library/m/c;

    invoke-virtual {v0}, Lcom/instabug/library/m/c;->b()Lio/reactivex/Completable;

    move-result-object v0

    return-object v0

    .line 29
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping sessions evaluation. Elapsed time since last sync = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mins. Sync configs = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v0}, Lcom/instabug/library/model/session/config/SessionsConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/m/f;->a(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v0

    return-object v0

    .line 31
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evaluating cached sessions. Elapsed time since last sync = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mins. Sync configs = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v0}, Lcom/instabug/library/model/session/config/SessionsConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/m/f;->a(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/instabug/library/m/f;->d:Lcom/instabug/library/m/c;

    invoke-virtual {v0}, Lcom/instabug/library/m/c;->b()Lio/reactivex/Completable;

    move-result-object v0

    .line 33
    invoke-direct {p0}, Lcom/instabug/library/m/f;->e()Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/instabug/library/model/session/config/SessionsConfig;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/session/config/SessionsConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    iput-object p1, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    return-void
.end method

.method public b()Lio/reactivex/Completable;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v0}, Lcom/instabug/library/model/session/config/SessionsConfig;->getSyncMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sessions sync is not allowed. Sync mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v1}, Lcom/instabug/library/model/session/config/SessionsConfig;->getSyncMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/m/f;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Syncing local with remote. Sync configs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/m/f;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v1}, Lcom/instabug/library/model/session/config/SessionsConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/m/f;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/m/f;->d:Lcom/instabug/library/m/c;

    invoke-virtual {v0}, Lcom/instabug/library/m/c;->c()Lio/reactivex/Single;

    move-result-object v0

    .line 8
    invoke-direct {p0}, Lcom/instabug/library/m/f;->d()Lio/reactivex/functions/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    const-string v1, "No sessions ready for sync. Skipping..."

    .line 9
    invoke-direct {p0, v1}, Lcom/instabug/library/m/f;->b(Ljava/lang/String;)Lio/reactivex/functions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/m/f$c;

    invoke-direct {v1, p0}, Lcom/instabug/library/m/f$c;-><init>(Lcom/instabug/library/m/f;)V

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/m/f$b;

    invoke-direct {v1, p0}, Lcom/instabug/library/m/f$b;-><init>(Lcom/instabug/library/m/f;)V

    .line 19
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/m/f$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/m/f$a;-><init>(Lcom/instabug/library/m/f;)V

    .line 35
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method
