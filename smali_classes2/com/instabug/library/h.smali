.class public Lcom/instabug/library/h;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static e:Lcom/instabug/library/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Lcom/instabug/library/settings/SettingsManager;

.field private b:I

.field private c:Lcom/instabug/library/network/b;

.field private d:Lcom/instabug/library/model/common/Session;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/instabug/library/settings/SettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/h;->a:Lcom/instabug/library/settings/SettingsManager;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/h;->m()V

    .line 4
    new-instance p1, Lcom/instabug/library/network/b;

    invoke-direct {p1}, Lcom/instabug/library/network/b;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/h;->c:Lcom/instabug/library/network/b;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/h;->h()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/h;->a(Z)V

    return-void
.end method

.method private a(Lcom/instabug/library/model/common/Session;)V
    .locals 1
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isSessionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lcom/instabug/library/h;->b(Lcom/instabug/library/model/common/Session;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/h$b;

    invoke-direct {v0, p0}, Lcom/instabug/library/h$b;-><init>(Lcom/instabug/library/h;)V

    .line 10
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    .line 17
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/h$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/h$a;-><init>(Lcom/instabug/library/h;)V

    .line 18
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/CompletableObserver;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/instabug/library/model/session/SessionState;)V
    .locals 3

    .line 19
    sget-object v0, Lcom/instabug/library/model/session/SessionState;->FINISH:Lcom/instabug/library/model/session/SessionState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setIsAppOnForeground(Z)V

    .line 21
    new-instance v0, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    const-string v1, "session"

    const-string v2, "finished"

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventPublisher;->post(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setIsAppOnForeground(Z)V

    .line 24
    new-instance v0, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    const-string v1, "session"

    const-string v2, "started"

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventPublisher;->post(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    .line 26
    :goto_0
    invoke-static {}, Lcom/instabug/library/core/eventbus/SessionStateEventBus;->getInstance()Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/instabug/library/settings/SettingsManager;)V
    .locals 2

    const-class v0, Lcom/instabug/library/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/instabug/library/h;->e:Lcom/instabug/library/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/instabug/library/h;

    invoke-direct {v1, p0}, Lcom/instabug/library/h;-><init>(Lcom/instabug/library/settings/SettingsManager;)V

    sput-object v1, Lcom/instabug/library/h;->e:Lcom/instabug/library/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Z)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/SettingsManager;->setIsFirstSession(Z)V

    return-void
.end method

.method private b(Lcom/instabug/library/model/common/Session;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/model/common/Session;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/instabug/library/model/session/SessionLocalEntity;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/instabug/library/h$c;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/h$c;-><init>(Lcom/instabug/library/h;Lcom/instabug/library/model/common/Session;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/instabug/library/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/h;->i()V

    return-void
.end method

.method private c(Lcom/instabug/library/model/common/Session;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/instabug/library/h;->d:Lcom/instabug/library/model/common/Session;

    return-void
.end method

.method private f()Lcom/instabug/library/model/common/Session;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getOS()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lcom/instabug/library/util/DeviceStateProvider;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v6

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 9
    invoke-static/range {v2 .. v9}, Lcom/instabug/library/model/session/SessionMapper;->toSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/instabug/library/model/session/CoreSession;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized g()Lcom/instabug/library/h;
    .locals 3

    const-class v0, Lcom/instabug/library/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/h;->e:Lcom/instabug/library/h;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/instabug/library/h;

    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instabug/library/h;-><init>(Lcom/instabug/library/settings/SettingsManager;)V

    sput-object v1, Lcom/instabug/library/h;->e:Lcom/instabug/library/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private h()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/library/h;->b:I

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/d;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "SessionManager"

    const-string v1, "unable to saveFeaturesToSharedPreferences due to null appContext"

    .line 4
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget v0, p0, Lcom/instabug/library/h;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/instabug/library/h;->b:I

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {v0, v1}, Lcom/instabug/library/internal/video/c;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/instabug/library/h;->a()V

    :cond_1
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/h;->a:Lcom/instabug/library/settings/SettingsManager;

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getSessionStartedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/h;->d:Lcom/instabug/library/model/common/Session;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/instabug/library/h;->a(Lcom/instabug/library/model/common/Session;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/h;->k()V

    .line 9
    invoke-direct {p0}, Lcom/instabug/library/h;->l()V

    .line 11
    sget-object v0, Lcom/instabug/library/model/session/SessionState;->FINISH:Lcom/instabug/library/model/session/SessionState;

    invoke-direct {p0, v0}, Lcom/instabug/library/h;->a(Lcom/instabug/library/model/session/SessionState;)V

    goto :goto_0

    :cond_1
    const-string v0, "SessionManager"

    const-string v1, "Instabug is enabled after session started, Session ignored"

    .line 13
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/instabug/library/h;->c:Lcom/instabug/library/network/b;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 19
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/instabug/library/network/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "SessionManager"

    const-string v1, "This app is not registered"

    .line 21
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/instabug/library/h;->c(Lcom/instabug/library/model/common/Session;)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isFirstDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setIsFirstDismiss(Z)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/core/InstabugCore;->setLastSeenTimestamp(J)V

    .line 3
    invoke-static {}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator()Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v2

    new-instance v3, Lcom/instabug/library/internal/orchestrator/k;

    .line 4
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/instabug/library/internal/orchestrator/k;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrate()V

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/h$d;

    invoke-direct {v1, p0}, Lcom/instabug/library/h$d;-><init>(Lcom/instabug/library/h;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/h;->a:Lcom/instabug/library/settings/SettingsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/settings/SettingsManager;->setSessionStartedAt(J)V

    .line 3
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/library/h;->a:Lcom/instabug/library/settings/SettingsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setIsFirstRun(Z)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getFirstRunAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 7
    iget-object v0, p0, Lcom/instabug/library/h;->a:Lcom/instabug/library/settings/SettingsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/settings/SettingsManager;->setFirstRunAt(J)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/h;->a:Lcom/instabug/library/settings/SettingsManager;

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->incrementSessionsCount()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->INSTABUG:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/instabug/library/h;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/instabug/library/model/common/Session;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/h;->d:Lcom/instabug/library/model/common/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/h;->a:Lcom/instabug/library/settings/SettingsManager;

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getSessionStartedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/instabug/library/h;->a:Lcom/instabug/library/settings/SettingsManager;

    invoke-virtual {v2}, Lcom/instabug/library/settings/SettingsManager;->getSessionStartedAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/h;->b:I

    return v0
.end method

.method public declared-synchronized e()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/instabug/library/h;->f()Lcom/instabug/library/model/common/Session;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/instabug/library/h;->c(Lcom/instabug/library/model/common/Session;)V

    .line 4
    invoke-direct {p0}, Lcom/instabug/library/h;->n()V

    .line 6
    sget-object v0, Lcom/instabug/library/model/session/SessionState;->START:Lcom/instabug/library/model/session/SessionState;

    invoke-direct {p0, v0}, Lcom/instabug/library/h;->a(Lcom/instabug/library/model/session/SessionState;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/library/h;->c:Lcom/instabug/library/network/b;

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/instabug/library/h;->c:Lcom/instabug/library/network/b;

    invoke-virtual {v2}, Lcom/instabug/library/network/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 13
    iget-object v2, p0, Lcom/instabug/library/h;->c:Lcom/instabug/library/network/b;

    invoke-virtual {v2, v1, v0}, Lcom/instabug/library/network/b;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 17
    :cond_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->autoScreenRecordingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
