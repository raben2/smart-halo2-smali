.class final Lcom/instabug/featuresrequest/cache/FeatureRequestCacheManager$a;
.super Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor;
.source "FeatureRequestCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/cache/FeatureRequestCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor<",
        "Ljava/lang/Long;",
        "Lcom/instabug/featuresrequest/d/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/featuresrequest/d/b;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic extractKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/cache/FeatureRequestCacheManager$a;->a(Lcom/instabug/featuresrequest/d/b;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
