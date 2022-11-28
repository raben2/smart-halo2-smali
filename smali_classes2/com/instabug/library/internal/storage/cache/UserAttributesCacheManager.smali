.class public Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager;
.super Ljava/lang/Object;
.source "UserAttributesCacheManager.java"


# static fields
.field public static final USER_ATTRIBUTES_CACHE_KEY:Ljava/lang/String; = "attrs"

.field public static final USER_ATTRIBUTES_DISK_CACHE_FILE_NAME:Ljava/lang/String; = "/user_attributes.cache"

.field public static final USER_ATTRIBUTES_DISK_CACHE_KEY:Ljava/lang/String; = "user_attributes_disk_cache"

.field public static final USER_ATTRIBUTES_MEMORY_CACHE_KEY:Ljava/lang/String; = "user_attributes_memory_cache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager;->prepareUserAttributesCache(Landroid/content/Context;)V

    return-void
.end method

.method public static getAll()Ljava/util/HashMap;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "attrs"

    .line 4
    invoke-virtual {v0, v2}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/model/i;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/instabug/library/model/i;->a()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/instabug/library/model/i;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/instabug/library/model/i;->a()Ljava/util/HashMap;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instabug/library/internal/storage/cache/InMemoryCache<",
            "Ljava/lang/String;",
            "Lcom/instabug/library/model/i;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager$a;

    invoke-direct {v1}, Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager$a;-><init>()V

    const-string v2, "user_attributes_disk_cache"

    const-string v3, "user_attributes_memory_cache"

    invoke-virtual {v0, v2, v3, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->migrateCache(Ljava/lang/String;Ljava/lang/String;Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor;)V

    .line 8
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "user_attributes_memory_cache"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    return-object v0
.end method

.method public static prepareCaches(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "prepareCachesThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    new-instance v0, Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager$b;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static prepareUserAttributesCache(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class v0, Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager;

    const-string v1, "Creating UserAttributes disk cache"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/instabug/library/internal/storage/cache/OnDiskCache;

    const-string v1, "user_attributes_disk_cache"

    const-string v2, "/user_attributes.cache"

    const-class v3, Lcom/instabug/library/model/i;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/instabug/library/internal/storage/cache/OnDiskCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/instabug/library/internal/storage/cache/CacheManager;->addCache(Lcom/instabug/library/internal/storage/cache/Cache;)Lcom/instabug/library/internal/storage/cache/Cache;

    return-void
.end method
