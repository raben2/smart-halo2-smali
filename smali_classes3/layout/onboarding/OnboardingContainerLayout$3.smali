.class Llayout/onboarding/OnboardingContainerLayout$3;
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

.field final synthetic val$bubbleAnimation:Landroid/view/animation/Animation;

.field final synthetic val$fadeInAnimation:Landroid/view/animation/Animation;

.field final synthetic val$triangleAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .line 262
    iput-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$3;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    iput-object p2, p0, Llayout/onboarding/OnboardingContainerLayout$3;->val$fadeInAnimation:Landroid/view/animation/Animation;

    iput-object p3, p0, Llayout/onboarding/OnboardingContainerLayout$3;->val$triangleAnimation:Landroid/view/animation/Animation;

    iput-object p4, p0, Llayout/onboarding/OnboardingContainerLayout$3;->val$bubbleAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 270
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$3;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$200(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$3;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$300(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$3;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$300(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Llayout/onboarding/OnboardingContainerLayout$3;->val$fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$3;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$400(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$3;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$500(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$3;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$400(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout$3;->val$triangleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iget-object p1, p0, Llayout/onboarding/OnboardingContainerLayout$3;->this$0:Llayout/onboarding/OnboardingContainerLayout;

    invoke-static {p1}, Llayout/onboarding/OnboardingContainerLayout;->access$500(Llayout/onboarding/OnboardingContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Llayout/onboarding/OnboardingContainerLayout$3;->val$bubbleAnimation:Landroid/view/animation/Animation;

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
