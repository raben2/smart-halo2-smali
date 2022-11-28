.class final Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onGenderSelected$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SignUpFitnessPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->onGenderSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lbike/smarthalo/app/models/userModels/Gender;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "gender",
        "Lbike/smarthalo/app/models/userModels/Gender;",
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

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onGenderSelected$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lbike/smarthalo/app/models/userModels/Gender;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onGenderSelected$1;->invoke(Lbike/smarthalo/app/models/userModels/Gender;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lbike/smarthalo/app/models/userModels/Gender;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/userModels/Gender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onGenderSelected$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->setGender(Lbike/smarthalo/app/models/userModels/Gender;)V

    .line 117
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onGenderSelected$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$getCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onGenderSelected$1;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
