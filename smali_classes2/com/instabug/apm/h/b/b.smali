.class public Lcom/instabug/apm/h/b/b;
.super Ljava/lang/Object;
.source "SyncManagerNetworkHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/h/b/a;


# instance fields
.field private a:Lcom/instabug/apm/h/c/d/a;

.field b:Lcom/instabug/library/networkv2/request/Request;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->D()Lcom/instabug/apm/h/c/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/h/b/b;->a:Lcom/instabug/apm/h/c/d/a;

    return-void
.end method

.method private a(Lorg/json/JSONArray;)Lcom/instabug/library/networkv2/request/Request;
    .locals 7

    .line 10
    invoke-static {}, Lcom/instabug/apm/e/a;->q()Lcom/instabug/apm/k/c/a;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/instabug/apm/e/a;->r()Lcom/instabug/apm/k/d/a;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/instabug/library/networkv2/request/Request$Builder;

    invoke-direct {v2}, Lcom/instabug/library/networkv2/request/Request$Builder;-><init>()V

    const-string v3, "https://api-apm.instabug.com/api/sdk/v3/apm/v1/sessions"

    .line 14
    invoke-virtual {v2, v3}, Lcom/instabug/library/networkv2/request/Request$Builder;->url(Ljava/lang/String;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v2

    const-string v3, "POST"

    .line 15
    invoke-virtual {v2, v3}, Lcom/instabug/library/networkv2/request/Request$Builder;->method(Ljava/lang/String;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v2

    new-instance v3, Lcom/instabug/library/networkv2/request/RequestParameter;

    const-string v4, "ses"

    invoke-direct {v3, v4, p1}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v2, v3}, Lcom/instabug/library/networkv2/request/Request$Builder;->addParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object p1

    const/4 v2, 0x1

    .line 18
    invoke-virtual {p1, v2}, Lcom/instabug/library/networkv2/request/Request$Builder;->shorten(Z)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object p1

    .line 20
    invoke-static {}, Lcom/instabug/apm/e/a;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 22
    new-instance v4, Lcom/instabug/library/networkv2/request/RequestParameter;

    const-string v5, "IBG-APP-TOKEN"

    invoke-direct {v4, v5, v3}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Lcom/instabug/library/networkv2/request/Request$Builder;->addHeader(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v4

    new-instance v5, Lcom/instabug/library/networkv2/request/RequestParameter;

    const-string v6, "at"

    invoke-direct {v5, v6, v3}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v4, v5}, Lcom/instabug/library/networkv2/request/Request$Builder;->addParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;

    .line 27
    :cond_0
    invoke-interface {v1}, Lcom/instabug/apm/k/d/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    new-instance v1, Lcom/instabug/library/networkv2/request/RequestParameter;

    const-string v3, "dv"

    const-string v4, "Emulator"

    invoke-direct {v1, v3, v4}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->addParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v1, Lcom/instabug/library/networkv2/request/RequestParameter;

    .line 32
    invoke-static {}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dv"

    invoke-direct {v1, v4, v3}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p1, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->addParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;

    .line 36
    :goto_0
    invoke-interface {v0}, Lcom/instabug/apm/k/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Lcom/instabug/library/networkv2/request/RequestParameter;

    const-string v1, "IBG-APM-DEBUG-MODE"

    const-string v3, "true"

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/instabug/library/networkv2/request/Request$Builder;->addHeader(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;

    .line 38
    new-instance v0, Lcom/instabug/library/networkv2/request/RequestParameter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "dm"

    invoke-direct {v0, v2, v1}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/instabug/library/networkv2/request/Request$Builder;->addParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->build()Lcom/instabug/library/networkv2/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/instabug/library/networkv2/request/Request;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V
    .locals 2
    .param p1    # Lcom/instabug/library/networkv2/request/Request;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/networkv2/request/Request;",
            "Lcom/instabug/library/networkv2/request/Request$Callbacks<",
            "Lcom/instabug/library/network/RequestResponse;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/instabug/apm/e/a;->B()Lcom/instabug/library/networkv2/NetworkManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/instabug/library/networkv2/NetworkManager;->doRequest(ILcom/instabug/library/networkv2/request/Request;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/instabug/apm/h/a;

    const-string v0, "Request object can\'t be null"

    invoke-direct {p1, v0}, Lcom/instabug/apm/h/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/instabug/library/networkv2/request/Request$Callbacks;->onFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/d;",
            ">;",
            "Lcom/instabug/library/networkv2/request/Request$Callbacks<",
            "Lcom/instabug/library/network/RequestResponse;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/h/b/b;->a:Lcom/instabug/apm/h/c/d/a;

    invoke-interface {v0, p1}, Lcom/instabug/apm/h/c/d/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/apm/h/b/b;->a(Lorg/json/JSONArray;)Lcom/instabug/library/networkv2/request/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/apm/h/b/b;->b:Lcom/instabug/library/networkv2/request/Request;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/instabug/apm/h/b/b;->a(Lcom/instabug/library/networkv2/request/Request;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-interface {p2, p1}, Lcom/instabug/library/networkv2/request/Request$Callbacks;->onFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
