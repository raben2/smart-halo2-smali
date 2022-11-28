.class final Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$1;
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
        "TT;",
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Single;",
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;",
        "kotlin.jvm.PlatformType",
        "result",
        "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $signUpQuery:Lio/reactivex/Single;


# direct methods
.method constructor <init>(Lio/reactivex/Single;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$1;->$signUpQuery:Lio/reactivex/Single;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 116
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->Failure:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(SignUpResult.Failure)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_1
    sget-object p1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->EmailTaken:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(SignUpResult.EmailTaken)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$1;->$signUpQuery:Lio/reactivex/Single;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$1;->apply(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
