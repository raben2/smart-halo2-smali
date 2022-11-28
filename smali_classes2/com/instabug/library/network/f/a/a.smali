.class public Lcom/instabug/library/network/f/a/a;
.super Lcom/instabug/library/network/BaseNetworkTask;
.source "FeaturesFetcherTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/network/BaseNetworkTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/network/BaseNetworkTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/network/f/a/a;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/f/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onHandleTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/network/f/a/a;->a()V

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
