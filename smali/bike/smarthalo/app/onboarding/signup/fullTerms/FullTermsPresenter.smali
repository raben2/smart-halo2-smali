.class public final Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenter;
.super Ljava/lang/Object;
.source "FullTermsPresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenterContract;
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenter;",
        "Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenterContract;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "signUpCoordinatorContract",
        "Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;",
        "(Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;)V",
        "acceptTerms",
        "",
        "declineTerms",
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

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenter;->signUpCoordinatorContract:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    return-void
.end method


# virtual methods
.method public acceptTerms()V
    .locals 1

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenter;->signUpCoordinatorContract:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;->acceptTerms()V

    return-void
.end method

.method public declineTerms()V
    .locals 1

    .line 17
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenter;->signUpCoordinatorContract:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;->declineTerms()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 10
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStart(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 10
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStop(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method
