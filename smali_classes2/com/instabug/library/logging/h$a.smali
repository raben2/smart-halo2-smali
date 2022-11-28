.class Lcom/instabug/library/logging/h$a;
.super Ljava/lang/Object;
.source "WriteLogDiskOperator.java"

# interfaces
.implements Lcom/instabug/library/internal/orchestrator/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/logging/h;->a(Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

.field final synthetic c:Lcom/instabug/library/logging/h;


# direct methods
.method constructor <init>(Lcom/instabug/library/logging/h;Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/logging/h$a;->c:Lcom/instabug/library/logging/h;

    iput-object p2, p0, Lcom/instabug/library/logging/h$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/instabug/library/logging/h$a;->b:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/logging/h$a;->c:Lcom/instabug/library/logging/h;

    iget-object v1, p0, Lcom/instabug/library/logging/h$a;->c:Lcom/instabug/library/logging/h;

    invoke-static {v1}, Lcom/instabug/library/logging/h;->a(Lcom/instabug/library/logging/h;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/library/logging/h$a;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/instabug/library/logging/h;->a(Lcom/instabug/library/logging/h;Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/instabug/library/logging/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "execute: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    iget-object v1, p0, Lcom/instabug/library/logging/h$a;->b:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v0}, Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/logging/h$a;->b:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/instabug/library/logging/h$a;->c:Lcom/instabug/library/logging/h;

    invoke-static {v1}, Lcom/instabug/library/logging/h;->b(Lcom/instabug/library/logging/h;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
