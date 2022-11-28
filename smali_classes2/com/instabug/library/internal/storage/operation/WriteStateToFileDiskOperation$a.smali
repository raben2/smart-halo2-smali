.class Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;
.super Ljava/lang/Object;
.source "WriteStateToFileDiskOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->executeAsync(Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

.field final synthetic b:Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    iput-object p2, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    invoke-static {v0}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->access$000(Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    invoke-static {v1}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->access$000(Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "already exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WriteStateToFileDiskOperation"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    invoke-static {v1}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->access$000(Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 6
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    invoke-static {v0}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->access$100(Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WriteStateToFileDiskOperation"

    invoke-static {v2, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v0}, Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->a:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;->b:Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    invoke-static {v1}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->access$000(Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
