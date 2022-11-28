.class public Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;
.super Ljava/lang/Object;
.source "WriteStateToFileDiskOperation.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/operation/DiskOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/storage/operation/DiskOperation<",
        "Landroid/net/Uri;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WriteStateToFileDiskOperation"


# instance fields
.field private final file:Ljava/io/File;

.field private final stringState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->stringState:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->file:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->file:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100(Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->stringState:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized execute(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "already exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WriteStateToFileDiskOperation"

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    const/4 p1, 0x0

    .line 8
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->file:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 9
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget-object p1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->stringState:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 16
    iget-object p1, p0, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->file:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz p1, :cond_1

    .line 17
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    .line 19
    :cond_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
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
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->execute(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public executeAsync(Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0
    .param p2    # Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/library/internal/storage/operation/DiskOperationCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;

    invoke-direct {p1, p0, p2}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation$a;-><init>(Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    invoke-static {p1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic executeAsync(Ljava/lang/Object;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0
    .param p2    # Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;->executeAsync(Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    return-void
.end method
