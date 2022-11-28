.class public Lcom/instabug/survey/c;
.super Ljava/lang/Object;
.source "SurveysManager.java"

# interfaces
.implements Lcom/instabug/survey/f/b$c;
.implements Lcom/instabug/survey/h/h$b;
.implements Lcom/instabug/survey/f/a$b;


# static fields
.field private static g:Lcom/instabug/survey/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instabug/survey/f/b;

.field private c:Lcom/instabug/survey/h/h;

.field private d:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/instabug/survey/f/a;

.field private final f:Lcom/instabug/library/util/TaskDebouncer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/survey/c;->a:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Lcom/instabug/survey/f/b;

    invoke-direct {v0, p0}, Lcom/instabug/survey/f/b;-><init>(Lcom/instabug/survey/f/b$c;)V

    iput-object v0, p0, Lcom/instabug/survey/c;->b:Lcom/instabug/survey/f/b;

    .line 4
    new-instance v0, Lcom/instabug/survey/h/h;

    .line 5
    invoke-static {p1}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/instabug/survey/h/h;-><init>(Lcom/instabug/survey/h/h$b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instabug/survey/c;->c:Lcom/instabug/survey/h/h;

    .line 7
    new-instance p1, Lcom/instabug/survey/f/a;

    invoke-direct {p1, p0}, Lcom/instabug/survey/f/a;-><init>(Lcom/instabug/survey/f/a$b;)V

    iput-object p1, p0, Lcom/instabug/survey/c;->e:Lcom/instabug/survey/f/a;

    .line 8
    new-instance p1, Lcom/instabug/library/util/TaskDebouncer;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/instabug/library/util/TaskDebouncer;-><init>(J)V

    iput-object p1, p0, Lcom/instabug/survey/c;->f:Lcom/instabug/library/util/TaskDebouncer;

    .line 9
    invoke-virtual {p0}, Lcom/instabug/survey/c;->e()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/c;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/survey/c;)Lcom/instabug/survey/f/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/c;->b:Lcom/instabug/survey/f/b;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/survey/c;)Lcom/instabug/survey/h/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/c;->c:Lcom/instabug/survey/h/h;

    return-object p0
.end method

.method private c(Lcom/instabug/survey/models/Survey;)V
    .locals 1
    .param p1    # Lcom/instabug/survey/models/Survey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/survey/c;->d(Lcom/instabug/survey/models/Survey;)V

    return-void
.end method

.method private d(Lcom/instabug/survey/models/Survey;)V
    .locals 1
    .param p1    # Lcom/instabug/survey/models/Survey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-static {}, Lcom/instabug/survey/e/a;->b()Lcom/instabug/survey/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/a;->a(Lcom/instabug/survey/models/Survey;)V

    return-void
.end method

.method private j()Lcom/instabug/survey/models/Survey;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/c;->c:Lcom/instabug/survey/h/h;

    invoke-virtual {v0}, Lcom/instabug/survey/h/h;->a()Lcom/instabug/survey/models/Survey;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized k()Lcom/instabug/survey/c;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    const-class v0, Lcom/instabug/survey/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/survey/c;->g:Lcom/instabug/survey/c;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/survey/c;->l()V

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/survey/c;->g:Lcom/instabug/survey/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized l()V
    .locals 3

    const-class v0, Lcom/instabug/survey/c;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v1, Lcom/instabug/survey/c;

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instabug/survey/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/instabug/survey/c;->g:Lcom/instabug/survey/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private m()V
    .locals 3

    const-wide/16 v0, 0x2710

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    invoke-static {}, Lcom/instabug/survey/g/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instabug/library/Instabug;->isAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/core/eventbus/UserEventsEventBus;->getInstance()Lcom/instabug/library/core/eventbus/UserEventsEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/survey/b;

    invoke-direct {v1}, Lcom/instabug/survey/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/UserEventsEventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    const-class v1, Lcom/instabug/survey/f/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/instabug/survey/models/Survey;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getSurveys()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/Survey;

    .line 4
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing survey With token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Survey With token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method a()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/instabug/survey/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/instabug/survey/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/library/util/LocaleUtils;->getCurrentLocaleResolved(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/instabug/survey/g/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    .line 27
    :try_start_0
    invoke-static {p1, p2}, Lcom/instabug/survey/cache/SurveysCacheManager;->getSurveyById(J)Lcom/instabug/survey/models/Survey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p1, p2}, Lcom/instabug/survey/cache/SurveysCacheManager;->getSurveyById(J)Lcom/instabug/survey/models/Survey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/survey/c;->c(Lcom/instabug/survey/models/Survey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/instabug/survey/models/Survey;)V
    .locals 0
    .param p1    # Lcom/instabug/survey/models/Survey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lcom/instabug/survey/c;->c(Lcom/instabug/survey/models/Survey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/instabug/survey/models/a;)V
    .locals 2

    .line 30
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/a;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/g/c;->a(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/instabug/survey/models/a;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/d/d/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t update country info due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 22
    const-class v0, Lcom/instabug/survey/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-direct {p0}, Lcom/instabug/survey/c;->m()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/instabug/survey/c;->a()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/instabug/survey/c;->c(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/instabug/survey/c;->b(Ljava/util/List;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/instabug/survey/c;->e(Ljava/util/List;)V

    .line 14
    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    const-class p1, Lcom/instabug/survey/c;

    const-string v0, "Instabug SDK is disabled."

    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/c;->m()V

    return-void
.end method

.method a(Lcom/instabug/survey/models/Survey;Lcom/instabug/survey/models/Survey;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/Survey;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/instabug/survey/c;->c:Lcom/instabug/survey/h/h;

    invoke-virtual {v0}, Lcom/instabug/survey/h/h;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Lcom/instabug/survey/models/Survey;)V
    .locals 0
    .param p1    # Lcom/instabug/survey/models/Survey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-direct {p0, p1}, Lcom/instabug/survey/c;->c(Lcom/instabug/survey/models/Survey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Lcom/instabug/survey/models/a;)V
    .locals 7

    .line 12
    :try_start_0
    invoke-static {}, Lcom/instabug/survey/g/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-wide v1, Lcom/instabug/survey/g/c;->a:J

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Lcom/instabug/survey/models/a;->fromJson(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/instabug/survey/models/a;->d()J

    move-result-wide v1

    .line 18
    :cond_0
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/instabug/survey/g/c;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v2, v3, v0

    if-lez v2, :cond_1

    .line 20
    iget-object p1, p0, Lcom/instabug/survey/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/instabug/survey/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/instabug/survey/c;->e:Lcom/instabug/survey/f/a;

    iget-object v0, p0, Lcom/instabug/survey/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/instabug/survey/f/a;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lcom/instabug/survey/c;->a(Lcom/instabug/survey/models/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t resolve country info due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getSurveys()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/Survey;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instabug/survey/cache/SurveysCacheManager;->delete(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(Lcom/instabug/survey/models/Survey;Lcom/instabug/survey/models/Survey;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 6
    invoke-virtual {p2}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result p2

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b(Ljava/lang/String;)Z
    .locals 2

    .line 7
    invoke-virtual {p0, p1}, Lcom/instabug/survey/c;->a(Ljava/lang/String;)Lcom/instabug/survey/models/Survey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isAnswered()Z

    move-result p1

    return p1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No survey with token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method c()V
    .locals 1

    .line 31
    new-instance v0, Lcom/instabug/survey/c$d;

    invoke-direct {v0, p0}, Lcom/instabug/survey/c$d;-><init>(Lcom/instabug/survey/c;)V

    invoke-static {v0}, Lcom/instabug/library/user/UserManagerWrapper;->getUUIDAsync(Lcom/instabug/library/internal/storage/cache/db/InstabugDBInsertionListener;)V

    return-void
.end method

.method c(Ljava/util/List;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getSurveys()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserUUID()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/survey/models/Survey;

    .line 12
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14
    invoke-virtual {v3}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 15
    invoke-static {v3, v4, v1, v5}, Lcom/instabug/survey/common/userInteractions/UserInteractionCacheManager;->retrieveUserInteraction(JLjava/lang/String;I)Lcom/instabug/survey/e/c/i;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 21
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 26
    invoke-static {v2}, Lcom/instabug/survey/common/userInteractions/UserInteractionCacheManager;->deleteBulkOfUserInteractions(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method c(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    invoke-virtual {v0, v1}, Lcom/instabug/library/InstabugState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/survey/h/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/Instabug;->isAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/instabug/survey/c;->a(Ljava/lang/String;)Lcom/instabug/survey/models/Survey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/instabug/survey/c;->c(Lcom/instabug/survey/models/Survey;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method d()V
    .locals 1

    .line 20
    new-instance v0, Lcom/instabug/survey/c$e;

    invoke-direct {v0, p0}, Lcom/instabug/survey/c$e;-><init>(Lcom/instabug/survey/c;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/c;->f:Lcom/instabug/library/util/TaskDebouncer;

    new-instance v1, Lcom/instabug/survey/c$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/survey/c$a;-><init>(Lcom/instabug/survey/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/TaskDebouncer;->debounce(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method d(Ljava/util/List;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserUUID()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/survey/models/Survey;

    .line 6
    invoke-virtual {v3}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 7
    invoke-static {v4, v5, v0, v6}, Lcom/instabug/survey/common/userInteractions/UserInteractionCacheManager;->retrieveUserInteraction(JLjava/lang/String;I)Lcom/instabug/survey/e/c/i;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 12
    invoke-virtual {v3, v4}, Lcom/instabug/survey/models/Survey;->setUserInteraction(Lcom/instabug/survey/e/c/i;)V

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    invoke-static {v1}, Lcom/instabug/survey/cache/SurveysCacheManager;->updateBulk(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/c;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/library/core/eventbus/UserEventsEventBus;->getInstance()Lcom/instabug/library/core/eventbus/UserEventsEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/survey/c$b;

    invoke-direct {v1, p0}, Lcom/instabug/survey/c$b;-><init>(Lcom/instabug/survey/c;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/UserEventsEventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/survey/c;->d:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method e(Ljava/util/List;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/Survey;

    .line 4
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instabug/survey/cache/SurveysCacheManager;->isSurveyExisting(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instabug/survey/cache/SurveysCacheManager;->getSurveyById(J)Lcom/instabug/survey/models/Survey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/instabug/survey/c;->b(Lcom/instabug/survey/models/Survey;Lcom/instabug/survey/models/Survey;)Z

    move-result v2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/instabug/survey/c;->a(Lcom/instabug/survey/models/Survey;Lcom/instabug/survey/models/Survey;)Z

    move-result v3

    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    .line 13
    :cond_2
    invoke-static {v0, v2, v3}, Lcom/instabug/survey/cache/SurveysCacheManager;->insertOrUpdatePausedOrLocale(Lcom/instabug/survey/models/Survey;ZZ)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-static {v0}, Lcom/instabug/survey/cache/SurveysCacheManager;->addSurvey(Lcom/instabug/survey/models/Survey;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/survey/c;->h()V

    .line 3
    invoke-static {}, Lcom/instabug/survey/e/a;->b()Lcom/instabug/survey/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/survey/e/a;->a(Z)V

    .line 4
    invoke-static {}, Lcom/instabug/survey/e/a;->b()Lcom/instabug/survey/e/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instabug/survey/e/a;->b(Z)V

    .line 5
    invoke-static {}, Lcom/instabug/survey/e/a;->b()Lcom/instabug/survey/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/a;->a()V

    .line 6
    sget-object v0, Lcom/instabug/survey/c;->g:Lcom/instabug/survey/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/instabug/survey/c;->g:Lcom/instabug/survey/c;
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

.method g()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/instabug/survey/c;

    const-string v2, "Instabug SDK is disabled."

    invoke-static {v0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v2, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    invoke-virtual {v0, v2}, Lcom/instabug/library/InstabugState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/instabug/survey/h/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/instabug/library/Instabug;->isAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/instabug/survey/c;->j()Lcom/instabug/survey/models/Survey;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0, v0}, Lcom/instabug/survey/c;->c(Lcom/instabug/survey/models/Survey;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :catch_0
    move-exception v0

    .line 20
    const-class v2, Lcom/instabug/survey/f/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/c;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/c;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/survey/c$c;

    invoke-direct {v0, p0}, Lcom/instabug/survey/c$c;-><init>(Lcom/instabug/survey/c;)V

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->doOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t resolve country info due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
