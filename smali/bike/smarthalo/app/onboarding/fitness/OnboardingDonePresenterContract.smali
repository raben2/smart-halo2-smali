.class public interface abstract Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;
.super Ljava/lang/Object;
.source "OnboardingDonePresenterContract.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;",
        "",
        "observeButtonState",
        "Lio/reactivex/Flowable;",
        "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        "onSubmit",
        "",
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
.method public abstract observeButtonState()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onSubmit()V
.end method
