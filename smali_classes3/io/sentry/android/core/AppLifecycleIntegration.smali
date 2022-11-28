.class public final Lio/sentry/android/core/AppLifecycleIntegration;
.super Ljava/lang/Object;
.source "AppLifecycleIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# instance fields
.field private final handler:Lio/sentry/android/core/IHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private options:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field watcher:Lio/sentry/android/core/LifecycleWatcher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    new-instance v0, Lio/sentry/android/core/MainLooperHandler;

    invoke-direct {v0}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/android/core/AppLifecycleIntegration;-><init>(Lio/sentry/android/core/IHandler;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/IHandler;)V
    .locals 0
    .param p1    # Lio/sentry/android/core/IHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/sentry/android/core/AppLifecycleIntegration;->handler:Lio/sentry/android/core/IHandler;

    return-void
.end method

.method private addObserver(Lio/sentry/IHub;)V
    .locals 7
    .param p1    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 81
    new-instance v6, Lio/sentry/android/core/LifecycleWatcher;

    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 84
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionTrackingIntervalMillis()J

    move-result-wide v2

    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 85
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSessionTracking()Z

    move-result v4

    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 86
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/LifecycleWatcher;-><init>(Lio/sentry/IHub;JZZ)V

    iput-object v6, p0, Lio/sentry/android/core/AppLifecycleIntegration;->watcher:Lio/sentry/android/core/LifecycleWatcher;

    .line 87
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->watcher:Lio/sentry/android/core/LifecycleWatcher;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 88
    iget-object p1, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "AppLifecycleIntegration installed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$register$0(Lio/sentry/android/core/AppLifecycleIntegration;Lio/sentry/IHub;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lio/sentry/android/core/AppLifecycleIntegration;->addObserver(Lio/sentry/IHub;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->watcher:Lio/sentry/android/core/LifecycleWatcher;

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/AppLifecycleIntegration;->watcher:Lio/sentry/android/core/LifecycleWatcher;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->watcher:Lio/sentry/android/core/LifecycleWatcher;

    .line 96
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "AppLifecycleIntegration removed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 7
    .param p1    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "Hub is required"

    .line 34
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 36
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 40
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 41
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "enableSessionTracking enabled: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 45
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSessionTracking()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 42
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 48
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "enableAppLifecycleBreadcrumbs enabled: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 52
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    .line 49
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSessionTracking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :try_start_0
    const-string v0, "androidx.lifecycle.DefaultLifecycleObserver"

    .line 56
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "androidx.lifecycle.ProcessLifecycleOwner"

    .line 57
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    invoke-static {}, Lio/sentry/android/core/util/MainThreadChecker;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-direct {p0, p1}, Lio/sentry/android/core/AppLifecycleIntegration;->addObserver(Lio/sentry/IHub;)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->handler:Lio/sentry/android/core/IHandler;

    new-instance v1, Lio/sentry/android/core/-$$Lambda$AppLifecycleIntegration$q1qzdtzMh5E4OH5R-VItJ38UlZ8;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/-$$Lambda$AppLifecycleIntegration$q1qzdtzMh5E4OH5R-VItJ38UlZ8;-><init>(Lio/sentry/android/core/AppLifecycleIntegration;Lio/sentry/IHub;)V

    invoke-interface {v0, v1}, Lio/sentry/android/core/IHandler;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "AppLifecycleIntegration could not be installed"

    .line 75
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 67
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v1, "androidx.lifecycle is not available, AppLifecycleIntegration won\'t be installed"

    .line 68
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
