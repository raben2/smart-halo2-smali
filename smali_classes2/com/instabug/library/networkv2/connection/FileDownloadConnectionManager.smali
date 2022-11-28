.class public Lcom/instabug/library/networkv2/connection/FileDownloadConnectionManager;
.super Lcom/instabug/library/networkv2/connection/NormalConnectionManager;
.source "FileDownloadConnectionManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/networkv2/connection/NormalConnectionManager;-><init>()V

    .line 2
    const-class v0, Lcom/instabug/library/networkv2/connection/MultipartConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/networkv2/connection/FileDownloadConnectionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private copyStream(Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method public handleResponse(Ljava/net/HttpURLConnection;Lcom/instabug/library/networkv2/request/Request;)Lcom/instabug/library/network/RequestResponse;
    .locals 5
    .param p2    # Lcom/instabug/library/networkv2/request/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/network/RequestResponse;

    invoke-direct {v0}, Lcom/instabug/library/network/RequestResponse;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/network/RequestResponse;->setResponseCode(I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/instabug/library/networkv2/connection/InstabugBaseConnectionManagerImpl;->getHeaderFields(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/library/network/RequestResponse;->setHeaders(Ljava/util/Map;)Lcom/instabug/library/network/RequestResponse;

    .line 5
    iget-object v2, p0, Lcom/instabug/library/networkv2/connection/FileDownloadConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File downloader request response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/instabug/library/networkv2/request/Request;->getDownloadedFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/connection/FileDownloadConnectionManager;->copyStream(Ljava/net/HttpURLConnection;)V

    .line 8
    iget-object v1, p0, Lcom/instabug/library/networkv2/connection/FileDownloadConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File downloader request response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/instabug/library/networkv2/request/Request;->getDownloadedFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/instabug/library/networkv2/connection/FileDownloadConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "File for download is not found"

    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {p2}, Lcom/instabug/library/networkv2/request/Request;->getDownloadedFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/instabug/library/network/RequestResponse;->setResponseBody(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0
.end method
