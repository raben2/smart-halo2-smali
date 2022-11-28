.class public Lbike/smarthalo/app/tasks/ImageLoadingTask;
.super Ljava/lang/Object;
.source "ImageLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;
    }
.end annotation


# instance fields
.field private connection:Ljava/net/HttpURLConnection;

.field private inputStream:Ljava/io/InputStream;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->url:Ljava/lang/String;

    return-void
.end method

.method private clearComponents()V
    .locals 2

    .line 57
    const-class v0, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clearing components"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 61
    iput-object v1, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->connection:Ljava/net/HttpURLConnection;

    .line 64
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 66
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 67
    iput-object v1, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$OCKm2RizlfIUVhsvUOgGsHfIpuE(Lbike/smarthalo/app/tasks/ImageLoadingTask;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/tasks/ImageLoadingTask;->clearComponents()V

    return-void
.end method

.method public static synthetic lambda$getTaskObservable$0(Lbike/smarthalo/app/tasks/ImageLoadingTask;)Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->connection:Ljava/net/HttpURLConnection;

    .line 40
    iget-object v0, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->inputStream:Ljava/io/InputStream;

    .line 41
    iget-object v0, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    new-instance v1, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;

    invoke-direct {v1, p0, v0}, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;-><init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-direct {p0}, Lbike/smarthalo/app/tasks/ImageLoadingTask;->clearComponents()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 44
    :catch_0
    :try_start_1
    new-instance v0, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;-><init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-direct {p0}, Lbike/smarthalo/app/tasks/ImageLoadingTask;->clearComponents()V

    return-object v0

    :goto_0
    invoke-direct {p0}, Lbike/smarthalo/app/tasks/ImageLoadingTask;->clearComponents()V

    .line 47
    throw v0
.end method

.method public static synthetic lambda$getTaskObservable$1(Lbike/smarthalo/app/tasks/ImageLoadingTask;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lbike/smarthalo/app/tasks/ImageLoadingTask;->clearComponents()V

    return-void
.end method

.method public static synthetic lambda$getTaskObservable$2(Lbike/smarthalo/app/tasks/ImageLoadingTask;Ljava/lang/Throwable;)Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    new-instance p1, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;-><init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;Landroid/graphics/Bitmap;)V

    return-object p1
.end method


# virtual methods
.method public getTaskObservable()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$A_-uREiIopc28bRvSFyhXZ8qeRA;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$A_-uREiIopc28bRvSFyhXZ8qeRA;-><init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;)V

    .line 36
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$OCKm2RizlfIUVhsvUOgGsHfIpuE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$OCKm2RizlfIUVhsvUOgGsHfIpuE;-><init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;)V

    .line 49
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$zCX44stLmIPkFK8JQY7ejsg3cpo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$zCX44stLmIPkFK8JQY7ejsg3cpo;-><init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;)V

    .line 50
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$fXYeNfTa-wn2fZiwHD1NA6FiMMg;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$fXYeNfTa-wn2fZiwHD1NA6FiMMg;-><init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;)V

    .line 51
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 52
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 53
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
