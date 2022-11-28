.class Lcom/instabug/featuresrequest/e/b/a$b;
.super Ljava/lang/Object;
.source "FeatureRequestsRepository.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/e/b/a;->a(Lcom/instabug/featuresrequest/d/d;Lcom/instabug/featuresrequest/e/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/e/b/b;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/e/b/a;Lcom/instabug/featuresrequest/e/b/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/featuresrequest/e/b/a$b;->a:Lcom/instabug/featuresrequest/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "something went wrong while trying to add new comment"

    .line 4
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/featuresrequest/e/b/a$b;->a:Lcom/instabug/featuresrequest/e/b/b;

    invoke-interface {v0, p1}, Lcom/instabug/featuresrequest/e/b/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/e/b/a$b;->a:Lcom/instabug/featuresrequest/e/b/b;

    invoke-interface {v0, p1}, Lcom/instabug/featuresrequest/e/b/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/e/b/a$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/e/b/a$b;->a(Lorg/json/JSONObject;)V

    return-void
.end method
