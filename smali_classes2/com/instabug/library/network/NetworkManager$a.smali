.class Lcom/instabug/library/network/NetworkManager$a;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/instabug/library/network/RequestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/network/Request;

.field final synthetic b:Lcom/instabug/library/network/NetworkManager;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    iput-object p2, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/instabug/library/network/RequestResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->access$000(Lcom/instabug/library/network/NetworkManager;)Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->access$000(Lcom/instabug/library/network/NetworkManager;)Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;->onStart()V

    :cond_0
    const-string v0, "NetworkManager"

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    .line 6
    invoke-virtual {v2}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    sget-object v1, Lcom/instabug/library/network/NetworkManager$b;->a:[I

    iget-object v2, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    invoke-virtual {v2}, Lcom/instabug/library/network/Request;->getRequestType()Lcom/instabug/library/network/NetworkManager$RequestType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    iget-object v1, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    invoke-static {v0, v1}, Lcom/instabug/library/network/NetworkManager;->access$300(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    iget-object v1, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    invoke-static {v0, v1}, Lcom/instabug/library/network/NetworkManager;->access$200(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    iget-object v1, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    invoke-static {v0, v1}, Lcom/instabug/library/network/NetworkManager;->access$100(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_8

    .line 30
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v5, 0x190

    if-lt v1, v5, :cond_4

    .line 32
    iget-object v1, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    invoke-static {v1, v0}, Lcom/instabug/library/network/NetworkManager;->access$400(Lcom/instabug/library/network/NetworkManager;Ljava/net/HttpURLConnection;)V

    :cond_4
    const-string v1, "NetworkManager"

    const-string v5, "Network request completed successfully"

    .line 34
    invoke-static {v1, v5}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/instabug/library/network/NetworkManager$b;->a:[I

    iget-object v5, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    invoke-virtual {v5}, Lcom/instabug/library/network/Request;->getRequestType()Lcom/instabug/library/network/NetworkManager$RequestType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v4, :cond_7

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_5

    goto :goto_1

    .line 45
    :cond_5
    iget-object v1, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    invoke-static {v1, v0}, Lcom/instabug/library/network/NetworkManager;->access$700(Lcom/instabug/library/network/NetworkManager;Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 46
    :cond_6
    iget-object v1, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    iget-object v2, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    invoke-static {v1, v2, v0}, Lcom/instabug/library/network/NetworkManager;->access$600(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    :cond_7
    iget-object v1, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    invoke-static {v1, v0}, Lcom/instabug/library/network/NetworkManager;->access$500(Lcom/instabug/library/network/NetworkManager;Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 58
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->access$000(Lcom/instabug/library/network/NetworkManager;)Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p0, Lcom/instabug/library/network/NetworkManager$a;->b:Lcom/instabug/library/network/NetworkManager;

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->access$000(Lcom/instabug/library/network/NetworkManager;)Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;->onComplete()V

    .line 61
    :cond_9
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 72
    :try_start_1
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 74
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request got error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    invoke-virtual {v1}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetworkManager"

    invoke-static {v1, p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManager"

    invoke-static {v2, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :try_start_2
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 79
    :catch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request got error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/network/NetworkManager$a;->a:Lcom/instabug/library/network/Request;

    invoke-virtual {v1}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetworkManager"

    invoke-static {v1, p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :goto_2
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->setTemporaryDisabled()V

    :goto_3
    return-void
.end method
