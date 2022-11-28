.class final Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$onShown$1;
.super Ljava/lang/Object;
.source "ForgetPasswordView.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->onShown()V
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
        "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;",
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
        "viewState",
        "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;",
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
.field final synthetic this$0:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$onShown$1;->this$0:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$onShown$1;->this$0:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;

    const-string v1, "viewState"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->updateView(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$onShown$1;->accept(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;)V

    return-void
.end method
