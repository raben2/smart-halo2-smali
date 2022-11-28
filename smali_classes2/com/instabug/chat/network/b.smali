.class public Lcom/instabug/chat/network/b;
.super Lcom/instabug/library/network/BaseNetworkTask;
.source "MessageUploaderTask.java"


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
    new-instance v0, Lcom/instabug/chat/network/b;

    invoke-direct {v0, p0}, Lcom/instabug/chat/network/b;-><init>(Landroid/content/Context;)V

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
    new-instance v0, Lcom/instabug/chat/network/a;

    invoke-virtual {p0}, Lcom/instabug/library/network/BaseNetworkTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/chat/network/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/instabug/chat/network/a;->a()V

    .line 3
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getOfflineMessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/chat/network/a;->a(Ljava/util/List;)V

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
