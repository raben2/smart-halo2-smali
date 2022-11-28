.class public Lcom/instabug/library/logging/d;
.super Ljava/lang/Object;
.source "LoggingFileProvider.java"


# static fields
.field private static final d:Ljava/lang/String; = "d"


# instance fields
.field a:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/library/logging/d;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/instabug/library/l/b/j/b;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "logs/"

    .line 1
    invoke-static {v0, p0}, Lcom/instabug/library/internal/storage/DiskUtils;->getInsatbugLogDirectory(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/instabug/library/l/b/j/h/b$a;

    invoke-direct {v0}, Lcom/instabug/library/l/b/j/h/b$a;-><init>()V

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/instabug/library/l/b/i/a;->DISABLED_LOGS:Lcom/instabug/library/l/b/i/a;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/instabug/library/l/b/j/f;

    new-instance v3, Lcom/instabug/library/l/b/j/h/a;

    invoke-direct {v3}, Lcom/instabug/library/l/b/j/h/a;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p0, v1, v2}, Lcom/instabug/library/l/b/j/h/b$a;->a(Ljava/lang/String;Lcom/instabug/library/l/b/i/a;[Lcom/instabug/library/l/b/j/f;)Lcom/instabug/library/l/b/j/b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/File;)J
    .locals 4
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, ".txt"

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ".txt"

    const-string v3, ""

    .line 4
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 7
    sget-object v2, Lcom/instabug/library/logging/d;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    invoke-static {p0}, Lcom/instabug/library/logging/d;->b(Ljava/io/File;)J

    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized d()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/logging/d;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/logging/d;->c()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/logging/d;->b:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    array-length v1, v0

    if-lez v1, :cond_2

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-static {v3}, Lcom/instabug/library/logging/d;->c(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/instabug/library/logging/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/instabug/library/logging/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method declared-synchronized a()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/logging/d;->a:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 12
    invoke-static {v0}, Lcom/instabug/library/logging/d;->c(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/instabug/library/logging/d;->a:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 15
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/instabug/library/logging/d;->d()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0, v0}, Lcom/instabug/library/logging/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/logging/d;->a:Ljava/io/File;

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/logging/d;->c()V

    .line 24
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/logging/d;->a:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/logging/d;->c()V

    return-void
.end method

.method c()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "THREAD_SAFETY_VIOLATION"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/logging/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/logging/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/l/c/a;->c()Lcom/instabug/library/l/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v1

    .line 7
    invoke-static {v0}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/instabug/library/model/e;->b()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "logs/"

    .line 10
    invoke-static {v1, v0}, Lcom/instabug/library/internal/storage/DiskUtils;->getInsatbugLogDirectory(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/logging/d;->b:Ljava/io/File;

    .line 11
    invoke-direct {p0, v0}, Lcom/instabug/library/logging/d;->d(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/logging/d;->a:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Lcom/instabug/library/logging/d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
