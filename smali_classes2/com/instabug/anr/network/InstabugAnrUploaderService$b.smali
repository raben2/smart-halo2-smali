.class Lcom/instabug/anr/network/InstabugAnrUploaderService$b;
.super Ljava/lang/Object;
.source "InstabugAnrUploaderService.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/anr/network/InstabugAnrUploaderService;->b(La/a/a/d/a;)V
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

.field final synthetic b:Lcom/instabug/anr/network/InstabugAnrUploaderService;


# direct methods
.method constructor <init>(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->b:Lcom/instabug/anr/network/InstabugAnrUploaderService;

    iput-object p2, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->a:La/a/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/a/d/a;)V
    .locals 1

    const-string p1, "InstabugAnrUploaderService"

    const-string v0, "Something went wrong while uploading ANR logs"

    .line 17
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "InstabugAnrUploaderService"

    const-string v0, "ANR logs uploaded successfully, change its state"

    .line 1
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->a:La/a/a/d/a;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, La/a/a/d/a;->a(I)V

    .line 7
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "anr_upload_state"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->a:La/a/a/d/a;

    invoke-virtual {v0}, La/a/a/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, La/a/a/c/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->b:Lcom/instabug/anr/network/InstabugAnrUploaderService;

    iget-object v0, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->a:La/a/a/d/a;

    invoke-static {p1, v0}, Lcom/instabug/anr/network/InstabugAnrUploaderService;->b(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    iget-object p1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->b:Lcom/instabug/anr/network/InstabugAnrUploaderService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error happened while uploading ANR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->a:La/a/a/d/a;

    .line 15
    invoke-virtual {v1}, La/a/a/d/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "attachments."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, La/a/a/d/a;

    invoke-virtual {p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->a(La/a/a/d/a;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
