.class Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation$a;
.super Ljava/lang/Object;
.source "DeleteUriDiskOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;->executeAsync(Ljava/lang/Void;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

.field final synthetic b:Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;

    iput-object p2, p0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;

    invoke-static {v0}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;->access$000(Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, v0}, Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
