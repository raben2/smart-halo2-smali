.class public Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;
.super Ljava/lang/Object;
.source "AssetsCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/instabug/library/model/AssetEntity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/AssetEntity;)Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->a:Lcom/instabug/library/model/AssetEntity;

    return-object p0
.end method

.method public a(Lio/reactivex/disposables/Disposable;)Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->b:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;",
            ">;)",
            "Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->c:Ljava/util/List;

    return-object p0
.end method

.method public a()Lcom/instabug/library/model/AssetEntity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->a:Lcom/instabug/library/model/AssetEntity;

    return-object v0
.end method

.method public b()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->b:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$b;->c:Ljava/util/List;

    return-object v0
.end method
