.class public Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;
.super Ljava/lang/Object;
.source "DeleteUriDiskOperation.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/operation/DiskOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/storage/operation/DiskOperation<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;->uri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;->delete()Z

    move-result p0

    return p0
.end method

.method private delete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;->delete()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;->execute(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic executeAsync(Ljava/lang/Object;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0
    .param p2    # Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;->executeAsync(Ljava/lang/Void;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    return-void
.end method

.method public executeAsync(Ljava/lang/Void;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0
    .param p2    # Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lcom/instabug/library/internal/storage/operation/DiskOperationCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation$a;

    invoke-direct {p1, p0, p2}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation$a;-><init>(Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    invoke-static {p1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method
