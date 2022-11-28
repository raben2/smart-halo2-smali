.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;
.super Ljava/lang/Object;
.source "SearchPresenterContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getCurrentQuery()Ljava/lang/String;
.end method

.method public abstract onSearchResultClicked(Lbike/smarthalo/app/models/SHLocation;)V
.end method

.method public abstract resetResultsList()V
.end method

.method public abstract setFavouritesController(Lbike/smarthalo/app/coordinators/FavouritesController;)V
.end method

.method public abstract setQuerySource(Lio/reactivex/Flowable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
