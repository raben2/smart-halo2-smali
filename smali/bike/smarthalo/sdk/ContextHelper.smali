.class public Lbike/smarthalo/sdk/ContextHelper;
.super Ljava/lang/Object;
.source "ContextHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainLooperHandler(Landroid/content/Context;)Landroid/os/Handler;
    .locals 1

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static runOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 13
    invoke-static {p0}, Lbike/smarthalo/sdk/ContextHelper;->getMainLooperHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 20
    invoke-static {p0}, Lbike/smarthalo/sdk/ContextHelper;->getMainLooperHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
