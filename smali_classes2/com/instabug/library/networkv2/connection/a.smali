.class public interface abstract Lcom/instabug/library/networkv2/connection/a;
.super Ljava/lang/Object;
.source "InstabugBaseConnectionManager.java"


# virtual methods
.method public abstract create(Lcom/instabug/library/networkv2/request/Request;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract handleResponse(Ljava/net/HttpURLConnection;Lcom/instabug/library/networkv2/request/Request;)Lcom/instabug/library/network/RequestResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleServerError(Ljava/net/HttpURLConnection;)V
.end method

.method public abstract setupConnection(Ljava/net/HttpURLConnection;Lcom/instabug/library/networkv2/request/Request;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
