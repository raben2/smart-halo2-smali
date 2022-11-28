.class public Lcom/instabug/library/j/a;
.super Ljava/lang/Object;
.source "Customizations.java"


# direct methods
.method public static a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v1, Lcom/instabug/library/j/a$a;

    invoke-direct {v1}, Lcom/instabug/library/j/a$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
