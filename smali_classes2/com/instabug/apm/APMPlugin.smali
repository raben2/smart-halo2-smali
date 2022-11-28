.class public Lcom/instabug/apm/APMPlugin;
.super Lcom/instabug/library/core/plugin/Plugin;
.source "APMPlugin.java"


# instance fields
.field private final apmLogger:Lcom/instabug/apm/logger/a/a;

.field private isFirstLaunch:Z

.field private final sessionHandler:Lcom/instabug/apm/f/d/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/plugin/Plugin;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/apm/APMPlugin;->isFirstLaunch:Z

    .line 7
    invoke-static {}, Lcom/instabug/apm/e/a;->C()Lcom/instabug/apm/f/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/APMPlugin;->sessionHandler:Lcom/instabug/apm/f/d/c;

    .line 8
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/APMPlugin;->apmLogger:Lcom/instabug/apm/logger/a/a;

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/apm/APMPlugin;)Lcom/instabug/apm/f/d/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/APMPlugin;->sessionHandler:Lcom/instabug/apm/f/d/c;

    return-object p0
.end method

.method static synthetic access$100(Lcom/instabug/apm/APMPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/apm/APMPlugin;->registerActivityLifeCycleCallbacks()V

    return-void
.end method

.method static synthetic access$200(Lcom/instabug/apm/APMPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/apm/APMPlugin;->registerSessionCrashHandler()V

    return-void
.end method

.method private clearInvalidCache()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->u()Lcom/instabug/apm/f/b/a;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->y()Lcom/instabug/apm/f/c/a;

    move-result-object v1

    const-string v2, "execution_traces_thread_executor"

    .line 3
    invoke-static {v2}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/instabug/apm/APMPlugin$a;

    invoke-direct {v3, p0, v0}, Lcom/instabug/apm/APMPlugin$a;-><init>(Lcom/instabug/apm/APMPlugin;Lcom/instabug/apm/f/b/a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v0, "network_log_thread_executor"

    .line 10
    invoke-static {v0}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/instabug/apm/APMPlugin$b;

    invoke-direct {v2, p0, v1}, Lcom/instabug/apm/APMPlugin$b;-><init>(Lcom/instabug/apm/APMPlugin;Lcom/instabug/apm/f/c/a;)V

    .line 11
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private endSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/APMPlugin;->sessionHandler:Lcom/instabug/apm/f/d/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/apm/f/d/c;->b(I)V

    return-void
.end method

.method private registerActivityLifeCycleCallbacks()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->l()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/apm/g/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/instabug/apm/g/a;

    const/4 v3, 0x0

    .line 6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/instabug/apm/g/a;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method private registerConfigurationChange()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/APMPlugin$c;

    invoke-direct {v0, p0}, Lcom/instabug/apm/APMPlugin$c;-><init>(Lcom/instabug/apm/APMPlugin;)V

    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private registerSessionCrashHandler()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/apm/f/d/b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/apm/f/d/b;

    invoke-direct {v0}, Lcom/instabug/apm/f/d/b;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method private startSession(Lcom/instabug/library/model/common/Session;)V
    .locals 1
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/APMPlugin;->sessionHandler:Lcom/instabug/apm/f/d/c;

    invoke-interface {v0, p1}, Lcom/instabug/apm/f/d/c;->a(Lcom/instabug/library/model/common/Session;)V

    return-void
.end method


# virtual methods
.method public getLastActivityTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sleep()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/apm/APMPlugin;->endSession()V

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/instabug/apm/APMPlugin;->isFirstLaunch:Z

    .line 2
    invoke-direct {p0}, Lcom/instabug/apm/APMPlugin;->registerConfigurationChange()V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/instabug/apm/APMPlugin;->apmLogger:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Could not enable Auto UI Trace. Feature is supported on API level 16 and up only."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public wake()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getRunningSession()Lcom/instabug/library/model/common/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/instabug/apm/APMPlugin;->startSession(Lcom/instabug/library/model/common/Session;)V

    .line 4
    invoke-direct {p0}, Lcom/instabug/apm/APMPlugin;->registerSessionCrashHandler()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/APMPlugin;->apmLogger:Lcom/instabug/apm/logger/a/a;

    const-string v1, "APM session not created. Core session is null"

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-boolean v0, p0, Lcom/instabug/apm/APMPlugin;->isFirstLaunch:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/instabug/apm/APMPlugin;->clearInvalidCache()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/instabug/apm/APMPlugin;->isFirstLaunch:Z

    .line 14
    :cond_1
    invoke-static {}, Lcom/instabug/apm/e/a;->f()Lcom/instabug/apm/i/a;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/instabug/apm/i/a;->a()V

    :cond_2
    return-void
.end method
