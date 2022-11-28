.class public final Lcom/instabug/library/k/b;
.super Ljava/lang/Object;
.source "InstaCapture.java"


# static fields
.field private static e:Lcom/instabug/library/k/b;


# instance fields
.field private a:Lcom/instabug/library/k/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/instabug/library/instacapture/screenshot/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/instabug/library/k/d/a;",
            "Lio/reactivex/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/instabug/library/k/d/a;",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/instabug/library/util/threading/b;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Lcom/instabug/library/util/threading/b;-><init>(I)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 8
    new-instance v0, Lcom/instabug/library/k/a;

    invoke-direct {v0}, Lcom/instabug/library/k/a;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/k/b;->a:Lcom/instabug/library/k/a;

    .line 9
    invoke-virtual {v0, p1}, Lcom/instabug/library/k/a;->a(Landroid/app/Activity;)V

    .line 10
    invoke-direct {p0}, Lcom/instabug/library/k/b;->a()Lcom/instabug/library/instacapture/screenshot/a;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/k/b;->b:Lcom/instabug/library/instacapture/screenshot/a;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/k/b;->c:Ljava/util/Map;

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/k/b;->d:Ljava/util/Map;

    return-void
.end method

.method private a()Lcom/instabug/library/instacapture/screenshot/a;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/instabug/library/k/b;->a:Lcom/instabug/library/k/a;

    invoke-virtual {v0}, Lcom/instabug/library/k/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    const-class v0, Lcom/instabug/library/k/b;

    const-string v1, "Is your activity running?"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/instabug/library/instacapture/screenshot/a;

    invoke-direct {v0}, Lcom/instabug/library/instacapture/screenshot/a;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/instabug/library/k/b;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    const-class v0, Lcom/instabug/library/k/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/instabug/library/k/b;->e:Lcom/instabug/library/k/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/instabug/library/k/b;

    invoke-direct {v1, p0}, Lcom/instabug/library/k/b;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/instabug/library/k/b;->e:Lcom/instabug/library/k/b;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/instabug/library/k/b;->e:Lcom/instabug/library/k/b;

    invoke-direct {v1, p0}, Lcom/instabug/library/k/b;->b(Landroid/app/Activity;)V

    .line 9
    :goto_0
    sget-object p0, Lcom/instabug/library/k/b;->e:Lcom/instabug/library/k/b;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/instabug/library/k/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/k/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/k/b;Lcom/instabug/library/k/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/k/b;->a(Lcom/instabug/library/k/d/a;)V

    return-void
.end method

.method private a(Lcom/instabug/library/k/d/a;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/instabug/library/k/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/instabug/library/k/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/k/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/instabug/library/k/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private varargs b(Lcom/instabug/library/k/d/a;[I)Lio/reactivex/Observable;
    .locals 1
    .param p2    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/k/d/a;",
            "[I)",
            "Lio/reactivex/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/instabug/library/k/b;->a:Lcom/instabug/library/k/a;

    invoke-virtual {v0}, Lcom/instabug/library/k/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    new-instance p1, Lcom/instabug/library/k/c/a;

    const-string p2, "Is your activity running?"

    invoke-direct {p1, p2}, Lcom/instabug/library/k/c/a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Lcom/instabug/library/k/d/a;->a()V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/k/b;->b:Lcom/instabug/library/instacapture/screenshot/a;

    if-nez p1, :cond_2

    .line 19
    new-instance p1, Lcom/instabug/library/k/c/c;

    const-string p2, "screenshot provider is null"

    invoke-direct {p1, p2}, Lcom/instabug/library/k/c/c;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 21
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/instabug/library/instacapture/screenshot/a;->a(Landroid/app/Activity;[I)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 24
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 26
    :cond_3
    new-instance p1, Lcom/instabug/library/k/c/b;

    const-string p2, "Observable of bitmap is null due to IllegalArgumentException or OutOfMemoryError"

    invoke-direct {p1, p2}, Lcom/instabug/library/k/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/instabug/library/k/d/a;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_NULLABLE_DEREFERENCE"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/instabug/library/k/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/instabug/library/k/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;

    .line 7
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/k/b$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/library/k/b$a;-><init>(Lcom/instabug/library/k/b;Lcom/instabug/library/k/d/a;)V

    new-instance v2, Lcom/instabug/library/k/b$b;

    invoke-direct {v2, p0, p1}, Lcom/instabug/library/k/b$b;-><init>(Lcom/instabug/library/k/b;Lcom/instabug/library/k/d/a;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/library/k/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/library/k/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/instabug/library/k/d/a;

    .line 4
    iget-object v1, p0, Lcom/instabug/library/k/b;->d:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/instabug/library/k/b;->b(Lcom/instabug/library/k/d/a;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/k/b;->a:Lcom/instabug/library/k/a;

    invoke-virtual {v0, p1}, Lcom/instabug/library/k/a;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/instabug/library/k/d/a;[I)V
    .locals 1
    .param p2    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    iget-object v0, p0, Lcom/instabug/library/k/b;->b:Lcom/instabug/library/instacapture/screenshot/a;

    if-nez v0, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/instabug/library/k/b;->a()Lcom/instabug/library/instacapture/screenshot/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/k/b;->b:Lcom/instabug/library/instacapture/screenshot/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 17
    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "screenshot provider is null"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/instabug/library/k/d/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/k/b;->c:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/instabug/library/k/b;->b(Lcom/instabug/library/k/d/a;[I)Lio/reactivex/Observable;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/instabug/library/k/b;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 25
    invoke-direct {p0}, Lcom/instabug/library/k/b;->b()V

    :cond_2
    return-void
.end method
