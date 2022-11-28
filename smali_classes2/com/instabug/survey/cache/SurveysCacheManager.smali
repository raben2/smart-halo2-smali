.class public Lcom/instabug/survey/cache/SurveysCacheManager;
.super Ljava/lang/Object;
.source "SurveysCacheManager.java"


# static fields
.field public static final SURVEYS_DISK_CACHE_FILE_NAME:Ljava/lang/String; = "/surveys.cache"

.field public static final SURVEYS_DISK_CACHE_KEY:Ljava/lang/String; = "surveys_disk_cache"

.field public static final SURVEYS_MEMORY_CACHE_KEY:Ljava/lang/String; = "surveys_memory_cache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSurvey(Lcom/instabug/survey/models/Survey;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/survey/cache/a;->a(Lcom/instabug/survey/models/Survey;)J

    return-void
.end method

.method public static addSurveys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/Survey;

    .line 2
    invoke-static {v0}, Lcom/instabug/survey/cache/SurveysCacheManager;->addSurvey(Lcom/instabug/survey/models/Survey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static delete(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/survey/cache/SurveysCacheManager$d;

    invoke-direct {v0, p0, p1}, Lcom/instabug/survey/cache/SurveysCacheManager$d;-><init>(J)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instabug/library/internal/storage/cache/InMemoryCache<",
            "Ljava/lang/Long;",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "surveys_memory_cache"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->cacheExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/instabug/survey/cache/SurveysCacheManager;

    const-string v1, "In-memory Surveys cache not found, loading it from disk "

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    new-instance v1, Lcom/instabug/survey/cache/SurveysCacheManager$a;

    invoke-direct {v1}, Lcom/instabug/survey/cache/SurveysCacheManager$a;-><init>()V

    const-string v2, "surveys_disk_cache"

    const-string v3, "surveys_memory_cache"

    invoke-virtual {v0, v2, v3, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->migrateCache(Ljava/lang/String;Ljava/lang/String;Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor;)V

    .line 13
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "surveys_memory_cache"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-memory Surveys cache restored from disk, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/Cache;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " elements restored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    const-class v1, Lcom/instabug/survey/cache/SurveysCacheManager;

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :cond_0
    const-class v0, Lcom/instabug/survey/cache/SurveysCacheManager;

    const-string v1, "In-memory Surveys cache found"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "surveys_memory_cache"

    .line 26
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    return-object v0
.end method

.method public static getEventTriggeredSurveys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/cache/a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNotAnsweredSurveys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/cache/a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getReadyToSendSurveys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/cache/a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSurveyById(J)Lcom/instabug/survey/models/Survey;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/instabug/survey/cache/a;->b(J)Lcom/instabug/survey/models/Survey;

    move-result-object p0

    return-object p0
.end method

.method public static getSurveys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/cache/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeTriggeredSurveys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/cache/a;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static insertOrUpdatePausedOrLocale(Lcom/instabug/survey/models/Survey;ZZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/survey/cache/SurveysCacheManager$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/instabug/survey/cache/SurveysCacheManager$c;-><init>(Lcom/instabug/survey/models/Survey;ZZ)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isSurveyExisting(J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/instabug/survey/cache/a;->b(J)Lcom/instabug/survey/models/Survey;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static migrateOldCacheToDb()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->getValues()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/models/Survey;

    .line 6
    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->getTarget()Lcom/instabug/survey/e/c/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instabug/survey/e/c/g;->d()Lcom/instabug/survey/e/c/d;

    move-result-object v3

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v3, v4}, Lcom/instabug/survey/e/c/d;->b(I)V

    .line 8
    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->isLastEventDismiss()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2, v4}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v0}, Lcom/instabug/survey/cache/SurveysCacheManager;->addSurveys(Ljava/util/List;)V

    .line 14
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "surveys_memory_cache"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v1

    const-string v2, "surveys_memory_cache"

    .line 16
    invoke-virtual {v1, v2}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/Cache;->getId()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->deleteCache(Ljava/lang/String;)Z

    .line 21
    :cond_3
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "surveys_disk_cache"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/Cache;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/internal/storage/cache/CacheManager;->deleteCache(Ljava/lang/String;)Z

    .line 24
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/internal/storage/cache/CacheManager;->invalidateCache(Lcom/instabug/library/internal/storage/cache/Cache;)V

    :cond_4
    return-void
.end method

.method public static resetSurveyUserInteraction(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/Survey;

    .line 2
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->resetUserInteractions()V

    .line 3
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->resetUserAnswers()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/instabug/survey/cache/SurveysCacheManager;->updateBulk(Ljava/util/List;)V

    return-void
.end method

.method public static update(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/survey/cache/SurveysCacheManager$b;

    invoke-direct {v0, p0}, Lcom/instabug/survey/cache/SurveysCacheManager$b;-><init>(Lcom/instabug/survey/models/Survey;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateBulk(Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/survey/cache/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public static updateSessions(Lcom/instabug/survey/models/Survey;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/survey/cache/a;->c(Lcom/instabug/survey/models/Survey;)J

    return-void
.end method
