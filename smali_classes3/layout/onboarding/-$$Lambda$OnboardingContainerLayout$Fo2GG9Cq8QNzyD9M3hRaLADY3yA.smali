.class public final synthetic Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$Fo2GG9Cq8QNzyD9M3hRaLADY3yA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Llayout/onboarding/OnboardingContainerLayout;

.field private final synthetic f$1:Landroid/view/animation/Animation;


# direct methods
.method public synthetic constructor <init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$Fo2GG9Cq8QNzyD9M3hRaLADY3yA;->f$0:Llayout/onboarding/OnboardingContainerLayout;

    iput-object p2, p0, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$Fo2GG9Cq8QNzyD9M3hRaLADY3yA;->f$1:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$Fo2GG9Cq8QNzyD9M3hRaLADY3yA;->f$0:Llayout/onboarding/OnboardingContainerLayout;

    iget-object v1, p0, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$Fo2GG9Cq8QNzyD9M3hRaLADY3yA;->f$1:Landroid/view/animation/Animation;

    invoke-static {v0, v1}, Llayout/onboarding/OnboardingContainerLayout;->lambda$playEntranceAnimation$3(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/animation/Animation;)V

    return-void
.end method
