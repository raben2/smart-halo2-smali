.class public final Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;
.super Ljava/lang/Object;
.source "SignUpFitnessViewState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020%R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001aR\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010#\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006\'"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;",
        "",
        "()V",
        "confirmButtonState",
        "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        "getConfirmButtonState",
        "()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        "setConfirmButtonState",
        "(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V",
        "gender",
        "Lbike/smarthalo/app/models/userModels/Gender;",
        "getGender",
        "()Lbike/smarthalo/app/models/userModels/Gender;",
        "setGender",
        "(Lbike/smarthalo/app/models/userModels/Gender;)V",
        "height",
        "",
        "getHeight",
        "()Ljava/lang/Integer;",
        "setHeight",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "isHeightMetric",
        "",
        "()Z",
        "setHeightMetric",
        "(Z)V",
        "isWeightMetric",
        "setWeightMetric",
        "weight",
        "",
        "getWeight",
        "()Ljava/lang/Double;",
        "setWeight",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getDisplayHeight",
        "",
        "getDisplayWeight",
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
.field private confirmButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gender:Lbike/smarthalo/app/models/userModels/Gender;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isHeightMetric:Z

.field private isWeightMetric:Z

.field private weight:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isHeightMetric:Z

    .line 17
    iput-boolean v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isWeightMetric:Z

    .line 19
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->confirmButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-void
.end method


# virtual methods
.method public final getConfirmButtonState()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->confirmButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-object v0
.end method

.method public final getDisplayHeight()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->height:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 23
    iget-boolean v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isHeightMetric:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->centimetersToCentimetersString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHConversionHelper.centi\u2026CentimetersString(height)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->centimetersToFeetAndInchesString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHConversionHelper.centi\u2026etAndInchesString(height)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final getDisplayWeight()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->weight:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isWeightMetric:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->kilogramsToKilogramsString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHConversionHelper.kilog\u2026ToKilogramsString(weight)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->kilogramsToPoundsString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHConversionHelper.kilogramsToPoundsString(weight)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final getGender()Lbike/smarthalo/app/models/userModels/Gender;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->gender:Lbike/smarthalo/app/models/userModels/Gender;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWeight()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->weight:Ljava/lang/Double;

    return-object v0
.end method

.method public final isHeightMetric()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isHeightMetric:Z

    return v0
.end method

.method public final isWeightMetric()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isWeightMetric:Z

    return v0
.end method

.method public final setConfirmButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->confirmButtonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-void
.end method

.method public final setGender(Lbike/smarthalo/app/models/userModels/Gender;)V
    .locals 0
    .param p1    # Lbike/smarthalo/app/models/userModels/Gender;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 12
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->gender:Lbike/smarthalo/app/models/userModels/Gender;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->height:Ljava/lang/Integer;

    return-void
.end method

.method public final setHeightMetric(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isHeightMetric:Z

    return-void
.end method

.method public final setWeight(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 13
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->weight:Ljava/lang/Double;

    return-void
.end method

.method public final setWeightMetric(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isWeightMetric:Z

    return-void
.end method
