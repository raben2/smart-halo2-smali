.class public Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;
.super Ljava/lang/Object;
.source "WriteOperationExecutor.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final operation:Lcom/instabug/library/internal/storage/operation/DiskOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instabug/library/internal/storage/operation/DiskOperation<",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperation;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/library/internal/storage/operation/DiskOperation<",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->operation:Lcom/instabug/library/internal/storage/operation/DiskOperation;

    return-void
.end method


# virtual methods
.method public execute()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->operation:Lcom/instabug/library/internal/storage/operation/DiskOperation;

    iget-object v1, p0, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/instabug/library/internal/storage/operation/DiskOperation;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public executeAsync(Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/internal/storage/operation/DiskOperationCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->operation:Lcom/instabug/library/internal/storage/operation/DiskOperation;

    iget-object v1, p0, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/instabug/library/internal/storage/operation/DiskOperation;->executeAsync(Ljava/lang/Object;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    return-void
.end method
