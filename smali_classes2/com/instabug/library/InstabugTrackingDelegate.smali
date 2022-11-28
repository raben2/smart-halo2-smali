.class public final Lcom/instabug/library/InstabugTrackingDelegate;
.super Ljava/lang/Object;
.source "InstabugTrackingDelegate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyActivityGotTouchEvent(Landroid/view/MotionEvent;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyActivityGotTouchEvent() has been deprecated, you no longer need to use it to let Instabug capture the user steps and interactions with the UI. Starting from SDK V 8.5.0, Instabug can capture those details out of the box."

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyApplicationCreated(Landroid/app/Application;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static notifyFragmentAttached(Landroid/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentAttached() API has been deprecated, as android.app.Fragment has been deprecated by android framework"

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentAttached() API has been deprecated, you no longer need to use it to let Instabug capture the user steps and interactions with the UI. Starting from SDK V 8.5.0, Instabug can capture those details out of the box."

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentDetached(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentAttached() API has been deprecated, as android.app.Fragment has been deprecated by android framework"

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentDetached(Landroidx/fragment/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentDetached() API has been deprecated, you no longer need to use it to let Instabug capture the user steps and interactions with the UI. Starting from SDK V 8.5.0, Instabug can capture those details out of the box."

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentPaused(Landroid/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentAttached() API has been deprecated, as android.app.Fragment has been deprecated by android framework"

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentPaused(Landroidx/fragment/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentPaused() API has been deprecated, you no longer need to use it to let Instabug capture the user steps and interactions with the UI. Starting from SDK V 8.5.0, Instabug can capture those details out of the box."

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentResumed(Landroid/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentAttached() API has been deprecated, as android.app.Fragment has been deprecated by android framework"

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentResumed(Landroidx/fragment/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentResumed() API has been deprecated, you no longer need to use it to let Instabug capture the user steps and interactions with the UI. Starting from SDK V 8.5.0, Instabug can capture those details out of the box."

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentStarted(Landroid/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentAttached() API has been deprecated, as android.app.Fragment has been deprecated by android framework"

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentStarted(Landroidx/fragment/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentStarted() API has been deprecated, you no longer need to use it to let Instabug capture the user steps and interactions with the UI. Starting from SDK V 8.5.0, Instabug can capture those details out of the box."

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentStopped(Landroid/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentAttached() API has been deprecated, as android.app.Fragment has been deprecated by android framework"

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentStopped(Landroidx/fragment/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentStopped() API has been deprecated, you no longer need to use it to let Instabug capture the user steps and interactions with the UI. Starting from SDK V 8.5.0, Instabug can capture those details out of the box."

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentViewCreated(Landroid/view/View;Landroid/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentAttached() API has been deprecated, as android.app.Fragment has been deprecated by android framework"

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentViewCreated(Landroid/view/View;Landroidx/fragment/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentViewCreated() API has been deprecated, you no longer need to use it to let Instabug capture the user steps and interactions with the UI. Starting from SDK V 8.5.0, Instabug can capture those details out of the box."

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentVisibilityChanged(ZLandroid/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object p0

    const-string p1, "InstabugTrackingDelegate.notifyFragmentAttached() API has been deprecated, as android.app.Fragment has been deprecated by android framework"

    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFragmentVisibilityChanged(ZLandroidx/fragment/app/Fragment;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->onFragmentVisibilityChanged(ZLandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static notifyFragmentVisibilityChanged(ZLandroidx/fragment/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->onFragmentVisibilityChanged(ZLandroidx/fragment/app/Fragment;)V

    return-void
.end method
