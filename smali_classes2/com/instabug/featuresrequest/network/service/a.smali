.class public Lcom/instabug/featuresrequest/network/service/a;
.super Ljava/lang/Object;
.source "AddNewFeatureService.java"


# static fields
.field private static volatile b:Lcom/instabug/featuresrequest/network/service/a;


# instance fields
.field private a:Lcom/instabug/library/network/NetworkManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/instabug/featuresrequest/network/service/a;->b:Lcom/instabug/featuresrequest/network/service/a;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/instabug/library/network/NetworkManager;

    invoke-direct {v0}, Lcom/instabug/library/network/NetworkManager;-><init>()V

    iput-object v0, p0, Lcom/instabug/featuresrequest/network/service/a;->a:Lcom/instabug/library/network/NetworkManager;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use getInstance() method to get the single instance of this class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lcom/instabug/featuresrequest/network/service/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/network/service/a;->b:Lcom/instabug/featuresrequest/network/service/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/instabug/featuresrequest/network/service/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/instabug/featuresrequest/network/service/a;->b:Lcom/instabug/featuresrequest/network/service/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/instabug/featuresrequest/network/service/a;

    invoke-direct {v1}, Lcom/instabug/featuresrequest/network/service/a;-><init>()V

    sput-object v1, Lcom/instabug/featuresrequest/network/service/a;->b:Lcom/instabug/featuresrequest/network/service/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/instabug/featuresrequest/network/service/a;->b:Lcom/instabug/featuresrequest/network/service/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/instabug/featuresrequest/d/b;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/featuresrequest/d/b;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "AddNewFeatureService"

    const-string v1, "Sending new feature"

    .line 8
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/instabug/featuresrequest/network/service/a;->a:Lcom/instabug/library/network/NetworkManager;

    sget-object v1, Lcom/instabug/library/network/Request$Endpoint;->ADD_NEW_FEATURE:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Lcom/instabug/featuresrequest/d/b;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p2}, Lcom/instabug/featuresrequest/d/b;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p2}, Lcom/instabug/featuresrequest/d/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push_token"

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p2}, Lcom/instabug/featuresrequest/d/b;->h()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "feature_request"

    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object p2, p0, Lcom/instabug/featuresrequest/network/service/a;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {p2, p1}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/instabug/featuresrequest/network/service/a$a;

    invoke-direct {p2, p0, p3}, Lcom/instabug/featuresrequest/network/service/a$a;-><init>(Lcom/instabug/featuresrequest/network/service/a;Lcom/instabug/library/network/Request$Callbacks;)V

    .line 23
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
