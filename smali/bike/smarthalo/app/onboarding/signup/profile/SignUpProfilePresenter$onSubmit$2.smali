.class final Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;
.super Ljava/lang/Object;
.source "SignUpProfilePresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->onSubmit()V
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
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;",
        "kotlin.jvm.PlatformType",
        "accept"
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

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setSignUpButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 133
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getSignUpCoordinator$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    move-result-object p1

    const v0, 0x7f11017d

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;->showError(I)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setSignUpButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 129
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getSignUpCoordinator$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    move-result-object p1

    const v0, 0x7f1102bf

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;->showError(I)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Success:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setSignUpButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 125
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$onSuccess(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)V

    .line 136
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->this$0:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;->accept(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;)V

    return-void
.end method
