.class Llayout/onboarding/OnboardingContainerLayout$7;
.super Ljava/lang/Object;
.source "OnboardingContainerLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/onboarding/OnboardingContainerLayout;->playExitAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/onboarding/OnboardingContainerLayout;

.field final synthetic val$bubbleAnimation:Landroid/view/animation/AnimationSet;

.field final synthetic val$triangleAnimation:Landroid/view/animation/AnimationSet;


# direct methods
.method constructor <init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/animation/AnimationSet;Landroid/view/animation/AnimationSet;)V
    .locals 0

    .line 419
    iput-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$7;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    iput-object p2, p0, Llayout/onboarding/OnboardingContainerLayout$7;->val$triangleAnimation:Landroid/view/animation/AnimationSet;

    iput-object p3, p0, Llayout/onboarding/OnboardingContainerLayout$7;->val$bubbleAnimation:Landroid/view/animation/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 427
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$7;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$600(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$7;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$400(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout$7;->val$triangleAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 430
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$7;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$500(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout$7;->val$bubbleAnimation:Landroid/view/animation/AnimationSet;

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
