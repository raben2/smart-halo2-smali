.class public Lcom/instabug/library/network/e/a;
.super Ljava/lang/Object;
.source "FeaturesService.java"


# static fields
.field private static volatile c:Lcom/instabug/library/network/e/a;


# instance fields
.field private final a:Lcom/instabug/library/util/TaskDebouncer;

.field private b:Lcom/instabug/library/network/NetworkManager;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/network/NetworkManager;

    invoke-direct {v0}, Lcom/instabug/library/network/NetworkManager;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/network/e/a;->b:Lcom/instabug/library/network/NetworkManager;

    .line 3
    new-instance v0, Lcom/instabug/library/util/TaskDebouncer;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/util/TaskDebouncer;-><init>(J)V

    iput-object v0, p0, Lcom/instabug/library/network/e/a;->a:Lcom/instabug/library/util/TaskDebouncer;

    return-void
.end method

.method public static a()Lcom/instabug/library/network/e/a;
    .locals 1

    .line 3
    sget-object v0, Lcom/instabug/library/network/e/a;->c:Lcom/instabug/library/network/e/a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/instabug/library/network/e/a;

    invoke-direct {v0}, Lcom/instabug/library/network/e/a;-><init>()V

    sput-object v0, Lcom/instabug/library/network/e/a;->c:Lcom/instabug/library/network/e/a;

    .line 6
    :cond_0
    sget-object v0, Lcom/instabug/library/network/e/a;->c:Lcom/instabug/library/network/e/a;

    return-object v0
.end method

.method private a(Lcom/instabug/library/network/RequestResponse;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseCode()I

    move-result v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppFeatures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FeaturesService"

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 p1, 0x130

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught unhandled case with code ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FeaturesService"

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string p1, "FeaturesService"

    const-string v0, "Features list did not get modified. Moving on..."

    .line 42
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 47
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "ttl"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v3, "If-Match"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 50
    new-instance v3, Lcom/instabug/library/model/b;

    const-string v4, "10.1.0"

    invoke-direct {v3, v1, v2, v4, p1}, Lcom/instabug/library/model/b;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/instabug/library/settings/SettingsManager;->setFeaturesCache(Lcom/instabug/library/model/b;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cache features settings due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FeaturesService"

    invoke-static {v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/instabug/library/network/e/a;Lcom/instabug/library/network/RequestResponse;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/network/e/a;->a(Lcom/instabug/library/network/RequestResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/library/network/e/a;Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/network/e/a;->b(Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "FeaturesService"

    const-string v1, "Getting enabled features for this application"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/network/e/a;->b:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {p0, p1, v0}, Lcom/instabug/library/network/e/a;->a(Landroid/content/Context;Lcom/instabug/library/network/NetworkManager;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/network/e/a;->b:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/a$b;

    invoke-direct {v0, p0, p2}, Lcom/instabug/library/network/e/a$b;-><init>(Lcom/instabug/library/network/e/a;Lcom/instabug/library/network/Request$Callbacks;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-interface {p2, p1}, Lcom/instabug/library/network/Request$Callbacks;->onFailed(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/instabug/library/network/NetworkManager;)Lcom/instabug/library/network/Request;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/instabug/library/network/Request$Endpoint;->APP_SETTINGS:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v1, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {p2, p1, v0, v1}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/settings/SettingsManager;->getFeaturesCache()Lcom/instabug/library/model/b;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/instabug/library/model/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/instabug/library/model/b;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 13
    new-instance v0, Lcom/instabug/library/network/Request$RequestParameter;

    const-string v1, "If-Match"

    invoke-direct {v0, v1, p2}, Lcom/instabug/library/network/Request$RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/instabug/library/network/Request;->addHeader(Lcom/instabug/library/network/Request$RequestParameter;)Lcom/instabug/library/network/Request;

    .line 17
    :cond_0
    new-instance p2, Lcom/instabug/library/network/Request$RequestParameter;

    .line 18
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getAppToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IBG-APP-TOKEN"

    invoke-direct {p2, v1, v0}, Lcom/instabug/library/network/Request$RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1, p2}, Lcom/instabug/library/network/Request;->addHeader(Lcom/instabug/library/network/Request$RequestParameter;)Lcom/instabug/library/network/Request;

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/instabug/library/network/e/a;->a:Lcom/instabug/library/util/TaskDebouncer;

    new-instance v1, Lcom/instabug/library/network/e/a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/instabug/library/network/e/a$a;-><init>(Lcom/instabug/library/network/e/a;Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/TaskDebouncer;->debounce(Ljava/lang/Runnable;)V

    return-void
.end method
