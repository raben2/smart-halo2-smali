.class public interface abstract Lbike/smarthalo/app/managers/contracts/LifetimeMetricsManagerContract;
.super Ljava/lang/Object;
.source "LifetimeMetricsManagerContract.java"


# virtual methods
.method public abstract getLifetimeMetrics(Ljava/util/List;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/LifetimeMetrics;",
            ">;"
        }
    .end annotation
.end method
