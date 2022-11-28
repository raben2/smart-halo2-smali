.class final Lcom/instabug/featuresrequest/cache/FeatureRequestCacheManager$d;
.super Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor;
.source "FeatureRequestCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/cache/FeatureRequestCacheManager;->saveExtrasCacheToDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
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
.method public bridge synthetic extractKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/cache/FeatureRequestCacheManager$d;->extractKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public extractKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    instance-of p1, p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    const-string p1, "has_next_page"

    goto :goto_0

    :cond_0
    const-string p1, "completed_features_count"

    :goto_0
    return-object p1
.end method
