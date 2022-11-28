.class public Lcom/instabug/library/logging/e;
.super Ljava/lang/Object;
.source "LoggingFileResolver.java"


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private a:Lcom/instabug/library/logging/d;

.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/instabug/library/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/logging/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instabug/library/logging/e;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/logging/e;->e:Z

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/logging/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    new-instance v0, Lcom/instabug/library/logging/d;

    invoke-direct {v0, p1}, Lcom/instabug/library/logging/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/logging/e;->a:Lcom/instabug/library/logging/d;

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/library/logging/e;->d:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {p0}, Lcom/instabug/library/logging/e;->a()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/logging/e;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/library/logging/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/library/logging/e;Lcom/instabug/library/model/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/library/logging/e;->c(Lcom/instabug/library/model/d;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/logging/e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/logging/e;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/instabug/library/logging/e;->a:Lcom/instabug/library/logging/d;

    invoke-virtual {v0}, Lcom/instabug/library/logging/d;->a()Ljava/io/File;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/instabug/library/logging/e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 26
    invoke-static {v1}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object v1

    new-instance v2, Lcom/instabug/library/logging/h;

    invoke-direct {v2, v0, p1}, Lcom/instabug/library/logging/h;-><init>(Ljava/io/File;Ljava/util/List;)V

    .line 27
    invoke-virtual {v1, v2}, Lcom/instabug/library/internal/storage/DiskUtils;->writeOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->execute()Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/library/logging/e;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/library/logging/e;->e:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/logging/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(J)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/instabug/library/logging/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/logging/e$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/logging/e$a;-><init>(Lcom/instabug/library/logging/e;)V

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/logging/e$j;

    invoke-direct {v1, p0, p1, p2}, Lcom/instabug/library/logging/e$j;-><init>(Lcom/instabug/library/logging/e;J)V

    .line 13
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/instabug/library/logging/e$h;

    invoke-direct {p2, p0}, Lcom/instabug/library/logging/e$h;-><init>(Lcom/instabug/library/logging/e;)V

    new-instance v0, Lcom/instabug/library/logging/e$i;

    invoke-direct {v0, p0}, Lcom/instabug/library/logging/e$i;-><init>(Lcom/instabug/library/logging/e;)V

    .line 26
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private b(Lcom/instabug/library/model/d;)V
    .locals 2

    .line 3
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/logging/e$f;

    invoke-direct {v0, p0}, Lcom/instabug/library/logging/e$f;-><init>(Lcom/instabug/library/logging/e;)V

    new-instance v1, Lcom/instabug/library/logging/e$g;

    invoke-direct {v1, p0}, Lcom/instabug/library/logging/e$g;-><init>(Lcom/instabug/library/logging/e;)V

    .line 5
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/logging/e;->f:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic b(Lcom/instabug/library/logging/e;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/instabug/library/logging/e;->e:Z

    return p0
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/logging/e;->c:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/logging/e$e;

    invoke-direct {v1, p0}, Lcom/instabug/library/logging/e$e;-><init>(Lcom/instabug/library/logging/e;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/logging/e$d;

    invoke-direct {v1, p0}, Lcom/instabug/library/logging/e$d;-><init>(Lcom/instabug/library/logging/e;)V

    .line 10
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/logging/e$b;

    invoke-direct {v1, p0}, Lcom/instabug/library/logging/e$b;-><init>(Lcom/instabug/library/logging/e;)V

    new-instance v2, Lcom/instabug/library/logging/e$c;

    invoke-direct {v2, p0}, Lcom/instabug/library/logging/e$c;-><init>(Lcom/instabug/library/logging/e;)V

    .line 16
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/logging/e;->c:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private c(Lcom/instabug/library/model/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/instabug/library/logging/e;->a:Lcom/instabug/library/logging/d;

    invoke-virtual {v0}, Lcom/instabug/library/logging/d;->a()Ljava/io/File;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/instabug/library/logging/e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 20
    invoke-static {v1}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object v1

    new-instance v2, Lcom/instabug/library/logging/g;

    invoke-direct {v2, v0, p1}, Lcom/instabug/library/logging/g;-><init>(Ljava/io/File;Lcom/instabug/library/model/d;)V

    .line 21
    invoke-virtual {v1, v2}, Lcom/instabug/library/internal/storage/DiskUtils;->writeOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->execute()Landroid/net/Uri;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/instabug/library/logging/e;->a:Lcom/instabug/library/logging/d;

    invoke-virtual {v0}, Lcom/instabug/library/logging/d;->b()V

    .line 6
    invoke-direct {p0}, Lcom/instabug/library/logging/e;->c()V

    return-void
.end method

.method a(J)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/logging/e;->b(J)V

    return-void
.end method

.method declared-synchronized a(Lcom/instabug/library/model/d;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 15
    :try_start_0
    iput-boolean v0, p0, Lcom/instabug/library/logging/e;->e:Z

    .line 16
    iget-object v0, p0, Lcom/instabug/library/logging/e;->f:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    .line 17
    invoke-direct {p0, p1}, Lcom/instabug/library/logging/e;->b(Lcom/instabug/library/model/d;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/instabug/library/logging/e;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 21
    :cond_1
    invoke-direct {p0, p1}, Lcom/instabug/library/logging/e;->b(Lcom/instabug/library/model/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/instabug/library/logging/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/instabug/library/model/c$b;

    invoke-direct {v1}, Lcom/instabug/library/model/c$b;-><init>()V

    .line 9
    invoke-virtual {v1, p1}, Lcom/instabug/library/model/c$b;->c(Ljava/lang/String;)Lcom/instabug/library/model/c$b;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/instabug/library/model/c$b;->b(Ljava/lang/String;)Lcom/instabug/library/model/c$b;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Lcom/instabug/library/model/c$b;->a(Ljava/lang/String;)Lcom/instabug/library/model/c$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p4, p5}, Lcom/instabug/library/model/c$b;->a(J)Lcom/instabug/library/model/c$b;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/instabug/library/model/c$b;->a()Lcom/instabug/library/model/c;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
