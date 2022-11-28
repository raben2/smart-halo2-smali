.class public Lcom/instabug/library/internal/storage/cache/OnDiskCache;
.super Lcom/instabug/library/internal/storage/cache/Cache;
.source "OnDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/instabug/library/internal/storage/cache/Cacheable;",
        ">",
        "Lcom/instabug/library/internal/storage/cache/Cache<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OnDiskCache"


# instance fields
.field private VClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final cacheDir:Ljava/io/File;

.field private final cacheFile:Ljava/io/File;

.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/instabug/library/internal/storage/cache/Cache;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->VClass:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheDir:Ljava/io/File;

    .line 4
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheDir:Ljava/io/File;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    iget-object p2, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "OnDiskCache"

    const-string p4, "Failed to create"

    .line 12
    invoke-static {p3, p4, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    const-string p2, "UTF-8"

    .line 18
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "UTF-8"

    .line 19
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->charset:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 21
    :cond_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->charset:Ljava/nio/charset/Charset;

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 25
    invoke-direct {p0}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->checkCacheValidity()Z

    move-result p1

    if-nez p1, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->invalidate()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/internal/storage/cache/OnDiskCache;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100(Lcom/instabug/library/internal/storage/cache/OnDiskCache;)Ljava/nio/charset/Charset;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method static synthetic access$200(Lcom/instabug/library/internal/storage/cache/OnDiskCache;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->VClass:Ljava/lang/Class;

    return-object p0
.end method

.method private checkCacheValidity()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OnDiskCache"

    const-string v2, "Cache file doesn\'t exist"

    .line 3
    invoke-static {v0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    monitor-enter v0

    const/4 v2, 0x0

    .line 9
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v6, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p0, v2}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 15
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v2, v3

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    :goto_0
    const-string v3, "OOM while fetching values "

    .line 32
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    .line 36
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v3

    :goto_1
    :try_start_5
    const-string v4, "OnDiskCache"

    const-string v5, "JSONException went wrong while fetching values"

    .line 37
    invoke-static {v4, v5, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_2

    .line 44
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catch_7
    move-exception v2

    :try_start_7
    const-string v3, "OnDiskCache"

    const-string v4, "Failed to close file reader"

    .line 47
    invoke-static {v3, v4, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_2
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return v1

    :catch_8
    move-exception v1

    :goto_3
    :try_start_8
    const-string v3, "OnDiskCache"

    const-string v4, "IOException went wrong while fetching values"

    .line 49
    invoke-static {v3, v4, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_3

    .line 58
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catch_9
    move-exception v1

    :goto_4
    :try_start_a
    const-string v2, "OnDiskCache"

    const-string v3, "Failed to close file reader"

    .line 31
    invoke-static {v2, v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    const/4 v1, 0x1

    .line 64
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    return v1

    :catchall_2
    move-exception v1

    :goto_6
    if-eqz v2, :cond_4

    .line 65
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    :catch_a
    move-exception v2

    :try_start_c
    const-string v3, "OnDiskCache"

    const-string v4, "Failed to close file reader"

    .line 68
    invoke-static {v3, v4, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_4
    :goto_7
    throw v1

    :catchall_3
    move-exception v1

    .line 72
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v1

    :cond_5
    return v1
.end method

.method private getReadValuesAction(Ljava/util/List;)Lcom/instabug/library/util/memory/Action;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TV;>;)",
            "Lcom/instabug/library/util/memory/Action;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/internal/storage/cache/OnDiskCache$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/internal/storage/cache/OnDiskCache$a;-><init>(Lcom/instabug/library/internal/storage/cache/OnDiskCache;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cacheable;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "OnDiskCache"

    const-string v0, "Cache file doesn\'t exist"

    .line 3
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/cache.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->VClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/internal/storage/cache/Cacheable;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException went wrong while deleting value for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnDiskCache"

    invoke-static {v4, v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantiationException happened while deleting value for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnDiskCache"

    invoke-static {v4, v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v2, v1

    .line 21
    :goto_1
    iget-object v3, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    monitor-enter v3

    .line 25
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v7, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 27
    :try_start_2
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iget-object v8, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p0, v1}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {p0, v1}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_3

    .line 35
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 36
    invoke-interface {v2, v7}, Lcom/instabug/library/internal/storage/cache/Cacheable;->fromJson(Ljava/lang/String;)V

    goto :goto_2

    .line 38
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    iget-object v1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "OnDiskCache"

    const-string v1, "Couldn\'t rename temp cache file"

    .line 45
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 62
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 63
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_c

    :catch_2
    move-exception p1

    .line 66
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_c

    :catchall_0
    move-exception p1

    move-object v1, v5

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object v1, v5

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v1, v5

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    goto/16 :goto_d

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto/16 :goto_9

    :catchall_2
    move-exception p1

    move-object v4, v1

    goto/16 :goto_d

    :catch_9
    move-exception v0

    move-object v4, v1

    .line 67
    :goto_3
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OOM while deleting value for key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_5

    .line 71
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    :catch_a
    move-exception p1

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz v1, :cond_8

    .line 74
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 75
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_c

    .line 78
    :goto_5
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_c

    :catchall_3
    move-exception p1

    goto :goto_d

    :catch_b
    move-exception v0

    move-object v4, v1

    :goto_6
    const-string v5, "OnDiskCache"

    .line 79
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONException went wrong while deleting value for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v4, :cond_6

    .line 86
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_c
    move-exception p1

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v1, :cond_8

    .line 89
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 90
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_c

    .line 93
    :goto_8
    :try_start_b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_c

    :catch_d
    move-exception v0

    move-object v4, v1

    :goto_9
    const-string v5, "OnDiskCache"

    .line 94
    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException went wrong while deleting value for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v4, :cond_7

    .line 104
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_a

    :catch_e
    move-exception p1

    goto :goto_b

    :cond_7
    :goto_a
    if-eqz v1, :cond_8

    .line 107
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 108
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_c

    .line 111
    :goto_b
    :try_start_e
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    :cond_8
    :goto_c
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    return-object v2

    :goto_d
    if-eqz v4, :cond_9

    .line 115
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_e

    :catchall_4
    move-exception p1

    goto :goto_11

    :catch_f
    move-exception v0

    goto :goto_f

    :cond_9
    :goto_e
    if-eqz v1, :cond_a

    .line 118
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_10

    .line 122
    :goto_f
    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    :cond_a
    :goto_10
    throw p1

    .line 125
    :goto_11
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->delete(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cacheable;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cacheable;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "OnDiskCache"

    const-string v1, "Key equal null"

    .line 2
    invoke-static {p1, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "OnDiskCache"

    const-string v1, "Cache file doesn\'t exist"

    .line 6
    invoke-static {p1, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 13
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->VClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/Cacheable;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException went wrong while fetching value for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnDiskCache"

    invoke-static {v3, v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantiationException happened while fetching value for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnDiskCache"

    invoke-static {v3, v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v1, v0

    .line 25
    :goto_1
    iget-object v2, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    monitor-enter v2

    .line 27
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v6, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {p0, v4}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {p0, v4}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_3

    .line 34
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    if-eqz v6, :cond_3

    .line 35
    invoke-interface {v1, v6}, Lcom/instabug/library/internal/storage/cache/Cacheable;->fromJson(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_4
    const-string v0, "OnDiskCache"

    const-string v3, "Failed to close file reader"

    .line 53
    invoke-static {v0, v3, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v1

    :cond_3
    if-nez v4, :cond_2

    .line 55
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_7

    :catch_3
    move-exception v1

    goto/16 :goto_6

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_7
    move-exception v1

    move-object v3, v0

    .line 59
    :goto_3
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OOM while fetching value for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_4

    .line 63
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_8

    :catch_9
    move-exception v1

    move-object v3, v0

    :goto_4
    const-string v4, "OnDiskCache"

    .line 64
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONException went wrong while fetching value for key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_4

    .line 71
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :catch_a
    move-exception v1

    goto :goto_6

    :catch_b
    move-exception v1

    move-object v3, v0

    :goto_5
    const-string v4, "OnDiskCache"

    .line 72
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException went wrong while fetching value for key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_4

    .line 82
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_7

    :catch_c
    move-exception v1

    :goto_6
    :try_start_c
    const-string v3, "OnDiskCache"

    const-string v4, "Failed to close file reader"

    .line 58
    invoke-static {v3, v4, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_4
    :goto_7
    const-string v1, "OnDiskCache"

    .line 88
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No value found for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", returning null"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    return-object v0

    :goto_8
    if-eqz v0, :cond_5

    .line 90
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_9

    :catch_d
    move-exception v0

    :try_start_f
    const-string v1, "OnDiskCache"

    const-string v3, "Failed to close file reader"

    .line 93
    invoke-static {v1, v3, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :cond_5
    :goto_9
    throw p1

    :catchall_2
    move-exception p1

    .line 97
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->get(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cacheable;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ":"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ":"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OnDiskCache"

    const-string v2, "Cache file doesn\'t exist"

    .line 3
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/util/memory/MemoryGuard;->from(Landroid/content/Context;)Lcom/instabug/library/util/memory/MemoryGuard;

    move-result-object v1

    new-instance v2, Lcom/instabug/library/util/memory/predicate/CacheFileMemoryAvailablePredicate;

    iget-object v3, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-direct {v2, v3}, Lcom/instabug/library/util/memory/predicate/CacheFileMemoryAvailablePredicate;-><init>(Ljava/io/File;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/instabug/library/util/memory/MemoryGuard;->withPredicate(Lcom/instabug/library/util/memory/predicate/Predicate;)Lcom/instabug/library/util/memory/ActionExecutor;

    move-result-object v1

    .line 9
    invoke-direct {p0, v0}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->getReadValuesAction(Ljava/util/List;)Lcom/instabug/library/util/memory/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/util/memory/ActionExecutor;->doAction(Lcom/instabug/library/util/memory/Action;)V

    :cond_1
    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnDiskCache"

    const-string v1, "Cache file  exist"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OnDiskCache"

    const-string v2, "Failed to create cache file"

    .line 10
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/instabug/library/internal/storage/cache/Cacheable;)Lcom/instabug/library/internal/storage/cache/Cacheable;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "OnDiskCache"

    const-string p2, "Key equal null"

    .line 2
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "OnDiskCache"

    const-string p2, "Value equal null"

    .line 6
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "OnDiskCache"

    const-string p2, "Cache file doesn\'t exist"

    .line 10
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->get(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cacheable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->delete(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cacheable;

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    monitor-enter v2

    .line 20
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iget-object v5, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-interface {p2}, Lcom/instabug/library/internal/storage/cache/Cacheable;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 24
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-static {v3}, Lcom/instabug/library/util/a;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception v3

    .line 35
    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OOM while while setting value for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 39
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_4

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_2
    const-string v4, "OnDiskCache"

    .line 40
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something went wrong while setting value for key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_4

    .line 38
    :goto_3
    :try_start_5
    invoke-static {v0}, Lcom/instabug/library/util/a;->a(Ljava/io/Closeable;)V

    .line 51
    :cond_4
    :goto_4
    monitor-exit v2

    if-eqz v1, :cond_5

    move-object p2, v1

    :cond_5
    return-object p2

    :goto_5
    if-eqz v0, :cond_6

    .line 52
    invoke-static {v0}, Lcom/instabug/library/util/a;->a(Ljava/io/Closeable;)V

    .line 54
    :cond_6
    throw p1

    :catchall_3
    move-exception p1

    .line 55
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/instabug/library/internal/storage/cache/Cacheable;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->put(Ljava/lang/String;Lcom/instabug/library/internal/storage/cache/Cacheable;)Lcom/instabug/library/internal/storage/cache/Cacheable;

    move-result-object p1

    return-object p1
.end method

.method public size()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OnDiskCache"

    const-string v1, "Cache file doesn\'t exist"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
