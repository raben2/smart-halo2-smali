.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;
.super Ljava/lang/Object;
.source "DailyRidesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onAllRidesDeleted()V
.end method

.method public abstract showDailyRides(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showErrorMessage()V
.end method
