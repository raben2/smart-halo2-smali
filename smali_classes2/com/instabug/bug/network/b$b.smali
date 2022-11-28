.class Lcom/instabug/bug/network/b$b;
.super Lio/reactivex/observers/DisposableObserver;
.source "BugsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/network/b;->b(Landroid/content/Context;Lcom/instabug/bug/model/a;Lcom/instabug/library/network/Request$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lcom/instabug/library/network/RequestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/model/a;

.field final synthetic b:Lcom/instabug/library/network/Request$Callbacks;


# direct methods
.method constructor <init>(Lcom/instabug/bug/network/b;Lcom/instabug/bug/model/a;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/bug/network/b$b;->a:Lcom/instabug/bug/model/a;

    iput-object p3, p0, Lcom/instabug/bug/network/b$b;->b:Lcom/instabug/library/network/Request$Callbacks;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/network/RequestResponse;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadingBugAttachmentRequest onNext, Response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Response body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BugsService"

    .line 3
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/instabug/bug/network/b$b;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/model/Attachment;

    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/instabug/bug/network/b$b;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BugsService"

    const-string v1, "uploadingBugAttachmentRequest onNext, attachment file deleted successfully"

    .line 9
    invoke-static {p1, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/instabug/bug/network/b$b;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/model/Attachment;

    .line 13
    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/instabug/library/internal/storage/cache/AttachmentsDbHelper;->delete(J)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/bug/network/b$b;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/bug/network/b$b;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/library/internal/storage/cache/AttachmentsDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "BugsService"

    const-string v1, "uploadingBugAttachmentRequest completed"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/network/b$b;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/network/b$b;->b:Lcom/instabug/library/network/Request$Callbacks;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/library/network/Request$Callbacks;->onSucceeded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadingBugAttachmentRequest got error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugsService"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/bug/network/b$b;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->encryptAttachmentsAndUpdateDb(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/instabug/bug/network/b$b;->b:Lcom/instabug/library/network/Request$Callbacks;

    iget-object v0, p0, Lcom/instabug/bug/network/b$b;->a:Lcom/instabug/bug/model/a;

    invoke-interface {p1, v0}, Lcom/instabug/library/network/Request$Callbacks;->onFailed(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/library/network/RequestResponse;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/network/b$b;->a(Lcom/instabug/library/network/RequestResponse;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "BugsService"

    const-string v1, "uploadingBugAttachmentRequest started"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
