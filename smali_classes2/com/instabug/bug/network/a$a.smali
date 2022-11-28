.class Lcom/instabug/bug/network/a$a;
.super Ljava/lang/Object;
.source "BugUploaderHelper.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/network/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
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
    iput-object p1, p0, Lcom/instabug/bug/network/a$a;->b:Lcom/instabug/bug/network/a;

    iput-object p2, p0, Lcom/instabug/bug/network/a$a;->a:Lcom/instabug/bug/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bug uploaded successfully, setting bug TemporaryServerToken equal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugUploaderHelper"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/network/a$a;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0, p1}, Lcom/instabug/bug/model/a;->d(Ljava/lang/String;)Lcom/instabug/bug/model/a;

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/network/a$a;->a:Lcom/instabug/bug/model/a;

    sget-object v1, Lcom/instabug/bug/model/a$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/bug/model/a$a;

    invoke-virtual {v0, v1}, Lcom/instabug/bug/model/a;->a(Lcom/instabug/bug/model/a$a;)Lcom/instabug/bug/model/a;

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "temporary_server_token"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    sget-object p1, Lcom/instabug/bug/model/a$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/bug/model/a$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bug_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/instabug/bug/network/a$a;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/instabug/bug/network/a$a;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/instabug/bug/g/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/instabug/bug/network/a$a;->b:Lcom/instabug/bug/network/a;

    iget-object v0, p0, Lcom/instabug/bug/network/a$a;->a:Lcom/instabug/bug/model/a;

    invoke-static {p1, v0}, Lcom/instabug/bug/network/a;->a(Lcom/instabug/bug/network/a;Lcom/instabug/bug/model/a;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "BugUploaderHelper"

    const-string v0, "Something went wrong while uploading bug"

    .line 17
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/network/a$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/network/a$a;->a(Ljava/lang/String;)V

    return-void
.end method
