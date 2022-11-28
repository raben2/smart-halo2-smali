.class Llayout/onboarding/OnboardingContainerLayout$6;
.super Ljava/lang/Object;
.source "OnboardingContainerLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/onboarding/OnboardingContainerLayout;->playErrorAnimation(Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;)V
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

    .line 344
    iput-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$6;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    iput-object p2, p0, Llayout/onboarding/OnboardingContainerLayout$6;->val$callback:Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 352
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$6;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$700(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$6;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$300(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$6;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1, v0}, Llayout/onboarding/OnboardingContainerLayout;->access$102(Llayout/onboarding/OnboardingContainerLayout;Z)Z

    .line 356
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$6;->val$callback:Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;

    if-eqz p1, :cond_0

    .line 357
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
