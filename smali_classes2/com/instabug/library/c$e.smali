.class Lcom/instabug/library/c$e;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->b(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;


# direct methods
.method constructor <init>(Lcom/instabug/library/c;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/c$e;->a:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/c$e;->a:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    invoke-static {v0, v1}, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a(Landroid/content/Context;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)Landroid/content/Intent;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
