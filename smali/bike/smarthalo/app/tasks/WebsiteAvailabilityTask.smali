.class public Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;
.super Ljava/lang/Object;
.source "WebsiteAvailabilityTask.java"


# instance fields
.field client:Lokhttp3/OkHttpClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private response:Lokhttp3/Response;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->url:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private clearConnection()V
    .locals 1

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->response:Lokhttp3/Response;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getTaskObservable$0(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->url:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 51
    const-class v1, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Executing website request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->response:Lokhttp3/Response;

    .line 53
    iget-object v0, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-direct {p0}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->clearConnection()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 55
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-direct {p0}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->clearConnection()V

    return-object v0

    :goto_0
    invoke-direct {p0}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->clearConnection()V

    .line 58
    throw v0
.end method

.method public static synthetic lambda$vxVhVrI48zr_HB5gqKTqA_N3iPY(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->clearConnection()V

    return-void
.end method


# virtual methods
.method public getTaskObservable()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lbike/smarthalo/app/tasks/-$$Lambda$WebsiteAvailabilityTask$_al1JdsOUSEoVnJBPRpnCvkpAkY;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/tasks/-$$Lambda$WebsiteAvailabilityTask$_al1JdsOUSEoVnJBPRpnCvkpAkY;-><init>(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;)V

    .line 43
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/tasks/-$$Lambda$WebsiteAvailabilityTask$vxVhVrI48zr_HB5gqKTqA_N3iPY;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/tasks/-$$Lambda$WebsiteAvailabilityTask$vxVhVrI48zr_HB5gqKTqA_N3iPY;-><init>(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;)V

    .line 60
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v0

    .line 61
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 62
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
