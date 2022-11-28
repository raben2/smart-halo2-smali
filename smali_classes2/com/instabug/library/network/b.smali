.class public Lcom/instabug/library/network/b;
.super Landroid/content/BroadcastReceiver;
.source "InstabugNetworkReceiver.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/instabug/library/network/b;->a:Z

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/network/b;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/instabug/library/network/b;->a:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "InstabugNetworkReceiver"

    const-string v0, "Network state changed"

    .line 1
    invoke-static {p2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p2, "connectivity"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "InstabugNetworkReceiver"

    const-string v0, "ActiveNetwork not equal null, checking local cache"

    .line 7
    invoke-static {p2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/instabug/library/d;->a(Landroid/content/Context;)V

    .line 9
    new-instance p1, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    const-string p2, "network"

    const-string v0, "activated"

    invoke-direct {p1, p2, v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventPublisher;->post(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    goto :goto_0

    :cond_0
    const-string p1, "InstabugNetworkReceiver"

    const-string p2, "Context is null."

    .line 13
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
