.class public Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;
.super Ljava/lang/Object;
.source "SDKCoreEventSubscriber.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObservable()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;->getInstance()Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;

    move-result-object v0

    const-class v1, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->observeEvents(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;->getInstance()Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method
