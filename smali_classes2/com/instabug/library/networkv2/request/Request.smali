.class public Lcom/instabug/library/networkv2/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/networkv2/request/Request$Builder;,
        Lcom/instabug/library/networkv2/request/Request$Callbacks;
    }
.end annotation


# static fields
.field private static final APP_TOKEN:Ljava/lang/String; = "application_token"

.field private static final SHORTEN_APP_TOKEN:Ljava/lang/String; = "at"

.field private static final SHORTEN_UUID:Ljava/lang/String; = "uid"

.field private static final TAG:Ljava/lang/String; = "Request"

.field private static final UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private final appTokenValue:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bodyParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadedFile:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endPoint:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fileToUpload:Lcom/instabug/library/networkv2/request/FileToUpload;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final requestMethod:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final requestType:I

.field private final requestUrl:Ljava/lang/String;

.field private final sdkVersionValue:Ljava/lang/String;

.field private final shorten:Z

.field private final urlParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final uuidValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/instabug/library/networkv2/request/Request$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getAppToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->appTokenValue:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->uuidValue:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->sdkVersionValue:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$000(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->endPoint:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$100(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$100(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.instabug.com/api/sdk/v3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->endPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->requestUrl:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$200(Lcom/instabug/library/networkv2/request/Request$Builder;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$200(Lcom/instabug/library/networkv2/request/Request$Builder;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/instabug/library/networkv2/request/Request;->requestType:I

    .line 27
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$300(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->requestMethod:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$400(Lcom/instabug/library/networkv2/request/Request$Builder;)Lcom/instabug/library/networkv2/request/FileToUpload;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->fileToUpload:Lcom/instabug/library/networkv2/request/FileToUpload;

    .line 29
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$500(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->downloadedFile:Ljava/io/File;

    .line 30
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$600(Lcom/instabug/library/networkv2/request/Request$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instabug/library/networkv2/request/Request;->shorten:Z

    .line 31
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$700(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$700(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->urlParameters:Ljava/util/List;

    .line 32
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$800(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$800(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->bodyParameters:Ljava/util/List;

    .line 33
    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$900(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$900(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    iput-object p1, p0, Lcom/instabug/library/networkv2/request/Request;->headers:Ljava/util/List;

    .line 34
    iget-boolean p1, p0, Lcom/instabug/library/networkv2/request/Request;->shorten:Z

    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/request/Request;->handleBaseParams(Z)V

    return-void
.end method

.method private addBodyParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->bodyParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->requestMethod:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "GET"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->requestMethod:Ljava/lang/String;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/request/Request;->addBodyParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/request/Request;->addUrlParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private addUrlParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->urlParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getUrlEncodedParameters()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/networkv2/request/a;->a()Lcom/instabug/library/networkv2/request/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->urlParameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/networkv2/request/RequestParameter;

    .line 3
    invoke-virtual {v2}, Lcom/instabug/library/networkv2/request/RequestParameter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/instabug/library/networkv2/request/RequestParameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/instabug/library/networkv2/request/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/networkv2/request/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBaseParams(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->headers:Ljava/util/List;

    new-instance v1, Lcom/instabug/library/networkv2/request/RequestParameter;

    iget-object v2, p0, Lcom/instabug/library/networkv2/request/Request;->sdkVersionValue:Ljava/lang/String;

    const-string v3, "IBG-SDK-VERSION"

    invoke-direct {v1, v3, v2}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/instabug/library/networkv2/request/Request;->appTokenValue:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 5
    new-instance v0, Lcom/instabug/library/networkv2/request/RequestParameter;

    const-string v1, "application_token"

    invoke-direct {v0, v1, p1}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/instabug/library/networkv2/request/Request;->addParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/networkv2/request/Request;->appTokenValue:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 9
    new-instance v0, Lcom/instabug/library/networkv2/request/RequestParameter;

    const-string v1, "at"

    invoke-direct {v0, v1, p1}, Lcom/instabug/library/networkv2/request/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/instabug/library/networkv2/request/Request;->addParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public builder()Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/library/networkv2/request/Request$Builder;

    invoke-direct {v0}, Lcom/instabug/library/networkv2/request/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->endPoint:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->endpoint(Ljava/lang/String;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->requestUrl:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->url(Ljava/lang/String;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->requestMethod:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->method(Ljava/lang/String;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lcom/instabug/library/networkv2/request/Request;->requestType:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->type(I)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/instabug/library/networkv2/request/Request;->shorten:Z

    .line 6
    invoke-virtual {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->shorten(Z)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->fileToUpload:Lcom/instabug/library/networkv2/request/FileToUpload;

    .line 7
    invoke-virtual {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->fileToUpload(Lcom/instabug/library/networkv2/request/FileToUpload;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->downloadedFile:Ljava/io/File;

    .line 8
    invoke-virtual {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->fileToDownload(Ljava/io/File;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->bodyParameters:Ljava/util/List;

    .line 9
    invoke-static {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$1000(Lcom/instabug/library/networkv2/request/Request$Builder;Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->urlParameters:Ljava/util/List;

    .line 10
    invoke-static {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->access$1100(Lcom/instabug/library/networkv2/request/Request$Builder;Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->headers:Ljava/util/List;

    .line 11
    invoke-virtual {v0, v1}, Lcom/instabug/library/networkv2/request/Request$Builder;->setHeaders(Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedFile()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->downloadedFile:Ljava/io/File;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->endPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getFileToUpload()Lcom/instabug/library/networkv2/request/FileToUpload;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->fileToUpload:Lcom/instabug/library/networkv2/request/FileToUpload;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->headers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestBodyParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/networkv2/request/RequestParameter;

    .line 4
    invoke-virtual {v2}, Lcom/instabug/library/networkv2/request/RequestParameter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/instabug/library/networkv2/request/RequestParameter;->getValue()Ljava/lang/Object;

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

    const-string v0, "{}"

    return-object v0
.end method

.method public getRequestBodyParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->bodyParameters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->requestMethod:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GET"

    :cond_0
    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/networkv2/request/Request;->requestType:I

    return v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/networkv2/request/Request;->getUrlEncodedParameters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/instabug/library/networkv2/request/Request;->getUrlEncodedParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrlParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->urlParameters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMultiPartRequest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->fileToUpload:Lcom/instabug/library/networkv2/request/FileToUpload;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request;->requestMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/networkv2/request/Request;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
