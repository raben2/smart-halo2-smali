.class public Lbike/smarthalo/app/activities/DFUNotificationActivity;
.super Landroid/app/Activity;
.source "DFUNotificationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DFUNotificationActivity;->isTaskRoot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DFUNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/DFUNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DFUNotificationActivity;->finish()V

    return-void
.end method
