.class Llayout/onboarding/OnboardingContainerLayout$2;
.super Ljava/lang/Object;
.source "OnboardingContainerLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/onboarding/OnboardingContainerLayout;->animatePageTransition(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/onboarding/OnboardingContainerLayout;


# direct methods
.method constructor <init>(Llayout/onboarding/OnboardingContainerLayout;)V
    .locals 0

    .line 176
    iput-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$2;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 184
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$2;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$000(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$2;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->access$102(Llayout/onboarding/OnboardingContainerLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
