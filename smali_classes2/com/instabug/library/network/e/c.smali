.class public Lcom/instabug/library/network/e/c;
.super Ljava/lang/Object;
.source "MigrateUUIDService.java"


# static fields
.field private static b:Lcom/instabug/library/network/e/c;


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

    iput-object v0, p0, Lcom/instabug/library/network/e/c;->a:Lcom/instabug/library/network/NetworkManager;

    return-void
.end method

.method public static declared-synchronized a()Lcom/instabug/library/network/e/c;
    .locals 3

    const-class v0, Lcom/instabug/library/network/e/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/network/e/c;->b:Lcom/instabug/library/network/e/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/network/e/c;

    invoke-direct {v1}, Lcom/instabug/library/network/e/c;-><init>()V

    sput-object v1, Lcom/instabug/library/network/e/c;->b:Lcom/instabug/library/network/e/c;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/instabug/library/network/e/c;->a(Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;)V

    .line 5
    :cond_0
    sget-object v1, Lcom/instabug/library/network/e/c;->b:Lcom/instabug/library/network/e/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/instabug/library/network/NetworkManager;Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/network/Request;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/instabug/library/network/Request$Endpoint;->MIGRATE_UUID:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v1, Lcom/instabug/library/network/Request$RequestMethod;->put:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {p2, p1, v0, v1}, Lcom/instabug/library/network/NetworkManager;->buildRequestWithoutUUID(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object p1

    const-string p2, "old_uuid"

    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "new_uuid"

    .line 44
    invoke-virtual {p1, p2, p4}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/settings/SettingsManager;->getAppToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application_token"

    invoke-virtual {p1, p3, p2}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lcom/instabug/library/user/b;->f()Ljava/lang/String;

    move-result-object p2

    const-string p3, "name"

    invoke-virtual {p1, p3, p2}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/instabug/library/user/b;->e()Ljava/lang/String;

    move-result-object p2

    const-string p3, "email"

    invoke-virtual {p1, p3, p2}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/instabug/library/network/e/c;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/instabug/library/network/e/c;->a(Landroid/content/Context;Lcom/instabug/library/network/NetworkManager;Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/instabug/library/network/e/c;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {p2, p1}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    .line 10
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/instabug/library/network/e/c$b;

    invoke-direct {p2, p0, p4}, Lcom/instabug/library/network/e/c$b;-><init>(Lcom/instabug/library/network/e/c;Lcom/instabug/library/network/Request$Callbacks;)V

    .line 13
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/instabug/library/network/e/c$a;

    invoke-direct {p2, p0, p4}, Lcom/instabug/library/network/e/c$a;-><init>(Lcom/instabug/library/network/e/c;Lcom/instabug/library/network/Request$Callbacks;)V

    .line 41
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;)V
    .locals 1
    .param p1    # Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/instabug/library/network/e/c;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/instabug/library/network/NetworkManager;->setOnDoRequestListener(Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;)V

    return-void
.end method
