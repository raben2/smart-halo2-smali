.class public final Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;
.super Ljava/lang/Object;
.source "SignUpProfileViewState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR\u001a\u0010!\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000c\"\u0004\u0008#\u0010\u000eR\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006*"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;",
        "",
        "()V",
        "birthDate",
        "Ljava/util/Date;",
        "getBirthDate",
        "()Ljava/util/Date;",
        "setBirthDate",
        "(Ljava/util/Date;)V",
        "email",
        "",
        "getEmail",
        "()Ljava/lang/String;",
        "setEmail",
        "(Ljava/lang/String;)V",
        "firstName",
        "getFirstName",
        "setFirstName",
        "hasBirthdateError",
        "",
        "getHasBirthdateError",
        "()Z",
        "setHasBirthdateError",
        "(Z)V",
        "hasEmailError",
        "getHasEmailError",
        "setHasEmailError",
        "hasPasswordError",
        "getHasPasswordError",
        "setHasPasswordError",
        "lastName",
        "getLastName",
        "setLastName",
        "password",
        "getPassword",
        "setPassword",
        "signUpButtonState",
        "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        "getSignUpButtonState",
        "()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        "setSignUpButtonState",
        "(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V",
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
.field private birthDate:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasBirthdateError:Z

.field private hasEmailError:Z

.field private hasPasswordError:Z

.field private lastName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private signUpButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->firstName:Ljava/lang/String;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->lastName:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->password:Ljava/lang/String;

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->email:Ljava/lang/String;

    .line 22
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Disabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->signUpButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-void
.end method


# virtual methods
.method public final getBirthDate()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->birthDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasBirthdateError()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->hasBirthdateError:Z

    return v0
.end method

.method public final getHasEmailError()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->hasEmailError:Z

    return v0
.end method

.method public final getHasPasswordError()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->hasPasswordError:Z

    return v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignUpButtonState()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->signUpButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-object v0
.end method

.method public final setBirthDate(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 16
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->birthDate:Ljava/util/Date;

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

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->email:Ljava/lang/String;

    return-void
.end method

.method public final setFirstName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->firstName:Ljava/lang/String;

    return-void
.end method

.method public final setHasBirthdateError(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->hasBirthdateError:Z

    return-void
.end method

.method public final setHasEmailError(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->hasEmailError:Z

    return-void
.end method

.method public final setHasPasswordError(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->hasPasswordError:Z

    return-void
.end method

.method public final setLastName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->lastName:Ljava/lang/String;

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

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->password:Ljava/lang/String;

    return-void
.end method

.method public final setSignUpButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->signUpButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-void
.end method
