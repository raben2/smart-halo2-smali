.class final Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$2;
.super Ljava/lang/Object;
.source "SignUpFitnessView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$2;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$2;->this$0:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->getPresenterContract()Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;->onGenderSelected()V

    return-void
.end method
