.class public final synthetic Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$CIqWN9ifvTWA5WOehdNsPd5mvD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Llayout/onboarding/OnboardingContainerLayout$AnimationCompletedCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$CIqWN9ifvTWA5WOehdNsPd5mvD8;->f$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;

    return-void
.end method


# virtual methods
.method public final onAnimationCompleted()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/legacy/-$$Lambda$CIqWN9ifvTWA5WOehdNsPd5mvD8;->f$0:Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->displayIntro()V

    return-void
.end method
