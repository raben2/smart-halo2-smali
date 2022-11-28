.class public Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;
.super Landroid/os/AsyncTask;
.source "FetchAndParseGPXTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lio/ticofab/androidgpxparser/parser/domain/Gpx;",
        ">;"
    }
.end annotation


# instance fields
.field final mGpxUrl:Ljava/lang/String;

.field final mListener:Lio/ticofab/androidgpxparser/parser/task/GpxFetchedAndParsed;

.field final mParser:Lio/ticofab/androidgpxparser/parser/GPXParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/ticofab/androidgpxparser/parser/task/GpxFetchedAndParsed;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    new-instance v0, Lio/ticofab/androidgpxparser/parser/GPXParser;

    invoke-direct {v0}, Lio/ticofab/androidgpxparser/parser/GPXParser;-><init>()V

    iput-object v0, p0, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;->mParser:Lio/ticofab/androidgpxparser/parser/GPXParser;

    .line 23
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;->mGpxUrl:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;->mListener:Lio/ticofab/androidgpxparser/parser/task/GpxFetchedAndParsed;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lio/ticofab/androidgpxparser/parser/domain/Gpx;
    .locals 1

    .line 31
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;->mGpxUrl:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 33
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    iget-object p1, p0, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;->mParser:Lio/ticofab/androidgpxparser/parser/GPXParser;

    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/GPXParser;->parse(Ljava/io/InputStream;)Lio/ticofab/androidgpxparser/parser/domain/Gpx;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 36
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;->doInBackground([Ljava/lang/Void;)Lio/ticofab/androidgpxparser/parser/domain/Gpx;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lio/ticofab/androidgpxparser/parser/domain/Gpx;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;->mListener:Lio/ticofab/androidgpxparser/parser/task/GpxFetchedAndParsed;

    invoke-interface {v0, p1}, Lio/ticofab/androidgpxparser/parser/task/GpxFetchedAndParsed;->onGpxFetchedAndParsed(Lio/ticofab/androidgpxparser/parser/domain/Gpx;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lio/ticofab/androidgpxparser/parser/domain/Gpx;

    invoke-virtual {p0, p1}, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;->onPostExecute(Lio/ticofab/androidgpxparser/parser/domain/Gpx;)V

    return-void
.end method
