.class final Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager$a;
.super Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor;
.source "UserAttributesCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor<",
        "Ljava/lang/String;",
        "Lcom/instabug/library/model/i;",
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
.method public a(Lcom/instabug/library/model/i;)Ljava/lang/String;
    .locals 0

    const-string p1, "attrs"

    return-object p1
.end method

.method public bridge synthetic extractKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/library/model/i;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager$a;->a(Lcom/instabug/library/model/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
