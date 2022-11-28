.class public Lcom/instabug/library/networkv2/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/instabug/library/networkv2/INetworkManager;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/networkv2/NetworkManager$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkManager"


# instance fields
.field private onDoRequestListener:Lcom/instabug/library/networkv2/NetworkManager$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/instabug/library/networkv2/NetworkManager$a;)V
    .locals 0
    .param p1    # Lcom/instabug/library/networkv2/NetworkManager$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/instabug/library/networkv2/NetworkManager;->onDoRequestListener:Lcom/instabug/library/networkv2/NetworkManager$a;

    return-void
.end method

.method private doRequest(Lcom/instabug/library/networkv2/connection/a;Lcom/instabug/library/networkv2/request/Request;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V
    .locals 3
    .param p1    # Lcom/instabug/library/networkv2/connection/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/networkv2/request/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/networkv2/connection/a;",
            "Lcom/instabug/library/networkv2/request/Request;",
            "Lcom/instabug/library/networkv2/request/Request$Callbacks<",
            "Lcom/instabug/library/network/RequestResponse;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/NetworkManager;->onDoRequestListener:Lcom/instabug/library/networkv2/NetworkManager$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2}, Lcom/instabug/library/networkv2/NetworkManager$a;->a(Lcom/instabug/library/networkv2/request/Request;)V

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/instabug/library/networkv2/connection/a;->create(Lcom/instabug/library/networkv2/request/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 8
    invoke-interface {p1, v0}, Lcom/instabug/library/networkv2/connection/a;->handleServerError(Ljava/net/HttpURLConnection;)V

    .line 10
    :cond_1
    invoke-interface {p1, v0, p2}, Lcom/instabug/library/networkv2/connection/a;->handleResponse(Ljava/net/HttpURLConnection;Lcom/instabug/library/networkv2/request/Request;)Lcom/instabug/library/network/RequestResponse;

    move-result-object p1

    .line 11
    invoke-interface {p3, p1}, Lcom/instabug/library/networkv2/request/Request$Callbacks;->onSucceeded(Ljava/lang/Object;)V

    const-string p1, "NetworkManager"

    const-string v0, "Network request completed successfully"

    .line 12
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/instabug/library/networkv2/NetworkManager;->onDoRequestListener:Lcom/instabug/library/networkv2/NetworkManager$a;

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/instabug/library/networkv2/NetworkManager;->onDoRequestListener:Lcom/instabug/library/networkv2/NetworkManager$a;

    invoke-interface {p1}, Lcom/instabug/library/networkv2/NetworkManager$a;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/instabug/library/networkv2/request/Request$Callbacks;->onFailed(Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {p2}, Lcom/instabug/library/networkv2/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/instabug/library/networkv2/NetworkManager;->logNetworkError(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private logNetworkError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " got error: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkManager"

    invoke-static {v0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public doRequest(ILcom/instabug/library/networkv2/request/Request;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V
    .locals 1
    .param p2    # Lcom/instabug/library/networkv2/request/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/instabug/library/networkv2/request/Request;",
            "Lcom/instabug/library/networkv2/request/Request$Callbacks<",
            "Lcom/instabug/library/network/RequestResponse;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "undefined request type for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/instabug/library/networkv2/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lcom/instabug/library/networkv2/connection/FileDownloadConnectionManager;

    invoke-direct {p1}, Lcom/instabug/library/networkv2/connection/FileDownloadConnectionManager;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/networkv2/NetworkManager;->doRequest(Lcom/instabug/library/networkv2/connection/a;Lcom/instabug/library/networkv2/request/Request;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Lcom/instabug/library/networkv2/connection/MultipartConnectionManager;

    invoke-direct {p1}, Lcom/instabug/library/networkv2/connection/MultipartConnectionManager;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/networkv2/NetworkManager;->doRequest(Lcom/instabug/library/networkv2/connection/a;Lcom/instabug/library/networkv2/request/Request;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V

    goto :goto_0

    .line 26
    :cond_2
    new-instance p1, Lcom/instabug/library/networkv2/connection/NormalConnectionManager;

    invoke-direct {p1}, Lcom/instabug/library/networkv2/connection/NormalConnectionManager;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/networkv2/NetworkManager;->doRequest(Lcom/instabug/library/networkv2/connection/a;Lcom/instabug/library/networkv2/request/Request;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V

    :goto_0
    return-void
.end method

.method public setOnDoRequestListener(Lcom/instabug/library/networkv2/NetworkManager$a;)V
    .locals 0
    .param p1    # Lcom/instabug/library/networkv2/NetworkManager$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/networkv2/NetworkManager;->onDoRequestListener:Lcom/instabug/library/networkv2/NetworkManager$a;

    return-void
.end method
