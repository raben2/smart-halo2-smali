.class public Lcom/instabug/apm/networkinterception/a;
.super Ljava/net/HttpURLConnection;
.source "APMHttpUrlConnection.java"

# interfaces
.implements Lcom/instabug/apm/networkinterception/c/a$a;


# instance fields
.field private final a:Lcom/instabug/apm/logger/a/a;

.field private b:Ljava/net/HttpURLConnection;

.field private c:J

.field private d:J

.field private e:Lcom/instabug/apm/networkinterception/c/b;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/instabug/apm/model/APMNetworkLog;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instabug/apm/networkinterception/a;->f:Ljava/util/HashMap;

    .line 8
    new-instance v0, Lcom/instabug/apm/model/APMNetworkLog;

    invoke-direct {v0}, Lcom/instabug/apm/model/APMNetworkLog;-><init>()V

    iput-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    .line 12
    iput-object p1, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/instabug/apm/networkinterception/a;->c:J

    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 15
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/model/APMNetworkLog;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lcom/instabug/apm/networkinterception/c/a;

    invoke-direct {v0, p1, p0}, Lcom/instabug/apm/networkinterception/c/a;-><init>(Ljava/io/InputStream;Lcom/instabug/apm/networkinterception/c/a$a;)V

    return-object v0
.end method

.method private a()V
    .locals 3

    .line 13
    iget-wide v0, p0, Lcom/instabug/apm/networkinterception/a;->c:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/instabug/apm/networkinterception/a;->a(JLjava/lang/Long;)V

    return-void
.end method

.method private a(JLjava/lang/Long;)V
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->e:Lcom/instabug/apm/networkinterception/c/b;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setRequestBodySize(J)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0}, Lcom/instabug/apm/networkinterception/c/b;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/instabug/apm/model/APMNetworkLog;->setRequestBodySize(J)V

    :goto_0
    if-eqz p3, :cond_1

    .line 20
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setResponseBodySize(J)V

    goto :goto_1

    .line 21
    :cond_1
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p3}, Lcom/instabug/apm/model/APMNetworkLog;->getResponseBodySize()J

    move-result-wide v3

    cmp-long p3, v3, v1

    if-nez p3, :cond_2

    .line 22
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Lcom/instabug/apm/model/APMNetworkLog;->setResponseBodySize(J)V

    .line 25
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/instabug/apm/model/APMNetworkLog;->setStartTime(Ljava/lang/Long;)V

    .line 26
    iget-wide p1, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    invoke-direct {p0, p1, p2}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide p1

    .line 27
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p3, p1, p2}, Lcom/instabug/apm/model/APMNetworkLog;->setTotalDuration(J)V

    .line 28
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->f:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/instabug/library/util/ObjectMapper;->toJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/instabug/apm/model/APMNetworkLog;->setRequestHeaders(Ljava/lang/String;)V

    .line 30
    :try_start_0
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/instabug/apm/model/APMNetworkLog;->setResponseCode(I)V

    .line 31
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p3}, Lcom/instabug/apm/model/APMNetworkLog;->getResponseCode()I

    move-result p3

    if-lez p3, :cond_4

    .line 32
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 33
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p3}, Lcom/instabug/apm/model/APMNetworkLog;->getResponseCode()I

    move-result p3

    const/16 v0, 0x190

    if-lt p3, v0, :cond_3

    .line 34
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Request [$method] $url has failed after $duration ms status code $code"

    const-string v1, "$method"

    :try_start_1
    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 35
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "$url"

    :try_start_2
    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "$duration"

    .line 37
    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p2, "$code"

    :try_start_4
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    .line 38
    invoke-virtual {v0}, Lcom/instabug/apm/model/APMNetworkLog;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Lcom/instabug/apm/logger/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 45
    :cond_3
    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "Request [$method] $url has succeeded.\nTotal duration: $duration ms\nStatus code: $code"

    const-string v1, "$method"

    :try_start_5
    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 46
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "$url"

    :try_start_6
    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 47
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "$duration"

    .line 48
    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    const-string p2, "$code"

    :try_start_8
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    .line 49
    invoke-virtual {v0}, Lcom/instabug/apm/model/APMNetworkLog;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p3, p1}, Lcom/instabug/apm/logger/a/a;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 58
    iget-object p2, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object p3, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 60
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v1, "$method"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$url"

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    iget-wide v0, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 62
    invoke-direct {p0, v0, v1}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$duration"

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "$error"

    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p2, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 70
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p1}, Lcom/instabug/apm/model/APMNetworkLog;->insert()V

    return-void
.end method

.method private b(J)J
    .locals 3

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/networkinterception/a;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content-type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setResponseContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-static {v0}, Lcom/instabug/library/util/ObjectMapper;->toJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/apm/model/APMNetworkLog;->setResponseHeaders(Ljava/lang/String;)V

    .line 12
    iget-wide v0, p0, Lcom/instabug/apm/networkinterception/a;->c:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/instabug/apm/networkinterception/a;->a(JLjava/lang/Long;)V

    return-void
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content-type"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0, p2}, Lcom/instabug/apm/model/APMNetworkLog;->setRequestContentType(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/instabug/apm/networkinterception/a;->c:J

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request [$method] $url has started."

    const-string v3, "$method"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$url"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->a(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 14
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v4, "$method"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 15
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$url"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 16
    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$duration"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$error"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 24
    throw v0
.end method

.method public disconnect()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v4, "$method"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$url"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 7
    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$duration"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$error"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 15
    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 20
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v3, "$method"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 21
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$url"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 22
    invoke-direct {p0, v2, v3}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$duration"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$error"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 30
    throw p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/apm/networkinterception/a;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 21
    :catch_0
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/apm/networkinterception/a;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->b()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 6
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    :cond_0
    return-object v0

    :catch_1
    move-exception v0

    .line 12
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 14
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v4, "$method"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 15
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$url"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 16
    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$duration"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$error"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 24
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->e:Lcom/instabug/apm/networkinterception/c/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/apm/networkinterception/c/b;

    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/apm/networkinterception/c/b;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/instabug/apm/networkinterception/a;->e:Lcom/instabug/apm/networkinterception/c/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->e:Lcom/instabug/apm/networkinterception/c/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v4, "$method"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 9
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$url"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 10
    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$duration"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$error"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 18
    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v4, "$method"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$url"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 7
    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$duration"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$error"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 15
    throw v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v4, "$method"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$url"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 7
    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$duration"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$error"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 15
    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v4, "$method"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$url"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 7
    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$duration"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$error"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 15
    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0, p1}, Lcom/instabug/apm/model/APMNetworkLog;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/model/APMNetworkLog;->setErrorMessage(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->a:Lcom/instabug/apm/logger/a/a;

    iget-object v1, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request [$method] $url has failed after $duration ms due to $error."

    const-string v3, "$method"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    .line 7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$url"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/instabug/apm/networkinterception/a;->d:J

    .line 8
    invoke-direct {p0, v2, v3}, Lcom/instabug/apm/networkinterception/a;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$duration"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$error"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/instabug/apm/networkinterception/a;->a()V

    .line 16
    throw p1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content-type"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->g:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-virtual {v0, p2}, Lcom/instabug/apm/model/APMNetworkLog;->setRequestContentType(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/networkinterception/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
