.class final Lcom/instabug/featuresrequest/cache/NewFeatureRequestsCacheManager$b;
.super Ljava/lang/Object;
.source "NewFeatureRequestsCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/cache/NewFeatureRequestsCacheManager;->saveCacheToDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/storage/cache/Cache;

.field final synthetic b:Lcom/instabug/library/internal/storage/cache/Cache;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/storage/cache/Cache;Lcom/instabug/library/internal/storage/cache/Cache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/cache/NewFeatureRequestsCacheManager$b;->a:Lcom/instabug/library/internal/storage/cache/Cache;

    iput-object p2, p0, Lcom/instabug/featuresrequest/cache/NewFeatureRequestsCacheManager$b;->b:Lcom/instabug/library/internal/storage/cache/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/featuresrequest/cache/NewFeatureRequestsCacheManager$b;->a:Lcom/instabug/library/internal/storage/cache/Cache;

    iget-object v2, p0, Lcom/instabug/featuresrequest/cache/NewFeatureRequestsCacheManager$b;->b:Lcom/instabug/library/internal/storage/cache/Cache;

    new-instance v3, Lcom/instabug/featuresrequest/cache/NewFeatureRequestsCacheManager$b$a;

    invoke-direct {v3, p0}, Lcom/instabug/featuresrequest/cache/NewFeatureRequestsCacheManager$b$a;-><init>(Lcom/instabug/featuresrequest/cache/NewFeatureRequestsCacheManager$b;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/instabug/library/internal/storage/cache/CacheManager;->migrateCache(Lcom/instabug/library/internal/storage/cache/Cache;Lcom/instabug/library/internal/storage/cache/Cache;Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor;)V

    return-void
.end method
