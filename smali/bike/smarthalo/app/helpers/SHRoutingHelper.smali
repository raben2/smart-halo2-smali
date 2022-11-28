.class public Lbike/smarthalo/app/helpers/SHRoutingHelper;
.super Ljava/lang/Object;
.source "SHRoutingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x14010000

    .line 17
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static launchMainActivity(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHRoutingHelper;->getMainActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static launchOnboardingActivity(Landroid/content/Context;)V
    .locals 2

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/onboarding/OnboardingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14010000

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
