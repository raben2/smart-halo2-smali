.class public Lcom/instabug/library/networkv2/request/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/networkv2/request/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bodyParameters:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/networkv2/request/RequestParameter;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedFile:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endpoint:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fileToUpload:Lcom/instabug/library/networkv2/request/FileToUpload;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private headers:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/networkv2/request/RequestParameter<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shorten:Z

.field private type:I

.field private urlParameters:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/networkv2/request/RequestParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->type:I

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->requestUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/instabug/library/networkv2/request/Request$Builder;Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->setBodyParameter(Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/instabug/library/networkv2/request/Request$Builder;Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->setUrlParameter(Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/instabug/library/networkv2/request/Request$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->type:I

    return p0
.end method

.method static synthetic access$300(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/instabug/library/networkv2/request/Request$Builder;)Lcom/instabug/library/networkv2/request/FileToUpload;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->fileToUpload:Lcom/instabug/library/networkv2/request/FileToUpload;

    return-object p0
.end method

.method static synthetic access$500(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->downloadedFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$600(Lcom/instabug/library/networkv2/request/Request$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->shorten:Z

    return p0
.end method

.method static synthetic access$700(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->urlParameters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->bodyParameters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/instabug/library/networkv2/request/Request$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->headers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addBodyParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->bodyParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->bodyParameters:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->bodyParameters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private addUrlParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->urlParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->urlParameters:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->urlParameters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private setBodyParameter(Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter;",
            ">;)",
            "Lcom/instabug/library/networkv2/request/Request$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->bodyParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->bodyParameters:Ljava/util/ArrayList;

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->bodyParameters:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setUrlParameter(Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter;",
            ">;)",
            "Lcom/instabug/library/networkv2/request/Request$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->urlParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->urlParameters:Ljava/util/ArrayList;

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->urlParameters:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addHeader(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/networkv2/request/RequestParameter<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/instabug/library/networkv2/request/Request$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->headers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->headers:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->method:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "GET"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->method:Ljava/lang/String;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->addBodyParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->addUrlParameter(Lcom/instabug/library/networkv2/request/RequestParameter;)Lcom/instabug/library/networkv2/request/Request$Builder;

    :cond_2
    :goto_1
    return-object p0
.end method

.method public build()Lcom/instabug/library/networkv2/request/Request;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/networkv2/request/Request;

    invoke-direct {v0, p0}, Lcom/instabug/library/networkv2/request/Request;-><init>(Lcom/instabug/library/networkv2/request/Request$Builder;)V

    return-object v0
.end method

.method public endpoint(Ljava/lang/String;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public fileToDownload(Ljava/io/File;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->downloadedFile:Ljava/io/File;

    return-object p0
.end method

.method public fileToUpload(Lcom/instabug/library/networkv2/request/FileToUpload;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 0
    .param p1    # Lcom/instabug/library/networkv2/request/FileToUpload;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->fileToUpload:Lcom/instabug/library/networkv2/request/FileToUpload;

    return-object p0
.end method

.method public method(Ljava/lang/String;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setHeaders(Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/instabug/library/networkv2/request/Request$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->headers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setParameter(Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/networkv2/request/RequestParameter;",
            ">;)",
            "Lcom/instabug/library/networkv2/request/Request$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->method:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "GET"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->method:Ljava/lang/String;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->setBodyParameter(Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/instabug/library/networkv2/request/Request$Builder;->setUrlParameter(Ljava/util/List;)Lcom/instabug/library/networkv2/request/Request$Builder;

    :cond_2
    :goto_1
    return-object p0
.end method

.method public shorten(Z)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->shorten:Z

    return-object p0
.end method

.method public type(I)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->type:I

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/instabug/library/networkv2/request/Request$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/networkv2/request/Request$Builder;->requestUrl:Ljava/lang/String;

    return-object p0
.end method
