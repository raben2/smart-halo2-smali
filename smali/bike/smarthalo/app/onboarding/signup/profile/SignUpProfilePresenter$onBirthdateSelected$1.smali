.class final Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SignUpProfilePresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->onBirthdateSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/Date;",
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
        "it",
        "Ljava/util/Date;",
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
.field final synthetic this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;->invoke(Ljava/util/Date;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/Date;)V
    .locals 2
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setBirthDate(Ljava/util/Date;)V

    .line 174
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getBirthDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/DateHelper;->getYearDifferenceWithNow(Ljava/util/Date;)I

    move-result v0

    sget-object v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->Companion:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$Companion;->getMINIMUM_AGE_FOR_USER()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setHasBirthdateError(Z)V

    .line 175
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$setSignUpButtonState(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)V

    return-void
.end method
