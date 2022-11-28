.class public Lbike/smarthalo/app/activities/LaunchActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LaunchActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "LaunchActivity"

    .line 12
    iput-object v0, p0, Lbike/smarthalo/app/activities/LaunchActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public launchMainActivity()V
    .locals 1

    .line 41
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHRoutingHelper;->launchMainActivity(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, v0}, Lbike/smarthalo/app/activities/LaunchActivity;->overridePendingTransition(II)V

    .line 43
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/LaunchActivity;->finish()V

    return-void
.end method

.method public launchOnboarding()V
    .locals 1

    .line 34
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHRoutingHelper;->launchOnboardingActivity(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/LaunchActivity;->finish()V

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, v0}, Lbike/smarthalo/app/activities/LaunchActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/LaunchActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const-string p1, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/LaunchActivity;->finish()V

    return-void

    .line 28
    :cond_0
    invoke-static {p0, p0}, Lbike/smarthalo/app/presenters/LaunchPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/LaunchActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$Presenter;

    .line 29
    iget-object p1, p0, Lbike/smarthalo/app/activities/LaunchActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$Presenter;->decideRoute()V

    return-void
.end method
