.class public Lcom/instabug/library/analytics/util/d;
.super Ljava/lang/Object;
.source "UploaderServiceLauncher.java"


# direct methods
.method public static a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/library/analytics/util/d$a;

    invoke-direct {v1, v0}, Lcom/instabug/library/analytics/util/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "UploaderServiceLauncher"

    const-string v1, "Context is null."

    .line 20
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
