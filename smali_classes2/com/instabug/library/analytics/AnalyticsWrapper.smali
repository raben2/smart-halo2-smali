.class public Lcom/instabug/library/analytics/AnalyticsWrapper;
.super Ljava/lang/Object;
.source "AnalyticsWrapper.java"


# static fields
.field private static INSTANCE:Lcom/instabug/library/analytics/AnalyticsWrapper; = null
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AnalyticsWrapper"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private volatile analyticsLogger:Lcom/instabug/library/analytics/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/library/analytics/util/c;->a()Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/instabug/library/analytics/util/c;->a()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/analytics/AnalyticsWrapper$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/analytics/AnalyticsWrapper$a;-><init>(Lcom/instabug/library/analytics/AnalyticsWrapper;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/analytics/AnalyticsWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->enableAnalyticsLogging()V

    return-void
.end method

.method static synthetic access$100(Lcom/instabug/library/analytics/AnalyticsWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->disableAnalyticsLogging()V

    return-void
.end method

.method static synthetic access$200(Lcom/instabug/library/analytics/AnalyticsWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->dropCachedLogs()V

    return-void
.end method

.method private disableAnalyticsLogging()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getAnalyticsLogger()Lcom/instabug/library/analytics/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/analytics/a;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->setAnalyticsLogger(Lcom/instabug/library/analytics/a;)V

    return-void
.end method

.method private dropCachedLogs()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/util/a;->b()V

    .line 2
    invoke-static {}, Lcom/instabug/library/analytics/util/a;->a()V

    return-void
.end method

.method private enableAnalyticsLogging()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getAnalyticsLogger()Lcom/instabug/library/analytics/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/library/analytics/a;

    invoke-direct {v0}, Lcom/instabug/library/analytics/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->setAnalyticsLogger(Lcom/instabug/library/analytics/a;)V

    :cond_0
    return-void
.end method

.method private getAnalyticsLogger()Lcom/instabug/library/analytics/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/analytics/AnalyticsWrapper;->analyticsLogger:Lcom/instabug/library/analytics/a;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/instabug/library/analytics/AnalyticsWrapper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/analytics/AnalyticsWrapper;->INSTANCE:Lcom/instabug/library/analytics/AnalyticsWrapper;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/analytics/AnalyticsWrapper;

    invoke-direct {v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;-><init>()V

    sput-object v1, Lcom/instabug/library/analytics/AnalyticsWrapper;->INSTANCE:Lcom/instabug/library/analytics/AnalyticsWrapper;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/library/analytics/AnalyticsWrapper;->INSTANCE:Lcom/instabug/library/analytics/AnalyticsWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLastUploadedAt(Landroid/content/Context;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/instabug/library/analytics/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static haveBeenCleanedBefore(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/analytics/a;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private setAnalyticsLogger(Lcom/instabug/library/analytics/a;)V
    .locals 0
    .param p1    # Lcom/instabug/library/analytics/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/analytics/AnalyticsWrapper;->analyticsLogger:Lcom/instabug/library/analytics/a;

    return-void
.end method

.method public static setBeingCleaned(ZLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/instabug/library/analytics/a;->a(ZLandroid/content/Context;)V

    return-void
.end method

.method public static setLastUploadedAt(JLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/instabug/library/analytics/a;->a(JLandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public varargs catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getAnalyticsLogger()Lcom/instabug/library/analytics/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/instabug/library/analytics/a;->a([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    :cond_0
    return-void
.end method

.method public varargs catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/analytics/AnalyticsWrapper$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/analytics/AnalyticsWrapper$b;-><init>(Lcom/instabug/library/analytics/AnalyticsWrapper;[Lcom/instabug/library/analytics/model/Api$Parameter;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs catchDeprecatedApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getAnalyticsLogger()Lcom/instabug/library/analytics/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/instabug/library/analytics/a;->b([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    :cond_0
    return-void
.end method

.method public varargs catchDeprecatedLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getAnalyticsLogger()Lcom/instabug/library/analytics/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/instabug/library/analytics/a;->c([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    :cond_0
    return-void
.end method

.method public varargs catchLoggingApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getAnalyticsLogger()Lcom/instabug/library/analytics/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/instabug/library/analytics/a;->d([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    :cond_0
    return-void
.end method
