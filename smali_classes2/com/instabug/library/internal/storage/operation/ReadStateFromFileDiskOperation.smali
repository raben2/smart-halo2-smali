.class public Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;
.super Ljava/lang/Object;
.source "ReadStateFromFileDiskOperation.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/operation/DiskOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/storage/operation/DiskOperation<",
        "Ljava/lang/String;",
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

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;->uri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;->getTextFromFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTextFromFile()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v3, "UTF8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 22
    :cond_2
    throw v0
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;->execute(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/lang/Void;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;->getTextFromFile()Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;->executeAsync(Ljava/lang/Void;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation$a;

    invoke-direct {p1, p0, p2}, Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation$a;-><init>(Lcom/instabug/library/internal/storage/operation/ReadStateFromFileDiskOperation;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    invoke-static {p1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method
