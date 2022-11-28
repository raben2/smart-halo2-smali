.class Lcom/instabug/bug/network/a$c;
.super Ljava/lang/Object;
.source "BugUploaderHelper.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/network/a;->a(Lcom/instabug/bug/model/a;)V
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
        "Lcom/instabug/bug/model/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/model/a;

.field final synthetic b:Lcom/instabug/bug/network/a;


# direct methods
.method constructor <init>(Lcom/instabug/bug/network/a;Lcom/instabug/bug/model/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/network/a$c;->b:Lcom/instabug/bug/network/a;

    iput-object p2, p0, Lcom/instabug/bug/network/a$c;->a:Lcom/instabug/bug/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/bug/model/a;)V
    .locals 1

    const-string p1, "BugUploaderHelper"

    const-string v0, "Something went wrong while uploading bug attachments"

    .line 20
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "BugUploaderHelper"

    const-string v0, "Bug attachments uploaded successfully, deleting bug"

    .line 1
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/bug/network/a$c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/bug/network/a$c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attempting to delete state file for bug with id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instabug/bug/network/a$c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BugUploaderHelper"

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/bug/network/a$c;->b:Lcom/instabug/bug/network/a;

    invoke-static {p1}, Lcom/instabug/bug/network/a;->a(Lcom/instabug/bug/network/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;

    iget-object v1, p0, Lcom/instabug/bug/network/a$c;->a:Lcom/instabug/bug/model/a;

    .line 5
    invoke-virtual {v1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/instabug/library/internal/storage/DiskUtils;->deleteOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;

    move-result-object p1

    new-instance v0, Lcom/instabug/bug/network/a$c$a;

    invoke-direct {v0, p0}, Lcom/instabug/bug/network/a$c$a;-><init>(Lcom/instabug/bug/network/a$c;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;->executeAsync(Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/instabug/bug/network/a$c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/instabug/bug/network/a$c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/bug/g/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/bug/model/a;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/network/a$c;->a(Lcom/instabug/bug/model/a;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/bug/network/a$c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
