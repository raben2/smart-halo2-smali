.class Lcom/instabug/bug/network/a$b;
.super Ljava/lang/Object;
.source "BugUploaderHelper.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/network/a;->b(Lcom/instabug/bug/model/a;)V
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
    iput-object p1, p0, Lcom/instabug/bug/network/a$b;->b:Lcom/instabug/bug/network/a;

    iput-object p2, p0, Lcom/instabug/bug/network/a$b;->a:Lcom/instabug/bug/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/bug/model/a;)V
    .locals 1

    const-string p1, "BugUploaderHelper"

    const-string v0, "Something went wrong while uploading bug logs"

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

    const-string v0, "Bug logs uploaded successfully, change its state"

    .line 1
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/bug/network/a$b;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "BugUploaderHelper"

    const-string v0, "Couldn\'t update the bug\'s state because its ID is null"

    .line 4
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/instabug/bug/network/a$b;->a:Lcom/instabug/bug/model/a;

    sget-object v0, Lcom/instabug/bug/model/a$a;->ATTACHMENTS_READY_TO_BE_UPLOADED:Lcom/instabug/bug/model/a$a;

    invoke-virtual {p1, v0}, Lcom/instabug/bug/model/a;->a(Lcom/instabug/bug/model/a$a;)Lcom/instabug/bug/model/a;

    .line 10
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 11
    sget-object v0, Lcom/instabug/bug/model/a$a;->ATTACHMENTS_READY_TO_BE_UPLOADED:Lcom/instabug/bug/model/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bug_state"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/instabug/bug/network/a$b;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instabug/bug/g/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/instabug/bug/network/a$b;->b:Lcom/instabug/bug/network/a;

    iget-object v0, p0, Lcom/instabug/bug/network/a$b;->a:Lcom/instabug/bug/model/a;

    invoke-static {p1, v0}, Lcom/instabug/bug/network/a;->b(Lcom/instabug/bug/network/a;Lcom/instabug/bug/model/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Something went wrong while uploading bug attachments e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BugUploaderHelper"

    .line 19
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/bug/model/a;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/network/a$b;->a(Lcom/instabug/bug/model/a;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/bug/network/a$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
