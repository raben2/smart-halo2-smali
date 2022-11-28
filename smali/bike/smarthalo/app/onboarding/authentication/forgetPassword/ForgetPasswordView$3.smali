.class final Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ForgetPasswordView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;-><init>(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/text/Editable;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "email",
        "Landroid/text/Editable;",
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
.field final synthetic this$0:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$3;->this$0:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$3;->invoke(Landroid/text/Editable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$3;->this$0:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->getPresenterContract()Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;->onEmailTextChanged(Ljava/lang/String;)V

    return-void
.end method
