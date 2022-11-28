.class public Lcom/instabug/apm/e/a;
.super Ljava/lang/Object;
.source "ServiceLocator.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/instabug/apm/c/d;

.field private static c:Lcom/instabug/apm/c/a;

.field private static d:Lcom/instabug/apm/i/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/instabug/apm/f/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static g:Lcom/instabug/apm/b/a/b/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static h:Lcom/instabug/apm/b/a/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static i:Lcom/instabug/apm/f/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static j:Lcom/instabug/apm/b/a/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static k:Lcom/instabug/apm/f/d/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static l:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/instabug/apm/b/a/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/instabug/apm/h/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/instabug/apm/h/c/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/instabug/apm/h/c/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Lcom/instabug/apm/b/a/e/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static q:Lcom/instabug/apm/f/e/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static r:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Lcom/instabug/apm/f/d/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static t:Lcom/instabug/apm/f/e/f/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static A()Lcom/instabug/apm/b/a/c/e;
    .locals 7

    .line 1
    new-instance v6, Lcom/instabug/apm/b/a/c/f;

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->x()Lcom/instabug/apm/b/a/c/c;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->o()Lcom/instabug/apm/b/a/c/a;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v3

    const-string v0, "session_thread_executor"

    .line 5
    invoke-static {v0}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/instabug/apm/e/a;->E()Lcom/instabug/apm/b/a/d/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/instabug/apm/b/a/c/f;-><init>(Lcom/instabug/apm/b/a/c/c;Lcom/instabug/apm/b/a/c/a;Lcom/instabug/apm/c/c;Ljava/util/concurrent/Executor;Lcom/instabug/apm/b/a/d/c;)V

    return-object v6
.end method

.method public static B()Lcom/instabug/library/networkv2/NetworkManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/networkv2/NetworkManager;

    invoke-direct {v0}, Lcom/instabug/library/networkv2/NetworkManager;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized C()Lcom/instabug/apm/f/d/c;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->k:Lcom/instabug/apm/f/d/c;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->s()Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v3

    .line 7
    new-instance v4, Lcom/instabug/apm/b/a/d/b;

    invoke-direct {v4, v1, v2, v3}, Lcom/instabug/apm/b/a/d/b;-><init>(Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;Lcom/instabug/apm/logger/a/a;)V

    .line 8
    new-instance v1, Lcom/instabug/apm/f/d/d;

    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v5

    invoke-direct {v1, v5, v4, v2, v3}, Lcom/instabug/apm/f/d/d;-><init>(Lcom/instabug/apm/c/c;Lcom/instabug/apm/b/a/d/a;Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;Lcom/instabug/apm/logger/a/a;)V

    sput-object v1, Lcom/instabug/apm/e/a;->k:Lcom/instabug/apm/f/d/c;

    .line 10
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->k:Lcom/instabug/apm/f/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized D()Lcom/instabug/apm/h/c/d/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->n:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/instabug/apm/h/c/d/b;

    invoke-direct {v2}, Lcom/instabug/apm/h/c/d/b;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/instabug/apm/e/a;->n:Ljava/lang/ref/WeakReference;

    .line 4
    :cond_1
    sget-object v1, Lcom/instabug/apm/e/a;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/apm/h/c/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized E()Lcom/instabug/apm/b/a/d/c;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->l:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/instabug/apm/b/a/d/d;

    invoke-direct {v2}, Lcom/instabug/apm/b/a/d/d;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/instabug/apm/e/a;->l:Ljava/lang/ref/WeakReference;

    .line 5
    :cond_1
    sget-object v1, Lcom/instabug/apm/e/a;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/apm/b/a/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized F()Lcom/instabug/apm/f/d/f;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->s:Lcom/instabug/apm/f/d/f;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/f/d/g;

    invoke-direct {v1}, Lcom/instabug/apm/f/d/g;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->s:Lcom/instabug/apm/f/d/f;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->s:Lcom/instabug/apm/f/d/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized G()Landroid/content/SharedPreferences;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/apm/e/a;->l()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "APM_SHARED_PREFERENCES"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized H()Lcom/instabug/apm/h/b/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->m:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/instabug/apm/h/b/b;

    invoke-direct {v2}, Lcom/instabug/apm/h/b/b;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/instabug/apm/e/a;->m:Ljava/lang/ref/WeakReference;

    .line 5
    :cond_1
    sget-object v1, Lcom/instabug/apm/e/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/apm/h/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static I()Lcom/instabug/apm/f/e/b;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->m()Lcom/instabug/apm/f/e/f/a;

    move-result-object v0

    check-cast v0, Lcom/instabug/apm/f/e/b;

    return-object v0
.end method

.method public static declared-synchronized J()Lcom/instabug/apm/b/a/e/a;
    .locals 2

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->p:Lcom/instabug/apm/b/a/e/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/b/a/e/b;

    invoke-direct {v1}, Lcom/instabug/apm/b/a/e/b;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->p:Lcom/instabug/apm/b/a/e/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->p:Lcom/instabug/apm/b/a/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized K()Lcom/instabug/apm/f/e/c;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->q:Lcom/instabug/apm/f/e/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/f/e/d;

    invoke-direct {v1}, Lcom/instabug/apm/f/e/d;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->q:Lcom/instabug/apm/f/e/c;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->q:Lcom/instabug/apm/f/e/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized L()Lcom/instabug/apm/h/c/e/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->o:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/instabug/apm/h/c/e/b;

    invoke-direct {v2}, Lcom/instabug/apm/h/c/e/b;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/instabug/apm/e/a;->o:Ljava/lang/ref/WeakReference;

    .line 4
    :cond_1
    sget-object v1, Lcom/instabug/apm/e/a;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/apm/h/c/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized M()V
    .locals 2

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sput-object v1, Lcom/instabug/apm/e/a;->e:Ljava/util/Map;

    .line 2
    sput-object v1, Lcom/instabug/apm/e/a;->d:Lcom/instabug/apm/i/a;

    .line 3
    sput-object v1, Lcom/instabug/apm/e/a;->f:Lcom/instabug/apm/f/b/a;

    .line 4
    sput-object v1, Lcom/instabug/apm/e/a;->g:Lcom/instabug/apm/b/a/b/c;

    .line 5
    sput-object v1, Lcom/instabug/apm/e/a;->i:Lcom/instabug/apm/f/a/a;

    .line 6
    sput-object v1, Lcom/instabug/apm/e/a;->j:Lcom/instabug/apm/b/a/a/a;

    .line 7
    sput-object v1, Lcom/instabug/apm/e/a;->q:Lcom/instabug/apm/f/e/c;

    .line 8
    sput-object v1, Lcom/instabug/apm/e/a;->p:Lcom/instabug/apm/b/a/e/a;

    .line 9
    sput-object v1, Lcom/instabug/apm/e/a;->t:Lcom/instabug/apm/f/e/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a()Lcom/instabug/apm/c/a;
    .locals 3

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->c:Lcom/instabug/apm/c/a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/apm/c/b;

    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instabug/apm/c/b;-><init>(Lcom/instabug/apm/c/c;)V

    sput-object v1, Lcom/instabug/apm/e/a;->c:Lcom/instabug/apm/c/a;

    .line 5
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->c:Lcom/instabug/apm/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/instabug/apm/f/e/a;F)Lcom/instabug/apm/j/a;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 18
    new-instance v0, Lcom/instabug/apm/j/b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/apm/j/b;-><init>(Lcom/instabug/apm/f/e/a;F)V

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 10

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->e:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->e:Ljava/util/Map;

    .line 9
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->e:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_1

    .line 11
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/instabug/apm/k/g/a;

    const/16 v2, 0xa

    invoke-direct {v9, v2}, Lcom/instabug/apm/k/g/a;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 17
    sget-object v2, Lcom/instabug/apm/e/a;->e:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/instabug/apm/e/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized b()Lcom/instabug/apm/c/c;
    .locals 2

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->b:Lcom/instabug/apm/c/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/c/d;

    invoke-direct {v1}, Lcom/instabug/apm/c/d;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->b:Lcom/instabug/apm/c/d;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->b:Lcom/instabug/apm/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()Lcom/instabug/apm/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/apm/a;

    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/apm/a;-><init>(Lcom/instabug/apm/logger/a/a;)V

    return-object v0
.end method

.method public static d()Lcom/instabug/apm/logger/a/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/apm/logger/a/a;

    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/apm/logger/a/a;-><init>(Lcom/instabug/apm/c/c;)V

    return-object v0
.end method

.method public static e()Lcom/instabug/apm/c/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/c/f;

    invoke-direct {v0}, Lcom/instabug/apm/c/f;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized f()Lcom/instabug/apm/i/a;
    .locals 2

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->d:Lcom/instabug/apm/i/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/i/b;

    invoke-direct {v1}, Lcom/instabug/apm/i/b;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->d:Lcom/instabug/apm/i/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->d:Lcom/instabug/apm/i/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g()Lcom/instabug/apm/b/a/a/a;
    .locals 2

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->j:Lcom/instabug/apm/b/a/a/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/b/a/a/b;

    invoke-direct {v1}, Lcom/instabug/apm/b/a/a/b;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->j:Lcom/instabug/apm/b/a/a/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->j:Lcom/instabug/apm/b/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static h()Lcom/instabug/apm/h/c/a/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/h/c/a/b;

    invoke-direct {v0}, Lcom/instabug/apm/h/c/a/b;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized i()Lcom/instabug/apm/f/a/a;
    .locals 2

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->i:Lcom/instabug/apm/f/a/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/f/a/b;

    invoke-direct {v1}, Lcom/instabug/apm/f/a/b;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->i:Lcom/instabug/apm/f/a/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->i:Lcom/instabug/apm/f/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getAppToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcom/instabug/apm/f/e/e/a;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/apm/f/e/e/b;

    invoke-direct {v0}, Lcom/instabug/apm/f/e/e/b;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized l()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized m()Lcom/instabug/apm/f/e/f/a;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->t:Lcom/instabug/apm/f/e/f/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/f/e/f/b;

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->r()Lcom/instabug/apm/k/d/a;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/instabug/apm/f/e/f/b;-><init>(Lcom/instabug/apm/k/d/a;Lcom/instabug/apm/c/c;Lcom/instabug/apm/logger/a/a;)V

    sput-object v1, Lcom/instabug/apm/e/a;->t:Lcom/instabug/apm/f/e/f/a;

    .line 8
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->t:Lcom/instabug/apm/f/e/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized n()Lcom/instabug/apm/b/a/b/a;
    .locals 4

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->h:Lcom/instabug/apm/b/a/b/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/b/a/b/b;

    invoke-static {}, Lcom/instabug/apm/e/a;->p()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v2

    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instabug/apm/b/a/b/b;-><init>(Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;Lcom/instabug/apm/logger/a/a;)V

    sput-object v1, Lcom/instabug/apm/e/a;->h:Lcom/instabug/apm/b/a/b/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->h:Lcom/instabug/apm/b/a/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static o()Lcom/instabug/apm/b/a/c/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/apm/b/a/c/b;

    invoke-static {}, Lcom/instabug/apm/e/a;->p()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/apm/b/a/c/b;-><init>(Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;)V

    return-object v0
.end method

.method public static declared-synchronized p()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->r:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 11
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/instabug/apm/e/a;->l()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-static {}, Lcom/instabug/apm/e/a;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->getInstabugDbHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->init(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 13
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/instabug/apm/e/a;->r:Ljava/lang/ref/WeakReference;

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_2
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static q()Lcom/instabug/apm/k/c/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/k/c/b;

    invoke-direct {v0}, Lcom/instabug/apm/k/c/b;-><init>()V

    return-object v0
.end method

.method public static r()Lcom/instabug/apm/k/d/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/k/d/b;

    invoke-direct {v0}, Lcom/instabug/apm/k/d/b;-><init>()V

    return-object v0
.end method

.method public static s()Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    invoke-direct {v0}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;-><init>()V

    new-instance v1, Lcom/instabug/apm/k/e/a;

    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instabug/apm/k/e/a;-><init>(Lcom/instabug/apm/logger/a/a;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->withPenalty(Lcom/instabug/library/internal/utils/stability/handler/penalty/PenaltyHandler;)Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized t()Lcom/instabug/apm/b/a/b/c;
    .locals 2

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->g:Lcom/instabug/apm/b/a/b/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/b/a/b/d;

    invoke-direct {v1}, Lcom/instabug/apm/b/a/b/d;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->g:Lcom/instabug/apm/b/a/b/c;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->g:Lcom/instabug/apm/b/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized u()Lcom/instabug/apm/f/b/a;
    .locals 2

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/apm/e/a;->f:Lcom/instabug/apm/f/b/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/apm/f/b/b;

    invoke-direct {v1}, Lcom/instabug/apm/f/b/b;-><init>()V

    sput-object v1, Lcom/instabug/apm/e/a;->f:Lcom/instabug/apm/f/b/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/apm/e/a;->f:Lcom/instabug/apm/f/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized v()Lcom/instabug/apm/h/c/b/a;
    .locals 2

    const-class v0, Lcom/instabug/apm/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/instabug/apm/h/c/b/b;

    invoke-direct {v1}, Lcom/instabug/apm/h/c/b/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static w()Lcom/instabug/apm/b/a/b/e;
    .locals 7

    .line 1
    new-instance v6, Lcom/instabug/apm/b/a/b/f;

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->t()Lcom/instabug/apm/b/a/b/c;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->n()Lcom/instabug/apm/b/a/b/a;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v3

    const-string v0, "session_thread_executor"

    .line 5
    invoke-static {v0}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/instabug/apm/e/a;->E()Lcom/instabug/apm/b/a/d/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/instabug/apm/b/a/b/f;-><init>(Lcom/instabug/apm/b/a/b/c;Lcom/instabug/apm/b/a/b/a;Lcom/instabug/apm/c/c;Ljava/util/concurrent/Executor;Lcom/instabug/apm/b/a/d/c;)V

    return-object v6
.end method

.method public static x()Lcom/instabug/apm/b/a/c/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/b/a/c/d;

    invoke-direct {v0}, Lcom/instabug/apm/b/a/c/d;-><init>()V

    return-object v0
.end method

.method public static y()Lcom/instabug/apm/f/c/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/f/c/b;

    invoke-direct {v0}, Lcom/instabug/apm/f/c/b;-><init>()V

    return-object v0
.end method

.method public static z()Lcom/instabug/apm/h/c/c/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/h/c/c/b;

    invoke-direct {v0}, Lcom/instabug/apm/h/c/c/b;-><init>()V

    return-object v0
.end method
