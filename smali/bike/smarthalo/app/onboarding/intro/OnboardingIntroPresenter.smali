.class public final Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenter;
.super Ljava/lang/Object;
.source "OnboardingIntroPresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000b\u001a\u00020\tH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenter;",
        "Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;",
        "onboardingCoordinatorContract",
        "Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;",
        "(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;)V",
        "getOnboardingCoordinatorContract",
        "()Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;",
        "setOnboardingCoordinatorContract",
        "login",
        "",
        "onStart",
        "onStop",
        "signup",
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
.field private onboardingCoordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onboardingCoordinatorContract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenter;->onboardingCoordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    return-void
.end method


# virtual methods
.method public final getOnboardingCoordinatorContract()Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenter;->onboardingCoordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    return-object v0
.end method

.method public login()V
    .locals 1

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenter;->onboardingCoordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;->showLogin()V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public final setOnboardingCoordinatorContract(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenter;->onboardingCoordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    return-void
.end method

.method public signup()V
    .locals 1

    .line 17
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenter;->onboardingCoordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;->showSignUp()V

    return-void
.end method
