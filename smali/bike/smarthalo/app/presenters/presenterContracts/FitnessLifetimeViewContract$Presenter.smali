.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;
.super Ljava/lang/Object;
.source "FitnessLifetimeViewContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onDispose()V
.end method

.method public abstract processLifetimeMetrics(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation
.end method
