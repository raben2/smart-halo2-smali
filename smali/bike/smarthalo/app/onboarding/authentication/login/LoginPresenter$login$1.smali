.class final Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;
.super Ljava/lang/Object;
.source "LoginPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->login()V
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
        "Lbike/smarthalo/app/models/SHUser;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lbike/smarthalo/app/models/GenericResponse;",
        "Lbike/smarthalo/app/models/SHUser;",
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
.field final synthetic this$0:Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;->this$0:Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;

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
            "Lbike/smarthalo/app/models/SHUser;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    .line 60
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;->this$0:Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Success:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->setLoginButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 62
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;->this$0:Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->access$onSuccess(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;->this$0:Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->setLoginButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 65
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;->this$0:Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->access$getAuthenticationCoordinator$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

    move-result-object p1

    const v0, 0x7f1102ec

    invoke-interface {p1, v0}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;->showError(I)V

    .line 67
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;->this$0:Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->access$getCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;->this$0:Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;->accept(Lbike/smarthalo/app/models/GenericResponse;)V

    return-void
.end method
