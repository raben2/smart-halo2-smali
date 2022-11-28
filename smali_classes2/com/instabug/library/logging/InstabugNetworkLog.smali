.class public Lcom/instabug/library/logging/InstabugNetworkLog;
.super Ljava/lang/Object;
.source "InstabugNetworkLog.java"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "NM_METHOD_NAMING_CONVENTION"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InstabugNetworkLog"


# instance fields
.field private networkLog:Lcom/instabug/library/model/NetworkLog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/model/NetworkLog;

    invoke-direct {v0}, Lcom/instabug/library/model/NetworkLog;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    return-void
.end method

.method private addHeaders(Ljava/net/HttpURLConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "content-type"

    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "application/json"

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "application/xml"

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "text/xml"

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "application/protobuf"

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "text/html"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "text/plain"

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    if-nez p1, :cond_4

    .line 25
    new-instance p1, Lcom/instabug/library/model/NetworkLog;

    invoke-direct {p1}, Lcom/instabug/library/model/NetworkLog;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/model/NetworkLog;->setRequestHeaders(Ljava/lang/String;)V

    return-void
.end method

.method private insert()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/model/NetworkLog;->insert()J

    :cond_0
    return-void
.end method

.method private validateBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0x7a120

    if-le v0, v1, :cond_1

    const-string p1, "{\"InstabugNetworkLog Error\":\"Response body exceeded limit\"}"

    :cond_1
    return-object p1
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "connection"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "requestBody"

    .line 4
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "responseBody"

    .line 6
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 7
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 13
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/instabug/library/model/NetworkLog;

    invoke-direct {v0}, Lcom/instabug/library/model/NetworkLog;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-virtual {v0, p5}, Lcom/instabug/library/model/NetworkLog;->setResponseCode(I)V

    .line 17
    iget-object p5, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInMiliSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/instabug/library/model/NetworkLog;->setDate(Ljava/lang/String;)V

    .line 18
    iget-object p5, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-virtual {p5, p2}, Lcom/instabug/library/model/NetworkLog;->setMethod(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-virtual {p2, p1}, Lcom/instabug/library/model/NetworkLog;->setUrl(Ljava/lang/String;)V

    .line 22
    :try_start_0
    iget-object p1, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-direct {p0, p3}, Lcom/instabug/library/logging/InstabugNetworkLog;->validateBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/library/model/NetworkLog;->setRequest(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-direct {p0, p4}, Lcom/instabug/library/logging/InstabugNetworkLog;->validateBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/library/model/NetworkLog;->setResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    invoke-direct {p0}, Lcom/instabug/library/logging/InstabugNetworkLog;->insert()V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adding network log: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-virtual {p2}, Lcom/instabug/library/model/NetworkLog;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InstabugNetworkLog"

    invoke-static {p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p1, "InstabugNetworkLog"

    const-string p2, "Content-type is not allowed to be logged"

    .line 33
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    return-void
.end method

.method public log(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "connection"

    .line 36
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "requestBody"

    .line 38
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "responseBody"

    .line 40
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 41
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 47
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/instabug/library/model/NetworkLog;

    invoke-direct {v0}, Lcom/instabug/library/model/NetworkLog;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/NetworkLog;->setResponseCode(I)V

    .line 51
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInMiliSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/NetworkLog;->setDate(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/NetworkLog;->setMethod(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/NetworkLog;->setUrl(Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-direct {p0, p1}, Lcom/instabug/library/logging/InstabugNetworkLog;->addHeaders(Ljava/net/HttpURLConnection;)V

    .line 57
    iget-object p1, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-direct {p0, p2}, Lcom/instabug/library/logging/InstabugNetworkLog;->validateBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/library/model/NetworkLog;->setRequest(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-direct {p0, p3}, Lcom/instabug/library/logging/InstabugNetworkLog;->validateBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/library/model/NetworkLog;->setResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "InstabugNetworkLog"

    const-string p2, "Content-type is not allowed to be logged"

    .line 62
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    return-void

    :catch_1
    move-exception p1

    .line 64
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/instabug/library/logging/InstabugNetworkLog;->insert()V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adding network log: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/instabug/library/logging/InstabugNetworkLog;->networkLog:Lcom/instabug/library/model/NetworkLog;

    invoke-virtual {p2}, Lcom/instabug/library/model/NetworkLog;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InstabugNetworkLog"

    invoke-static {p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
