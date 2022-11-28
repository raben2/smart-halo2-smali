.class Llayout/onboarding/OnboardingContainerLayout$5;
.super Ljava/lang/Object;
.source "OnboardingContainerLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/onboarding/OnboardingContainerLayout;->playEntranceAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/onboarding/OnboardingContainerLayout;

.field final synthetic val$callback:Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;


# direct methods
.method constructor <init>(Llayout/onboarding/OnboardingContainerLayout;Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V
    .locals 0

    .line 305
    iput-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$5;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    iput-object p2, p0, Llayout/onboarding/OnboardingContainerLayout$5;->val$callback:Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 313
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$5;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->access$102(Llayout/onboarding/OnboardingContainerLayout;Z)Z

    .line 315
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$5;->val$callback:Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;

    if-eqz p1, :cond_0

    .line 316
    invoke-interface {p1}, Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;->onAnimationCompleted()V

    :cond_0
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
