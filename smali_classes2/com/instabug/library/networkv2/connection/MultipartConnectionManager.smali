.class public Lcom/instabug/library/networkv2/connection/MultipartConnectionManager;
.super Lcom/instabug/library/networkv2/connection/InstabugBaseConnectionManagerImpl;
.source "MultipartConnectionManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/networkv2/connection/InstabugBaseConnectionManagerImpl;-><init>()V

    .line 3
    const-class v0, Lcom/instabug/library/networkv2/connection/MultipartConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/networkv2/connection/MultipartConnectionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private buildMultipartRequest(Lcom/instabug/library/networkv2/request/Request;Ljava/net/HttpURLConnection;Lcom/instabug/library/networkv2/request/FileToUpload;)Lcom/instabug/library/networkv2/a;
    .locals 2
    .param p3    # Lcom/instabug/library/networkv2/request/FileToUpload;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/networkv2/a;

    invoke-direct {v0, p2}, Lcom/instabug/library/networkv2/a;-><init>(Ljava/net/HttpURLConnection;)V

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/networkv2/request/Request;->getRequestBodyParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/instabug/library/networkv2/request/RequestParameter;

    .line 3
    invoke-virtual {p2}, Lcom/instabug/library/networkv2/request/RequestParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p2}, Lcom/instabug/library/networkv2/request/RequestParameter;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {v0, v1, p2}, Lcom/instabug/library/networkv2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p3}, Lcom/instabug/library/networkv2/request/FileToUpload;->getFilePartName()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Lcom/instabug/library/networkv2/request/FileToUpload;->getFilePath()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p3}, Lcom/instabug/library/networkv2/request/FileToUpload;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p3}, Lcom/instabug/library/networkv2/request/FileToUpload;->getFileType()Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/instabug/library/networkv2/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getConnectTimeOut()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public getReadTimeOut()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleResponse(Ljava/net/HttpURLConnection;Lcom/instabug/library/networkv2/request/Request;)Lcom/instabug/library/network/RequestResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/instabug/library/network/RequestResponse;

    invoke-direct {p2}, Lcom/instabug/library/network/RequestResponse;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 3
    invoke-virtual {p2, v0}, Lcom/instabug/library/network/RequestResponse;->setResponseCode(I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/instabug/library/networkv2/connection/InstabugBaseConnectionManagerImpl;->getHeaderFields(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/instabug/library/network/RequestResponse;->setHeaders(Ljava/util/Map;)Lcom/instabug/library/network/RequestResponse;

    .line 5
    iget-object v1, p0, Lcom/instabug/library/networkv2/connection/MultipartConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/networkv2/connection/InstabugBaseConnectionManagerImpl;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Lcom/instabug/library/network/RequestResponse;->setResponseBody(Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/instabug/library/networkv2/connection/MultipartConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2
.end method

.method public setupConnection(Ljava/net/HttpURLConnection;Lcom/instabug/library/networkv2/request/Request;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connect to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/instabug/library/networkv2/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with multiPart type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Encoding"

    const-string v1, ""

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/instabug/library/networkv2/request/Request;->getFileToUpload()Lcom/instabug/library/networkv2/request/FileToUpload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, p2, p1, v0}, Lcom/instabug/library/networkv2/connection/MultipartConnectionManager;->buildMultipartRequest(Lcom/instabug/library/networkv2/request/Request;Ljava/net/HttpURLConnection;Lcom/instabug/library/networkv2/request/FileToUpload;)Lcom/instabug/library/networkv2/a;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/instabug/library/networkv2/a;->a()V

    :cond_0
    return-object p1
.end method
