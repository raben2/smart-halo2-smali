.class Lcom/instabug/survey/network/service/a$a;
.super Lio/reactivex/observers/DisposableObserver;
.source "SurveysService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/network/service/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/network/Request$Callbacks;)V
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
.field final synthetic a:Lcom/instabug/library/network/Request$Callbacks;


# direct methods
.method constructor <init>(Lcom/instabug/survey/network/service/a;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/survey/network/service/a$a;->a:Lcom/instabug/library/network/Request$Callbacks;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/network/RequestResponse;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurveysService"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v0, Lcom/instabug/survey/network/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchingSurveysRequest onNext, Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/instabug/survey/network/service/a$a;->a:Lcom/instabug/library/network/Request$Callbacks;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/instabug/library/network/Request$Callbacks;->onSucceeded(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/instabug/survey/network/service/a$a;->a:Lcom/instabug/library/network/Request$Callbacks;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v0}, Lcom/instabug/library/network/Request$Callbacks;->onSucceeded(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    const-class v0, Lcom/instabug/survey/network/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submittingSurveyRequest got JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iget-object v0, p0, Lcom/instabug/survey/network/service/a$a;->a:Lcom/instabug/library/network/Request$Callbacks;

    invoke-interface {v0, p1}, Lcom/instabug/library/network/Request$Callbacks;->onFailed(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/network/service/a$a;->a:Lcom/instabug/library/network/Request$Callbacks;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching Surveys got error with response code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/instabug/library/network/Request$Callbacks;->onFailed(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    const-class v0, Lcom/instabug/survey/network/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchingSurveysRequest completed"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const-class v0, Lcom/instabug/survey/network/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchingSurveysRequest got error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/network/service/a$a;->a:Lcom/instabug/library/network/Request$Callbacks;

    invoke-interface {v0, p1}, Lcom/instabug/library/network/Request$Callbacks;->onFailed(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/library/network/RequestResponse;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/network/service/a$a;->a(Lcom/instabug/library/network/RequestResponse;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-class v0, Lcom/instabug/survey/network/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchingSurveysRequest started"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
