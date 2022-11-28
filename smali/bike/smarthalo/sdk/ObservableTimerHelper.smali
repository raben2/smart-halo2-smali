.class public Lbike/smarthalo/sdk/ObservableTimerHelper;
.super Ljava/lang/Object;
.source "ObservableTimerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObservableTimer(JJLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;
    .locals 3
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    :cond_0
    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    move-wide p2, v0

    .line 33
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    invoke-static {p0, p1, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lbike/smarthalo/sdk/-$$Lambda$ObservableTimerHelper$iaJ5JVaBq13_TQyyUmpNzc9Coao;

    invoke-direct {p1, p4}, Lbike/smarthalo/sdk/-$$Lambda$ObservableTimerHelper$iaJ5JVaBq13_TQyyUmpNzc9Coao;-><init>(Ljava/lang/Runnable;)V

    .line 35
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p0

    .line 41
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-static {p2, p3, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/sdk/-$$Lambda$ObservableTimerHelper$DHxOfYNNYVcWJC6gc3GG-bCbE-k;

    invoke-direct {p2, p5}, Lbike/smarthalo/sdk/-$$Lambda$ObservableTimerHelper$DHxOfYNNYVcWJC6gc3GG-bCbE-k;-><init>(Ljava/lang/Runnable;)V

    .line 43
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    .line 51
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;
    .locals 6
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    move-wide v2, p0

    move-object v5, p2

    .line 22
    invoke-static/range {v0 .. v5}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JJLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;
    .locals 6
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 26
    invoke-static/range {v0 .. v5}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JJLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getTimerOnMainThread(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-static {p0, p1, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p0

    .line 18
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getObservableTimer$0(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getObservableTimer$1(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
