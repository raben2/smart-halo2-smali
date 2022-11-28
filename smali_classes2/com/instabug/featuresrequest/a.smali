.class public Lcom/instabug/featuresrequest/a;
.super Ljava/lang/Object;
.source "FeatureRequestWrapper.java"


# direct methods
.method public static a()V
    .locals 3

    .line 17
    invoke-static {}, Lcom/instabug/featuresrequest/g/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/instabug/featuresrequest/g/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/instabug/library/Instabug;->isAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/instabug/library/Feature$State;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->FEATURE_REQUESTS:Lcom/instabug/library/Feature;

    invoke-static {v0, p0}, Lcom/instabug/library/core/InstabugCore;->setFeatureState(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/library/invocation/InvocationManager;->notifyInvocationOptionChanged()V

    return-void
.end method

.method public static varargs a(Z[I)V
    .locals 4

    if-eqz p1, :cond_3

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/instabug/featuresrequest/f/a;->a(Z)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/instabug/featuresrequest/f/a;->b(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_3
    :goto_2
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/instabug/featuresrequest/f/a;->b(Z)V

    .line 16
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/instabug/featuresrequest/f/a;->a(Z)V

    :cond_4
    return-void
.end method
