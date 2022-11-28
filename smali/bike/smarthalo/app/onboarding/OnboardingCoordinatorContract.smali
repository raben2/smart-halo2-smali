.class public interface abstract Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;
.super Ljava/lang/Object;
.source "OnboardingCoordinatorContract.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J3\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072!\u0010\u0008\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u00030\tH&JB\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112!\u0010\u0012\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00030\tH&\u00a2\u0006\u0002\u0010\u0014JB\u0010\u0015\u001a\u00020\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0010\u001a\u00020\u00112!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00030\tH&\u00a2\u0006\u0002\u0010\u001aJ.\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000f2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030 H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u000fH&J\u0008\u0010#\u001a\u00020\u0003H&J\u0008\u0010$\u001a\u00020\u0003H&\u00a8\u0006%"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;",
        "",
        "onComplete",
        "",
        "onFitnessCompleted",
        "pickGender",
        "currentGender",
        "Lbike/smarthalo/app/models/userModels/Gender;",
        "onGenderPicked",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "selectedGender",
        "pickHeight",
        "currentHeight",
        "",
        "isMetric",
        "",
        "onHeightPicked",
        "height",
        "(Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V",
        "pickWeight",
        "currentWeight",
        "",
        "onWeightPicked",
        "weight",
        "(Ljava/lang/Double;ZLkotlin/jvm/functions/Function1;)V",
        "showConfirmation",
        "description",
        "affirmative",
        "negative",
        "onConfirm",
        "Lkotlin/Function0;",
        "showError",
        "descriptionResource",
        "showLogin",
        "showSignUp",
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
.method public abstract onComplete()V
.end method

.method public abstract onFitnessCompleted()V
.end method

.method public abstract pickGender(Lbike/smarthalo/app/models/userModels/Gender;Lkotlin/jvm/functions/Function1;)V
    .param p1    # Lbike/smarthalo/app/models/userModels/Gender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/userModels/Gender;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lbike/smarthalo/app/models/userModels/Gender;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pickHeight(Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pickWeight(Ljava/lang/Double;ZLkotlin/jvm/functions/Function1;)V
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showConfirmation(IIILkotlin/jvm/functions/Function0;)V
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showError(I)V
.end method

.method public abstract showLogin()V
.end method

.method public abstract showSignUp()V
.end method
