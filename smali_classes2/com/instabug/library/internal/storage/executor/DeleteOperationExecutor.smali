.class public Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;
.super Ljava/lang/Object;
.source "DeleteOperationExecutor.java"


# instance fields
.field private final operation:Lcom/instabug/library/internal/storage/operation/DiskOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instabug/library/internal/storage/operation/DiskOperation<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/library/internal/storage/operation/DiskOperation;)V
    .locals 0
    .param p1    # Lcom/instabug/library/internal/storage/operation/DiskOperation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/internal/storage/operation/DiskOperation<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;->operation:Lcom/instabug/library/internal/storage/operation/DiskOperation;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;->operation:Lcom/instabug/library/internal/storage/operation/DiskOperation;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/library/internal/storage/operation/DiskOperation;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public executeAsync(Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 2
    .param p1    # Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/internal/storage/operation/DiskOperationCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;->operation:Lcom/instabug/library/internal/storage/operation/DiskOperation;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/instabug/library/internal/storage/operation/DiskOperation;->executeAsync(Ljava/lang/Object;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    return-void
.end method
