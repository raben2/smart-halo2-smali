.class public Lcom/instabug/library/network/service/synclogs/d;
.super Lcom/instabug/library/network/e/d/b;
.source "SyncLogService.java"


# static fields
.field private static e:Lcom/instabug/library/network/service/synclogs/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private d:Lcom/instabug/library/network/service/synclogs/c;


# direct methods
.method private constructor <init>(Lcom/instabug/library/network/a;Lcom/instabug/library/network/service/synclogs/c;Lcom/instabug/library/network/Request$Callbacks;Lcom/instabug/library/network/e/d/a;)V
    .locals 0
    .param p1    # Lcom/instabug/library/network/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/network/service/synclogs/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/library/network/Request$Callbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/instabug/library/network/e/d/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p4, p3}, Lcom/instabug/library/network/e/d/b;-><init>(Lcom/instabug/library/network/a;Lcom/instabug/library/network/e/d/a;Lcom/instabug/library/network/Request$Callbacks;)V

    .line 2
    iput-object p2, p0, Lcom/instabug/library/network/service/synclogs/d;->d:Lcom/instabug/library/network/service/synclogs/c;

    return-void
.end method

.method public static declared-synchronized a(Lcom/instabug/library/network/a;Lcom/instabug/library/network/service/synclogs/c;Lcom/instabug/library/network/Request$Callbacks;Lcom/instabug/library/network/e/d/a;)Lcom/instabug/library/network/service/synclogs/d;
    .locals 2
    .param p0    # Lcom/instabug/library/network/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/instabug/library/network/service/synclogs/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/network/Request$Callbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/library/network/e/d/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/instabug/library/network/service/synclogs/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/network/service/synclogs/d;->e:Lcom/instabug/library/network/service/synclogs/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/network/service/synclogs/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/instabug/library/network/service/synclogs/d;-><init>(Lcom/instabug/library/network/a;Lcom/instabug/library/network/service/synclogs/c;Lcom/instabug/library/network/Request$Callbacks;Lcom/instabug/library/network/e/d/a;)V

    sput-object v1, Lcom/instabug/library/network/service/synclogs/d;->e:Lcom/instabug/library/network/service/synclogs/d;

    .line 5
    :cond_0
    sget-object p0, Lcom/instabug/library/network/service/synclogs/d;->e:Lcom/instabug/library/network/service/synclogs/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 8
    iget-object v2, p0, Lcom/instabug/library/network/service/synclogs/d;->d:Lcom/instabug/library/network/service/synclogs/c;

    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/instabug/library/network/service/synclogs/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/network/Request;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/network/e/d/b;->b()Lcom/instabug/library/network/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/instabug/library/network/a;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/instabug/library/network/service/synclogs/d$a;

    invoke-direct {v3, p0, v1}, Lcom/instabug/library/network/service/synclogs/d$a;-><init>(Lcom/instabug/library/network/service/synclogs/d;Lcom/instabug/library/network/Request;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v0}, Lio/reactivex/Observable;->mergeDelayError(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lcom/instabug/library/network/e/d/b;->c()Lcom/instabug/library/network/e/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/network/e/d/a;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lcom/instabug/library/network/e/d/b;->c()Lcom/instabug/library/network/e/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/network/e/d/a;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/instabug/library/network/service/synclogs/d$b;

    invoke-direct {p2, p0}, Lcom/instabug/library/network/service/synclogs/d$b;-><init>(Lcom/instabug/library/network/service/synclogs/d;)V

    new-instance p3, Lcom/instabug/library/network/service/synclogs/d$c;

    invoke-direct {p3, p0}, Lcom/instabug/library/network/service/synclogs/d$c;-><init>(Lcom/instabug/library/network/service/synclogs/d;)V

    .line 25
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
