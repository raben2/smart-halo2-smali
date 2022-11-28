.class public final synthetic Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$tIby-vItGPbISEUPfjetjo3bfbU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Llayout/onboarding/OnboardingContainerLayout;

.field private final synthetic f$1:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$tIby-vItGPbISEUPfjetjo3bfbU;->f$0:Llayout/onboarding/OnboardingContainerLayout;

    iput-object p2, p0, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$tIby-vItGPbISEUPfjetjo3bfbU;->f$1:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$tIby-vItGPbISEUPfjetjo3bfbU;->f$0:Llayout/onboarding/OnboardingContainerLayout;

    iget-object v1, p0, Llayout/onboarding/-$$Lambda$OnboardingContainerLayout$tIby-vItGPbISEUPfjetjo3bfbU;->f$1:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Llayout/onboarding/OnboardingContainerLayout;->lambda$setOnNextClickListener$0(Llayout/onboarding/OnboardingContainerLayout;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
