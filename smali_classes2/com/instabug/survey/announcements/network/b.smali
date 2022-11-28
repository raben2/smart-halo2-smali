.class public Lcom/instabug/survey/announcements/network/b;
.super Ljava/lang/Object;
.source "AnnouncementsService.java"


# static fields
.field private static b:Lcom/instabug/survey/announcements/network/b;


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

    iput-object v0, p0, Lcom/instabug/survey/announcements/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    return-void
.end method

.method public static a()Lcom/instabug/survey/announcements/network/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/survey/announcements/network/b;->b:Lcom/instabug/survey/announcements/network/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/survey/announcements/network/b;

    invoke-direct {v0}, Lcom/instabug/survey/announcements/network/b;-><init>()V

    sput-object v0, Lcom/instabug/survey/announcements/network/b;->b:Lcom/instabug/survey/announcements/network/b;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/survey/announcements/network/b;->b:Lcom/instabug/survey/announcements/network/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/instabug/survey/d/c/a;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/survey/d/c/a;",
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

    const-string v0, "submitting announcement"

    .line 19
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/instabug/survey/announcements/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    sget-object v1, Lcom/instabug/library/network/Request$Endpoint;->SUBMIT_ANNOUNCEMENT:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/instabug/library/network/Request;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":announcement_id"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/network/Request;->setEndpoint(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/instabug/survey/announcements/network/a;->a(Lcom/instabug/library/network/Request;Ljava/lang/String;Lcom/instabug/survey/d/c/a;)V

    .line 25
    iget-object p1, p0, Lcom/instabug/survey/announcements/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {p1, v0}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/instabug/survey/announcements/network/b$b;

    invoke-direct {p2, p0, p3}, Lcom/instabug/survey/announcements/network/b$b;-><init>(Lcom/instabug/survey/announcements/network/b;Lcom/instabug/library/network/Request$Callbacks;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "fetch announcements"

    .line 5
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/survey/announcements/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    sget-object v1, Lcom/instabug/library/network/Request$Endpoint;->GET_ANNOUNCEMENTS:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object p1

    const-string v0, "locale"

    .line 10
    invoke-virtual {p1, v0, p2}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 12
    new-instance p2, Lcom/instabug/library/network/Request$RequestParameter;

    const-string v0, "Accept"

    const-string v1, "application/vnd.instabug.v2"

    invoke-direct {p2, v0, v1}, Lcom/instabug/library/network/Request$RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/instabug/library/network/Request;->addHeader(Lcom/instabug/library/network/Request$RequestParameter;)Lcom/instabug/library/network/Request;

    .line 14
    new-instance p2, Lcom/instabug/library/network/Request$RequestParameter;

    const-string v0, "version"

    const-string v1, "2"

    invoke-direct {p2, v0, v1}, Lcom/instabug/library/network/Request$RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/instabug/library/network/Request;->addHeader(Lcom/instabug/library/network/Request$RequestParameter;)Lcom/instabug/library/network/Request;

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AnnouncementsService"

    invoke-static {v0, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/instabug/survey/announcements/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {p2, p1}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/instabug/survey/announcements/network/b$a;

    invoke-direct {p2, p0, p3}, Lcom/instabug/survey/announcements/network/b$a;-><init>(Lcom/instabug/survey/announcements/network/b;Lcom/instabug/library/network/Request$Callbacks;)V

    .line 18
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
