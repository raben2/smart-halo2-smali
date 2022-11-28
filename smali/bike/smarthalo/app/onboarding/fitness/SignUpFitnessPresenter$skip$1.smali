.class final Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$skip$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SignUpFitnessPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->skip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$skip$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$skip$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 97
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$skip$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$getCoordinatorContract$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;->onFitnessCompleted()V

    return-void
.end method
