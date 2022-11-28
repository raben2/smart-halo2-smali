.class public Lcom/instabug/library/internal/orchestrator/e;
.super Ljava/lang/Object;
.source "InvalidateCacheForIdentifyingUserAction.java"

# interfaces
.implements Lcom/instabug/library/internal/orchestrator/Action;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/orchestrator/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/CacheManager;->invalidateAllCachesForIdentifyingUsers()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/orchestrator/e;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;->updateLastSeen(Ljava/lang/String;J)V

    return-void
.end method
