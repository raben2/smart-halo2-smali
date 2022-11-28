.class public Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;
.super Ljava/lang/Object;
.source "AssetsCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;,
        Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "RV_RETURN_VALUE_IGNORED_BAD_PRACTICE"
    }
.end annotation


# static fields
.field private static final ASSETS_MEMORY_CACHE_KEY:Ljava/lang/String; = "assets_memory_cache"

.field private static final currentDownloadingFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAssetEntity(Lcom/instabug/library/model/AssetEntity;)V
    .locals 2
    .param p0    # Lcom/instabug/library/model/AssetEntity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/model/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static cleanUpCache(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->stopRunningDownloads()V

    .line 2
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "assets_memory_cache"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->cacheExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "assets_memory_cache"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/Cache;->invalidate()V

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->clearRedundantFiles(Landroid/content/Context;)V

    return-void
.end method

.method public static clearRedundantFiles(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    invoke-static {v1, v0, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static createEmptyEntity(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;)Lcom/instabug/library/model/AssetEntity;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/instabug/library/model/AssetEntity;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p1, v0}, Lcom/instabug/library/model/AssetEntity;-><init>(Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;Ljava/lang/String;Ljava/io/File;)V

    return-object p0
.end method

.method public static downloadAssetEntity(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->a(Lcom/instabug/library/model/AssetEntity;)Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->c()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->a(Ljava/util/List;)Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;

    .line 6
    invoke-static {}, Lcom/instabug/library/network/e/b;->a()Lcom/instabug/library/network/e/b;

    move-result-object p2

    new-instance v1, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$a;

    invoke-direct {v1, p1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$a;-><init>(Lcom/instabug/library/model/AssetEntity;)V

    invoke-virtual {p2, p0, p1, v1}, Lcom/instabug/library/network/e/b;->a(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/network/Request$Callbacks;)Lio/reactivex/observers/DisposableObserver;

    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->a(Lio/reactivex/disposables/Disposable;)Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;

    .line 21
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->a()Lcom/instabug/library/model/AssetEntity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 23
    sget-object p1, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/instabug/library/model/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getAssetEntity(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/instabug/library/model/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/model/AssetEntity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    const-class p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    const-string p1, "Get file from cache"

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p2, v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;->onSuccess(Lcom/instabug/library/model/AssetEntity;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/library/model/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    const-class p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    const-string v0, "File currently downloading, wait download to finish"

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, p2}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->waitDownloadToFinish(Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V

    goto :goto_1

    .line 16
    :cond_2
    const-class v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    const-string v1, "File not exist download it"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->downloadAssetEntity(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V

    :goto_1
    return-void
.end method

.method public static getCache()Lcom/instabug/library/internal/storage/cache/a;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "assets_memory_cache"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->cacheExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    const-string v1, "In-memory assets cache not found, create it"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/storage/cache/a;

    const-string v2, "assets_memory_cache"

    invoke-direct {v1, v2}, Lcom/instabug/library/internal/storage/cache/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->addCache(Lcom/instabug/library/internal/storage/cache/Cache;)Lcom/instabug/library/internal/storage/cache/Cache;

    .line 4
    const-class v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    const-string v1, "In-memory assets created successfully"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_0
    const-class v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    const-string v1, "In-memory assets cache found"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "assets_memory_cache"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/internal/storage/cache/a;

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    const-string v1, "Media Mounted"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    const-class v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    const-string v1, "External storage not available, saving file to internal storage."

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 8
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/instabug/assetCache"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;

    invoke-static {v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance p0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static isDownloading(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static notifyDownloadFailed(Lcom/instabug/library/model/AssetEntity;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/instabug/library/model/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, p1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;->onFailed(Ljava/lang/Throwable;)V

    .line 6
    sget-object v1, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/instabug/library/model/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static notifyDownloadFinishedSuccessfully(Lcom/instabug/library/model/AssetEntity;)V
    .locals 3
    .param p0    # Lcom/instabug/library/model/AssetEntity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/instabug/library/model/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, p0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;->onSuccess(Lcom/instabug/library/model/AssetEntity;)V

    .line 6
    sget-object v1, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/instabug/library/model/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static stopRunningDownloads()V
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->b()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static waitDownloadToFinish(Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->currentDownloadingFiles:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/instabug/library/model/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->c()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->a(Ljava/util/List;)Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;

    :cond_0
    return-void
.end method
