.class public Lcom/instabug/library/n/a;
.super Ljava/lang/Object;
.source "SessionProfiler.java"


# static fields
.field private static c:Lcom/instabug/library/n/a;


# instance fields
.field private a:Lcom/instabug/library/n/b/a/e;

.field private b:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/n/b/a/e;

    invoke-direct {v0}, Lcom/instabug/library/n/b/a/e;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/n/a;->a:Lcom/instabug/library/n/b/a/e;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/n/a;->f()V

    return-void
.end method

.method private a(J)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 4
    rem-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v0}, Lcom/instabug/library/util/DeviceStateProvider;->getBatteryLevel(Landroid/content/Context;)I

    move-result p1

    .line 9
    invoke-static {v0}, Lcom/instabug/library/util/DeviceStateProvider;->getBatteryState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 10
    iget-object v1, p0, Lcom/instabug/library/n/a;->a:Lcom/instabug/library/n/b/a/e;

    int-to-float p1, p1

    const-string v2, "Unplugged"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p1, p2}, Lcom/instabug/library/n/b/a/e;->a(FZ)V

    goto :goto_0

    :cond_0
    const-string p1, "SessionProfiler"

    const-string p2, "could attach battery state (Null app context)"

    .line 11
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 15
    invoke-static {v0}, Lcom/instabug/library/util/DeviceStateProvider;->getScreenOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/instabug/library/n/a;->a:Lcom/instabug/library/n/b/a/e;

    new-instance v1, Lcom/instabug/library/n/b/a/d;

    invoke-direct {v1, p1}, Lcom/instabug/library/n/b/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/instabug/library/n/b/a/e;->a(Lcom/instabug/library/n/b/a/d;)V

    goto :goto_1

    :cond_1
    const-string p1, "SessionProfiler"

    const-string p2, "could attach screen orientation (Null app context)"

    .line 17
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_2

    .line 22
    iget-object p1, p0, Lcom/instabug/library/n/a;->a:Lcom/instabug/library/n/b/a/e;

    invoke-static {v0}, Lcom/instabug/library/n/b/a/b;->b(Landroid/content/Context;)Lcom/instabug/library/n/b/a/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/library/n/b/a/e;->a(Lcom/instabug/library/n/b/a/b;)V

    goto :goto_2

    :cond_2
    const-string p1, "SessionProfiler"

    const-string p2, "could attach network state (Null app context)"

    .line 23
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 28
    iget-object p1, p0, Lcom/instabug/library/n/a;->a:Lcom/instabug/library/n/b/a/e;

    new-instance p2, Lcom/instabug/library/n/b/a/c;

    invoke-static {v0}, Lcom/instabug/library/util/DeviceStateProvider;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v1

    .line 29
    invoke-static {v0}, Lcom/instabug/library/util/DeviceStateProvider;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v3

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/instabug/library/n/b/a/c;-><init>(JJ)V

    .line 30
    invoke-virtual {p1, p2}, Lcom/instabug/library/n/b/a/e;->a(Lcom/instabug/library/n/b/a/c;)V

    goto :goto_3

    :cond_4
    const-string p1, "SessionProfiler"

    const-string p2, "could attach used memory (Null app context)"

    .line 32
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :goto_3
    iget-object p1, p0, Lcom/instabug/library/n/a;->a:Lcom/instabug/library/n/b/a/e;

    new-instance p2, Lcom/instabug/library/n/b/a/c;

    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getUsedStorage()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/instabug/library/n/b/a/c;-><init>(J)V

    invoke-virtual {p1, p2}, Lcom/instabug/library/n/b/a/e;->b(Lcom/instabug/library/n/b/a/c;)V

    .line 37
    iget-object p1, p0, Lcom/instabug/library/n/a;->a:Lcom/instabug/library/n/b/a/e;

    invoke-virtual {p1}, Lcom/instabug/library/n/b/a/e;->c()Lcom/instabug/library/n/b/a/e;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/n/a;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/n/a;->a(J)V

    return-void
.end method

.method public static d()Lcom/instabug/library/n/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/n/a;->c:Lcom/instabug/library/n/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/n/a;

    invoke-direct {v0}, Lcom/instabug/library/n/a;-><init>()V

    sput-object v0, Lcom/instabug/library/n/a;->c:Lcom/instabug/library/n/a;

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/library/n/a;->c:Lcom/instabug/library/n/a;

    return-object v0
.end method

.method private e()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->SESSION_PROFILER:Lcom/instabug/library/Feature;

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/SessionStateEventBus;->getInstance()Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/n/a$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/n/a$a;-><init>(Lcom/instabug/library/n/a;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/library/n/b/a/e;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/instabug/library/n/a;->a:Lcom/instabug/library/n/b/a/e;

    invoke-virtual {v0}, Lcom/instabug/library/n/b/a/e;->c()Lcom/instabug/library/n/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/n/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/n/a;->c()V

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/n/a$d;

    invoke-direct {v1, p0}, Lcom/instabug/library/n/a$d;-><init>(Lcom/instabug/library/n/a;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/n/a$b;

    invoke-direct {v1, p0}, Lcom/instabug/library/n/a$b;-><init>(Lcom/instabug/library/n/a;)V

    new-instance v2, Lcom/instabug/library/n/a$c;

    invoke-direct {v2, p0}, Lcom/instabug/library/n/a$c;-><init>(Lcom/instabug/library/n/a;)V

    .line 10
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/n/a;->b:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/n/a;->b:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
