.class public Lcom/instabug/library/network/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/network/Request$Callbacks;,
        Lcom/instabug/library/network/Request$FileToUpload;,
        Lcom/instabug/library/network/Request$RequestParameter;,
        Lcom/instabug/library/network/Request$RequestMethod;,
        Lcom/instabug/library/network/Request$Endpoint;
    }
.end annotation


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://api.instabug.com/api/sdk/v3"

.field public static final BASIC_AUTH_VALUE_PREFIX:Ljava/lang/String; = "Basic "

.field public static final PRODUCTION_LOGS_URL:Ljava/lang/String; = "https://api.instabug.com/sdklogs/upload"

.field private static final TAG:Ljava/lang/String; = "Request"

.field private static final announcementVersion:Ljava/lang/String; = "v2"

.field private static final surveysVersion:Ljava/lang/String; = "v7"


# instance fields
.field private bodyParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedFile:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endPoint:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fileToUpload:Lcom/instabug/library/network/Request$FileToUpload;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation
.end field

.field private requestMethod:Lcom/instabug/library/network/Request$RequestMethod;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestType:Lcom/instabug/library/network/NetworkManager$RequestType;

.field private requestUrl:Ljava/lang/String;

.field private urlParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/NetworkManager$RequestType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/network/Request$Endpoint;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/network/Request;->endPoint:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://api.instabug.com/api/sdk/v3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/library/network/Request;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/network/Request;->requestUrl:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/instabug/library/network/Request;->requestType:Lcom/instabug/library/network/NetworkManager$RequestType;

    .line 5
    invoke-direct {p0}, Lcom/instabug/library/network/Request;->initialize()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/instabug/library/network/NetworkManager$RequestType;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/instabug/library/network/Request;->requestUrl:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/instabug/library/network/Request;->requestType:Lcom/instabug/library/network/NetworkManager$RequestType;

    .line 9
    invoke-direct {p0}, Lcom/instabug/library/network/Request;->initialize()V

    return-void
.end method

.method private getUrlEncodedParameters()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/instabug/library/network/Request;->urlParameters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/network/Request$RequestParameter;

    .line 3
    invoke-virtual {v2}, Lcom/instabug/library/network/Request$RequestParameter;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/instabug/library/network/Request$RequestParameter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/instabug/library/network/Request$RequestParameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/network/Request;->urlParameters:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/network/Request;->bodyParameters:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/network/Request;->headers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addHeader(Lcom/instabug/library/network/Request$RequestParameter;)Lcom/instabug/library/network/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->requestMethod:Lcom/instabug/library/network/Request$RequestMethod;

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/network/Request;->requestMethod:Lcom/instabug/library/network/Request$RequestMethod;

    sget-object v1, Lcom/instabug/library/network/Request$RequestMethod;->Delete:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/network/Request;->addRequestUrlParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->bodyParameters:Ljava/util/ArrayList;

    new-instance v1, Lcom/instabug/library/network/Request$RequestParameter;

    invoke-direct {v1, p1, p2}, Lcom/instabug/library/network/Request$RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRequestUrlParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->urlParameters:Ljava/util/ArrayList;

    new-instance v1, Lcom/instabug/library/network/Request$RequestParameter;

    invoke-direct {v1, p1, p2}, Lcom/instabug/library/network/Request$RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearRequestBodyParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->bodyParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/network/Request;->bodyParameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public clearRequestUrlParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->urlParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/network/Request;->urlParameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDownloadedFile()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->downloadedFile:Ljava/io/File;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->endPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getFileToUpload()Lcom/instabug/library/network/Request$FileToUpload;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->fileToUpload:Lcom/instabug/library/network/Request$FileToUpload;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/network/Request;->getRequestBodyParameters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/network/Request$RequestParameter;

    .line 4
    invoke-virtual {v2}, Lcom/instabug/library/network/Request$RequestParameter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/instabug/library/network/Request$RequestParameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 8
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v2, "Request"

    const-string v3, "OOM Exception trying to remove large logs..."

    .line 9
    invoke-static {v2, v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    const-string v2, "console_log"

    .line 13
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "instabug_log"

    .line 14
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "network_log"

    .line 15
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    const-string v2, "Request"

    const-string v3, "Failed to resolve OOM, returning empty request body"

    .line 18
    invoke-static {v2, v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getRequestBodyParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->bodyParameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->requestMethod:Lcom/instabug/library/network/Request$RequestMethod;

    return-object v0
.end method

.method public getRequestType()Lcom/instabug/library/network/NetworkManager$RequestType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->requestType:Lcom/instabug/library/network/NetworkManager$RequestType;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/network/Request;->getUrlEncodedParameters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/network/Request;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/instabug/library/network/Request;->getUrlEncodedParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/network/Request;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrlParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->urlParameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isMultiPartRequest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->fileToUpload:Lcom/instabug/library/network/Request$FileToUpload;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDownloadedFile(Ljava/lang/String;)Lcom/instabug/library/network/Request;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instabug/library/network/Request;->downloadedFile:Ljava/io/File;

    return-object p0
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/Request;->endPoint:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://api.instabug.com/api/sdk/v3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/library/network/Request;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/network/Request;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileToUpload(Lcom/instabug/library/network/Request$FileToUpload;)Lcom/instabug/library/network/Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/Request;->fileToUpload:Lcom/instabug/library/network/Request$FileToUpload;

    return-object p0
.end method

.method public setRequestBodyParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/Request;->bodyParameters:Ljava/util/ArrayList;

    return-object p1
.end method

.method public setRequestMethod(Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/Request;->requestMethod:Lcom/instabug/library/network/Request$RequestMethod;

    return-object p0
.end method

.method public setRequestUrlParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/network/Request$RequestParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/Request;->urlParameters:Ljava/util/ArrayList;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request;->requestMethod:Lcom/instabug/library/network/Request$RequestMethod;

    sget-object v1, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/network/Request;->requestMethod:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/network/Request;->requestMethod:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | Body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/library/network/Request;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
