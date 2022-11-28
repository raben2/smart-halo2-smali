.class Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation$a;
.super Ljava/lang/Object;
.source "ReadStateFromFileDiskOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;->executeAsync(Ljava/lang/Void;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

.field final synthetic b:Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;

    iput-object p2, p0, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;

    invoke-static {v1}, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;->access$000(Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    invoke-interface {v1, v0}, Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
