.class public Lcom/instabug/bug/network/c;
.super Lcom/instabug/library/network/BaseNetworkTask;
.source "BugsUploaderTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/network/BaseNetworkTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/bug/network/c;

    invoke-direct {v0, p0}, Lcom/instabug/bug/network/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onHandleTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/bug/network/a;

    invoke-virtual {p0}, Lcom/instabug/library/network/BaseNetworkTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/bug/network/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/instabug/bug/network/a;->a()V

    return-void
.end method

.method public onTaskCancelled()V
    .locals 0

    return-void
.end method

.method public onTaskFinished()V
    .locals 0

    return-void
.end method
