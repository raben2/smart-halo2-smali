.class public interface abstract Lbike/smarthalo/app/profile/ProfilePresenterContract;
.super Ljava/lang/Object;
.source "ProfilePresenterContract.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0006H&J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u0006H&J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\tH&J\u0008\u0010\u0011\u001a\u00020\u0006H&J\u0008\u0010\u0012\u001a\u00020\u0006H&J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH&\u00a8\u0006\u0014"
    }
    d2 = {
        "Lbike/smarthalo/app/profile/ProfilePresenterContract;",
        "",
        "getObservableViewState",
        "Lio/reactivex/Flowable;",
        "Lbike/smarthalo/app/profile/ProfileViewState;",
        "onBirthdateSelected",
        "",
        "onFirstNameTextChanged",
        "firstName",
        "",
        "onGenderSelected",
        "onHeightMetricChanged",
        "isMetric",
        "",
        "onHeightSelected",
        "onLastNameTextChanged",
        "lastName",
        "onSaveClicked",
        "onWeightSelected",
        "onWeightUnitChanged",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getObservableViewState()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/profile/ProfileViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onBirthdateSelected()V
.end method

.method public abstract onFirstNameTextChanged(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onGenderSelected()V
.end method

.method public abstract onHeightMetricChanged(Z)V
.end method

.method public abstract onHeightSelected()V
.end method

.method public abstract onLastNameTextChanged(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSaveClicked()V
.end method

.method public abstract onWeightSelected()V
.end method

.method public abstract onWeightUnitChanged(Z)V
.end method
