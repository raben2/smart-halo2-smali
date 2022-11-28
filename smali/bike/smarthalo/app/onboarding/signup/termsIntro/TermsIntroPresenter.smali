.class public final Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenter;
.super Ljava/lang/Object;
.source "TermsIntroPresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenterContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenter;",
        "Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenterContract;",
        "signUpCoordinatorContract",
        "Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;",
        "(Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;)V",
        "showFullTerms",
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


# instance fields
.field private final signUpCoordinatorContract:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "signUpCoordinatorContract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenter;->signUpCoordinatorContract:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .line 10
    invoke-static {p0}, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenterContract$DefaultImpls;->onStart(Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenterContract;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 10
    invoke-static {p0}, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenterContract$DefaultImpls;->onStop(Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenterContract;)V

    return-void
.end method

.method public showFullTerms()V
    .locals 1

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenter;->signUpCoordinatorContract:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;->showTermsFull()V

    return-void
.end method
