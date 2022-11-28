.class Lcom/instabug/anr/network/InstabugAnrUploaderService$c;
.super Ljava/lang/Object;
.source "InstabugAnrUploaderService.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/anr/network/InstabugAnrUploaderService;->a(La/a/a/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/lang/Boolean;",
        "La/a/a/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/d/a;


# direct methods
.method constructor <init>(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;->a:La/a/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/a/d/a;)V
    .locals 1

    const-string p1, "InstabugAnrUploaderService"

    const-string v0, "Something went wrong while uploading ANR attachments"

    .line 24
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "InstabugAnrUploaderService"

    const-string v0, "Anr attachments uploaded successfully, deleting ANR"

    .line 1
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;->a:La/a/a/d/a;

    invoke-virtual {p1}, La/a/a/d/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La/a/a/c/a;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;->a:La/a/a/d/a;

    invoke-virtual {v0}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempting to delete state file for ANR with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;->a:La/a/a/d/a;

    invoke-virtual {v1}, La/a/a/d/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugAnrUploaderService"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;

    iget-object v1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;->a:La/a/a/d/a;

    .line 10
    invoke-virtual {v1}, La/a/a/d/a;->f()Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/instabug/library/internal/storage/DiskUtils;->deleteOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;

    move-result-object p1

    new-instance v0, Lcom/instabug/anr/network/InstabugAnrUploaderService$c$a;

    invoke-direct {v0, p0}, Lcom/instabug/anr/network/InstabugAnrUploaderService$c$a;-><init>(Lcom/instabug/anr/network/InstabugAnrUploaderService$c;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;->executeAsync(Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to delete state file for ANR with id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;->a:La/a/a/d/a;

    invoke-virtual {v0}, La/a/a/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "due to null context reference"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, La/a/a/d/a;

    invoke-virtual {p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;->a(La/a/a/d/a;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
