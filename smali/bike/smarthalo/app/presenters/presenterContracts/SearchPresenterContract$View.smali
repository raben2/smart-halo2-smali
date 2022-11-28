.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;
.super Ljava/lang/Object;
.source "SearchPresenterContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onError()V
.end method

.method public abstract onSearchResultReady(Lbike/smarthalo/app/models/SHLocation;)V
.end method

.method public abstract updateSearchResults(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;Z)V"
        }
    .end annotation
.end method
