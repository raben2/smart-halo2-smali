.class public interface abstract Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
.super Ljava/lang/Object;
.source "PG"


# virtual methods
.method public abstract onError(Lcom/google/android/gms/common/api/Status;)V
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onPlaceSelected(Lcom/google/android/libraries/places/api/model/Place;)V
    .param p1    # Lcom/google/android/libraries/places/api/model/Place;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
