.class public Lcom/instabug/apm/networkinterception/URLConnectionHandler;
.super Ljava/lang/Object;
.source "URLConnectionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/apm/networkinterception/b;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/instabug/apm/networkinterception/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/instabug/apm/networkinterception/a;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p0}, Lcom/instabug/apm/networkinterception/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method
