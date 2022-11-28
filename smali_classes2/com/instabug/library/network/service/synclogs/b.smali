.class public Lcom/instabug/library/network/service/synclogs/b;
.super Ljava/lang/Object;
.source "SyncLogFacade.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "b"

.field private static i:Lcom/instabug/library/network/service/synclogs/b;


# instance fields
.field private a:Lcom/instabug/library/l/c/a;

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/instabug/library/network/service/synclogs/a;

.field private e:Lcom/instabug/library/network/service/synclogs/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/instabug/library/util/TaskDebouncer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "logs_last_uploaded_at"

    .line 2
    iput-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->f:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/instabug/library/util/TaskDebouncer;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/util/TaskDebouncer;-><init>(J)V

    iput-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->g:Lcom/instabug/library/util/TaskDebouncer;

    .line 7
    invoke-static {}, Lcom/instabug/library/l/c/a;->c()Lcom/instabug/library/l/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->a:Lcom/instabug/library/l/c/a;

    .line 8
    new-instance v0, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;

    invoke-direct {v0}, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->d:Lcom/instabug/library/network/service/synclogs/a;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/network/service/synclogs/b;)Lcom/instabug/library/network/service/synclogs/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/network/service/synclogs/b;->e:Lcom/instabug/library/network/service/synclogs/d;

    return-object p0
.end method

.method private a([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->e:Lcom/instabug/library/network/service/synclogs/d;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->g:Lcom/instabug/library/util/TaskDebouncer;

    new-instance v7, Lcom/instabug/library/network/service/synclogs/b$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/instabug/library/network/service/synclogs/b$a;-><init>(Lcom/instabug/library/network/service/synclogs/b;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/instabug/library/util/TaskDebouncer;->debounce(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/network/service/synclogs/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/instabug/library/network/service/synclogs/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1}, Lcom/instabug/library/network/service/synclogs/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/network/service/synclogs/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p2}, Lcom/instabug/library/network/service/synclogs/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {p0, p2}, Lcom/instabug/library/network/service/synclogs/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 8

    .line 13
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->a:Lcom/instabug/library/l/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->e()J

    move-result-wide v2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/service/synclogs/b;->a(Landroid/content/Context;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long p1, v4, v2

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static declared-synchronized c()Lcom/instabug/library/network/service/synclogs/b;
    .locals 2

    const-class v0, Lcom/instabug/library/network/service/synclogs/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/network/service/synclogs/b;->i:Lcom/instabug/library/network/service/synclogs/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/network/service/synclogs/b;

    invoke-direct {v1}, Lcom/instabug/library/network/service/synclogs/b;-><init>()V

    sput-object v1, Lcom/instabug/library/network/service/synclogs/b;->i:Lcom/instabug/library/network/service/synclogs/b;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/library/network/service/synclogs/b;->i:Lcom/instabug/library/network/service/synclogs/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/network/service/synclogs/b;->d:Lcom/instabug/library/network/service/synclogs/a;

    invoke-interface {v1}, Lcom/instabug/library/network/service/synclogs/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/instabug/library/network/service/synclogs/b;->d:Lcom/instabug/library/network/service/synclogs/a;

    invoke-interface {p1}, Lcom/instabug/library/network/service/synclogs/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/instabug/library/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/network/service/synclogs/b;->d:Lcom/instabug/library/network/service/synclogs/a;

    invoke-interface {v1}, Lcom/instabug/library/network/service/synclogs/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/instabug/library/network/service/synclogs/b;->d:Lcom/instabug/library/network/service/synclogs/a;

    invoke-interface {p1}, Lcom/instabug/library/network/service/synclogs/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/instabug/library/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/network/service/synclogs/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/instabug/library/network/service/synclogs/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method a(Landroid/content/Context;)J
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "instabug"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/network/service/synclogs/b;->d:Lcom/instabug/library/network/service/synclogs/a;

    invoke-interface {v1}, Lcom/instabug/library/network/service/synclogs/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/instabug/library/network/service/synclogs/b;->d:Lcom/instabug/library/network/service/synclogs/a;

    invoke-interface {p1}, Lcom/instabug/library/network/service/synclogs/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/instabug/library/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(JLandroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "instabug"

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 41
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 42
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->f:Ljava/lang/String;

    invoke-interface {p3, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/instabug/library/network/service/synclogs/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/instabug/library/network/service/synclogs/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/instabug/library/network/NetworkManager;

    invoke-direct {v0}, Lcom/instabug/library/network/NetworkManager;-><init>()V

    new-instance v1, Lcom/instabug/library/network/service/synclogs/c;

    invoke-direct {v1}, Lcom/instabug/library/network/service/synclogs/c;-><init>()V

    new-instance v2, Lcom/instabug/library/network/e/d/a;

    invoke-direct {v2}, Lcom/instabug/library/network/e/d/a;-><init>()V

    invoke-static {v0, v1, p0, v2}, Lcom/instabug/library/network/service/synclogs/d;->a(Lcom/instabug/library/network/a;Lcom/instabug/library/network/service/synclogs/c;Lcom/instabug/library/network/Request$Callbacks;Lcom/instabug/library/network/e/d/a;)Lcom/instabug/library/network/service/synclogs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->e:Lcom/instabug/library/network/service/synclogs/d;

    .line 10
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/instabug/library/network/service/synclogs/b;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/instabug/library/network/service/synclogs/b;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 11
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 12
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "logs/"

    .line 13
    invoke-static {v2, p1}, Lcom/instabug/library/internal/storage/DiskUtils;->getInsatbugLogDirectory(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/instabug/library/network/service/synclogs/b;->a([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    sget-object p2, Lcom/instabug/library/network/service/synclogs/b;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    invoke-static {}, Lcom/instabug/library/Instabug;->disable()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 59
    sget-object v0, Lcom/instabug/library/network/service/synclogs/b;->h:Ljava/lang/String;

    const-string v1, "exception"

    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/library/network/service/synclogs/b;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/network/service/synclogs/b;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/instabug/library/network/service/synclogs/b;->a(JLandroid/content/Context;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {v1}, Lcom/instabug/library/logging/d;->c(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t delete disposable file ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "couldn\'t delete disposable file"

    .line 58
    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method a()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/instabug/library/network/service/synclogs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->a:Lcom/instabug/library/l/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v2, p0, Lcom/instabug/library/network/service/synclogs/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/instabug/library/network/service/synclogs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/instabug/library/network/service/synclogs/b;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, v2}, Lcom/instabug/library/network/service/synclogs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/network/service/synclogs/b;->d:Lcom/instabug/library/network/service/synclogs/a;

    invoke-interface {v1}, Lcom/instabug/library/network/service/synclogs/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/instabug/library/network/service/synclogs/b;->d:Lcom/instabug/library/network/service/synclogs/a;

    invoke-interface {p1}, Lcom/instabug/library/network/service/synclogs/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/instabug/library/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/instabug/library/network/service/synclogs/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b;->a:Lcom/instabug/library/l/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->f()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v2, p0, Lcom/instabug/library/network/service/synclogs/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/instabug/library/network/service/synclogs/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/instabug/library/network/service/synclogs/b;->b:Ljava/lang/String;

    .line 25
    invoke-direct {p0, v2}, Lcom/instabug/library/network/service/synclogs/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/service/synclogs/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/service/synclogs/b;->a(Ljava/util/List;)V

    return-void
.end method
