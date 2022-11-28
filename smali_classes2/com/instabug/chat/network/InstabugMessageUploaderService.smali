.class public Lcom/instabug/chat/network/InstabugMessageUploaderService;
.super Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;
.source "InstabugMessageUploaderService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-class v0, Lcom/instabug/chat/network/InstabugMessageUploaderService;

    const/16 v1, 0xa11

    invoke-static {p0, v0, v1, p1}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->enqueueInstabugWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected runBackgroundTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/chat/network/a;

    invoke-direct {v0, p0}, Lcom/instabug/chat/network/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/instabug/chat/network/a;->a()V

    .line 3
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getOfflineMessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/chat/network/a;->a(Ljava/util/List;)V

    return-void
.end method
