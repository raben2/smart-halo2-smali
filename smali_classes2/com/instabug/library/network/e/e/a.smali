.class final Lcom/instabug/library/network/e/e/a;
.super Ljava/lang/Object;
.source "AttributesDataMapper.java"


# direct methods
.method static a(Ljava/lang/String;)Lcom/instabug/library/model/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/instabug/library/model/i;

    invoke-direct {v0}, Lcom/instabug/library/model/i;-><init>()V

    .line 16
    invoke-virtual {v0, p0}, Lcom/instabug/library/model/i;->fromJson(Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/network/Request;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/library/network/Request;

    sget-object v1, Lcom/instabug/library/network/Request$Endpoint;->USER_ATTRIBUTES:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v2, Lcom/instabug/library/network/NetworkManager$RequestType;->NORMAL:Lcom/instabug/library/network/NetworkManager$RequestType;

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/network/Request;-><init>(Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/NetworkManager$RequestType;)V

    sget-object v1, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/network/Request;->setRequestMethod(Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/network/Request$RequestParameter;

    const-string v2, "If-Match"

    invoke-direct {v1, v2, p3}, Lcom/instabug/library/network/Request$RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/network/Request;->addHeader(Lcom/instabug/library/network/Request$RequestParameter;)Lcom/instabug/library/network/Request;

    move-result-object p3

    const-string v0, "uuid"

    .line 4
    invoke-virtual {p3, v0, p1}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    move-result-object p1

    const-string p3, "email"

    .line 5
    invoke-virtual {p1, p3, p2}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    move-result-object p1

    if-eqz p0, :cond_0

    const-string p2, "application_token"

    .line 7
    invoke-virtual {p1, p2, p0}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    :cond_0
    return-object p1
.end method

.method static a(Lcom/instabug/library/network/RequestResponse;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/network/RequestResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/network/RequestResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "{}"

    :goto_1
    return-object p0
.end method

.method static a(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    new-instance v2, Lcom/instabug/library/model/h$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/instabug/library/model/h$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/instabug/library/model/h$b;->a()Lcom/instabug/library/model/h;

    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
