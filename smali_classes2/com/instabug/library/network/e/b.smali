.class public Lcom/instabug/library/network/e/b;
.super Ljava/lang/Object;
.source "FilesService.java"


# static fields
.field private static b:Lcom/instabug/library/network/e/b;


# instance fields
.field private a:Lcom/instabug/library/network/NetworkManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/network/NetworkManager;

    invoke-direct {v0}, Lcom/instabug/library/network/NetworkManager;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/network/e/b;->a:Lcom/instabug/library/network/NetworkManager;

    return-void
.end method

.method public static a()Lcom/instabug/library/network/e/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/network/e/b;->b:Lcom/instabug/library/network/e/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/network/e/b;

    invoke-direct {v0}, Lcom/instabug/library/network/e/b;-><init>()V

    sput-object v0, Lcom/instabug/library/network/e/b;->b:Lcom/instabug/library/network/e/b;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/network/e/b;->b:Lcom/instabug/library/network/e/b;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/model/AssetEntity;)Lcom/instabug/library/network/Request;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p3}, Lcom/instabug/library/model/AssetEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    sget-object v3, Lcom/instabug/library/network/NetworkManager$RequestType;->FILE_DOWNLOAD:Lcom/instabug/library/network/NetworkManager$RequestType;

    invoke-virtual {p2, p1, v1, v2, v3}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/network/Request$RequestMethod;Lcom/instabug/library/network/NetworkManager$RequestType;)Lcom/instabug/library/network/Request;

    move-result-object v0

    .line 16
    invoke-virtual {p3}, Lcom/instabug/library/model/AssetEntity;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/library/network/Request;->setDownloadedFile(Ljava/lang/String;)Lcom/instabug/library/network/Request;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "create downloadFile request got error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FilesService"

    invoke-static {p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/network/Request$Callbacks;)Lio/reactivex/observers/DisposableObserver;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/library/model/AssetEntity;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Lcom/instabug/library/model/AssetEntity;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/observers/DisposableObserver<",
            "Lcom/instabug/library/network/RequestResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "FilesService"

    const-string v1, "Downloading file request"

    .line 5
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/network/e/b;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {p0, p1, v0, p2}, Lcom/instabug/library/network/e/b;->a(Landroid/content/Context;Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/model/AssetEntity;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/instabug/library/network/e/b;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    .line 11
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 12
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/b$a;

    invoke-direct {v0, p0, p3, p2}, Lcom/instabug/library/network/e/b$a;-><init>(Lcom/instabug/library/network/e/b;Lcom/instabug/library/network/Request$Callbacks;Lcom/instabug/library/model/AssetEntity;)V

    .line 13
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p1

    check-cast p1, Lio/reactivex/observers/DisposableObserver;

    return-object p1
.end method
