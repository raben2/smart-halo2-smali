.class final Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$signUpQuery$1;
.super Ljava/lang/Object;
.source "SignUpProfilePresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;",
        "result",
        "Lbike/smarthalo/app/models/GenericResponse;",
        "Lbike/smarthalo/app/models/SHUser;",
        "kotlin.jvm.PlatformType",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$signUpQuery$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$signUpQuery$1;

    invoke-direct {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$signUpQuery$1;-><init>()V

    sput-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$signUpQuery$1;->INSTANCE:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$signUpQuery$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lbike/smarthalo/app/models/GenericResponse;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/GenericResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;)",
            "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->Success:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    goto :goto_0

    :cond_0
    sget-object p1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->Failure:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$signUpQuery$1;->apply(Lbike/smarthalo/app/models/GenericResponse;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    move-result-object p1

    return-object p1
.end method
