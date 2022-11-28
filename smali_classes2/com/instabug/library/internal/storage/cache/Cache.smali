.class public abstract Lcom/instabug/library/internal/storage/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private appVersion:I

.field private id:Ljava/lang/String;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/internal/storage/cache/CacheChangedListener<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/internal/storage/cache/Cache;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->appVersion:I

    .line 21
    iput-object p1, p0, Lcom/instabug/library/internal/storage/cache/Cache;->id:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/instabug/library/internal/storage/cache/Cache;->appVersion:I

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/internal/storage/cache/Cache;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addOnCacheChangedListener(Lcom/instabug/library/internal/storage/cache/CacheChangedListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/internal/storage/cache/CacheChangedListener<",
            "TV;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract delete(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public getAppVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->appVersion:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract invalidate()V
.end method

.method public notifyCacheInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/CacheChangedListener;

    .line 2
    invoke-interface {v1}, Lcom/instabug/library/internal/storage/cache/CacheChangedListener;->onCacheInvalidated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyItemAdded(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/CacheChangedListener;

    .line 2
    invoke-interface {v1, p1}, Lcom/instabug/library/internal/storage/cache/CacheChangedListener;->onCachedItemAdded(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyItemRemoved(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/CacheChangedListener;

    .line 2
    invoke-interface {v1, p1}, Lcom/instabug/library/internal/storage/cache/CacheChangedListener;->onCachedItemRemoved(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyItemUpdated(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/storage/cache/CacheChangedListener;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/instabug/library/internal/storage/cache/CacheChangedListener;->onCachedItemUpdated(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation
.end method

.method public removeOnCacheChangedListener(Lcom/instabug/library/internal/storage/cache/CacheChangedListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/internal/storage/cache/CacheChangedListener<",
            "TV;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract size()J
.end method
