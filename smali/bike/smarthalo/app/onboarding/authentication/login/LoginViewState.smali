.class public final Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;
.super Ljava/lang/Object;
.source "LoginViewState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;",
        "",
        "()V",
        "email",
        "",
        "getEmail",
        "()Ljava/lang/String;",
        "setEmail",
        "(Ljava/lang/String;)V",
        "emailError",
        "Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;",
        "getEmailError",
        "()Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;",
        "setEmailError",
        "(Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;)V",
        "loginButtonState",
        "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        "getLoginButtonState",
        "()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        "setLoginButtonState",
        "(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V",
        "password",
        "getPassword",
        "setPassword",
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
.field private email:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private emailError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loginButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->email:Ljava/lang/String;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->password:Ljava/lang/String;

    .line 14
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->emailError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    .line 15
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Disabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->loginButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-void
.end method


# virtual methods
.method public final getEmail()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailError()Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->emailError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    return-object v0
.end method

.method public final getLoginButtonState()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->loginButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->email:Ljava/lang/String;

    return-void
.end method

.method public final setEmailError(Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->emailError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    return-void
.end method

.method public final setLoginButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->loginButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->password:Ljava/lang/String;

    return-void
.end method
