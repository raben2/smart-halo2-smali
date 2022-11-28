.class Lcom/instabug/anr/network/InstabugAnrUploaderService$a;
.super Ljava/lang/Object;
.source "InstabugAnrUploaderService.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/anr/network/InstabugAnrUploaderService;->a()V
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
.field final synthetic a:La/a/a/d/a;

.field final synthetic b:Lcom/instabug/anr/network/InstabugAnrUploaderService;


# direct methods
.method constructor <init>(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;->b:Lcom/instabug/anr/network/InstabugAnrUploaderService;

    iput-object p2, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;->a:La/a/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "InstabugAnrUploaderService"

    const-string v0, "temporaryServerToken was null, aborting..."

    .line 1
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANR uploaded successfully, setting ANR TemporaryServerToken to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugAnrUploaderService"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;->a:La/a/a/d/a;

    invoke-virtual {v0, p1}, La/a/a/d/a;->d(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;->a:La/a/a/d/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, La/a/a/d/a;->a(I)V

    .line 11
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "temporary_server_token"

    .line 12
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "anr_upload_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    iget-object p1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;->a:La/a/a/d/a;

    invoke-virtual {p1}, La/a/a/d/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, La/a/a/c/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 16
    iget-object p1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;->b:Lcom/instabug/anr/network/InstabugAnrUploaderService;

    iget-object v0, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;->a:La/a/a/d/a;

    invoke-static {p1, v0}, Lcom/instabug/anr/network/InstabugAnrUploaderService;->a(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "InstabugAnrUploaderService"

    const-string v0, "Something went wrong while uploading ANR"

    .line 17
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;->a(Ljava/lang/Throwable;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;->a(Ljava/lang/String;)V

    return-void
.end method
