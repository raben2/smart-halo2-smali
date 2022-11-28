.class Lcom/instabug/featuresrequest/e/b/a$a;
.super Ljava/lang/Object;
.source "FeatureRequestsRepository.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/e/b/a;->a(JLcom/instabug/featuresrequest/e/b/b;)V
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
.field final synthetic a:J

.field final synthetic b:Lcom/instabug/featuresrequest/e/b/b;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/e/b/a;JLcom/instabug/featuresrequest/e/b/b;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/instabug/featuresrequest/e/b/a$a;->a:J

    iput-object p4, p0, Lcom/instabug/featuresrequest/e/b/a$a;->b:Lcom/instabug/featuresrequest/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iget-object v0, p0, Lcom/instabug/featuresrequest/e/b/a$a;->b:Lcom/instabug/featuresrequest/e/b/b;

    invoke-interface {v0, p1}, Lcom/instabug/featuresrequest/e/b/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "response json is null"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/e/b/a$a;->a(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/instabug/featuresrequest/d/g;->a(Lorg/json/JSONObject;)Lcom/instabug/featuresrequest/d/g;

    move-result-object p1

    .line 7
    iget-wide v0, p0, Lcom/instabug/featuresrequest/e/b/a$a;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/instabug/featuresrequest/d/g;->a(J)V

    .line 8
    iget-object v0, p0, Lcom/instabug/featuresrequest/e/b/a$a;->b:Lcom/instabug/featuresrequest/e/b/b;

    invoke-interface {v0, p1}, Lcom/instabug/featuresrequest/e/b/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/e/b/a$a;->a(Ljava/lang/Throwable;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/e/b/a$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
