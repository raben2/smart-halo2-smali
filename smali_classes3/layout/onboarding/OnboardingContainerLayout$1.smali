.class Llayout/onboarding/OnboardingContainerLayout$1;
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

.field final synthetic val$callback:Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;

.field final synthetic val$fadeOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Llayout/onboarding/OnboardingContainerLayout;Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;Landroid/view/animation/Animation;)V
    .locals 0

    .line 158
    iput-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$1;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    iput-object p2, p0, Llayout/onboarding/OnboardingContainerLayout$1;->val$callback:Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;

    iput-object p3, p0, Llayout/onboarding/OnboardingContainerLayout$1;->val$fadeOutAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 166
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$1;->val$callback:Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;

    invoke-interface {p1}, Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;->onAnimationCompleted()V

    .line 167
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$1;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$000(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout$1;->val$fadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

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
