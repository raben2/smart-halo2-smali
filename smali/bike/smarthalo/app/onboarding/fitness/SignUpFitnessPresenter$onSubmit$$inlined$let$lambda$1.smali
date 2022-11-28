.class final Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SignUpFitnessPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->onSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lbike/smarthalo/app/models/GenericResponse<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lbike/smarthalo/app/models/GenericResponse;",
        "",
        "kotlin.jvm.PlatformType",
        "accept",
        "bike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$1$1"
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

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "ok"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Success:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->setConfirmButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 74
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$onSuccess(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->setConfirmButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 77
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$getCoordinatorContract$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    move-result-object p1

    const v0, 0x7f11017d

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;->showError(I)V

    .line 79
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$getCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;->accept(Lbike/smarthalo/app/models/GenericResponse;)V

    return-void
.end method
