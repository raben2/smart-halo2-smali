.class public Lcom/instabug/library/analytics/util/c;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "AnalyticsStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public static a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/util/b;->getInstance()Lcom/instabug/library/analytics/util/b;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->observeEvents(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
