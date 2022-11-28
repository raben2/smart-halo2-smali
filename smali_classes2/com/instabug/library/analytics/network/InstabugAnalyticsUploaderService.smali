.class public Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;
.super Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;
.source "InstabugAnalyticsUploaderService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/analytics/util/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/analytics/network/a;->a()Lcom/instabug/library/analytics/network/a;

    move-result-object v1

    new-instance v2, Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService$a;

    invoke-direct {v2, p0}, Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService$a;-><init>(Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/instabug/library/analytics/network/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/instabug/library/network/Request$Callbacks;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-class v0, Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;

    const/16 v1, 0xa20

    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/InstabugBackgroundService;->enqueueInstabugWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected runBackgroundTask()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getLastUploadedAt(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;->a()V

    :cond_0
    return-void
.end method
