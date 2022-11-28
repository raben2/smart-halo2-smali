.class public final Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;
.super Ljava/lang/Object;
.source "ForgetPasswordViewState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;",
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
        "isButtonEnabled",
        "",
        "()Z",
        "setButtonEnabled",
        "(Z)V",
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

.field private isButtonEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->email:Ljava/lang/String;

    .line 12
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->emailError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    return-void
.end method


# virtual methods
.method public final getEmail()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailError()Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->emailError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    return-object v0
.end method

.method public final isButtonEnabled()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->isButtonEnabled:Z

    return v0
.end method

.method public final setButtonEnabled(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->isButtonEnabled:Z

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->email:Ljava/lang/String;

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

    .line 12
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->emailError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    return-void
.end method
