.class final Lcom/instabug/chat/cache/ReadQueueCacheManager$a;
.super Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor;
.source "ReadQueueCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/cache/ReadQueueCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/internal/storage/cache/CacheManager$KeyExtractor<",
        "Ljava/lang/String;",
        "Lcom/instabug/chat/e/g;",
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
.method public a(Lcom/instabug/chat/e/g;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/chat/e/g;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic extractKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/chat/e/g;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/cache/ReadQueueCacheManager$a;->a(Lcom/instabug/chat/e/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
