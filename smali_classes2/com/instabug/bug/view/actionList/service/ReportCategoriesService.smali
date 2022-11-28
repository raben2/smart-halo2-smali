.class public Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;
.super Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;
.source "ReportCategoriesService.java"


# instance fields
.field a:Lcom/instabug/library/util/TaskDebouncer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;-><init>()V

    .line 5
    new-instance v0, Lcom/instabug/library/util/TaskDebouncer;

    const-wide/16 v1, 0xbb8

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/util/TaskDebouncer;-><init>(J)V

    iput-object v0, p0, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;->a:Lcom/instabug/library/util/TaskDebouncer;

    return-void
.end method

.method private a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;->a:Lcom/instabug/library/util/TaskDebouncer;

    new-instance v1, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService$a;

    invoke-direct {v1, p0}, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService$a;-><init>(Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/TaskDebouncer;->debounce(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/instabug/bug/view/actionList/service/a;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-class v0, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;

    const/16 v1, 0xa33

    invoke-static {p0, v0, v1, p1}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->enqueueInstabugWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected runBackgroundTask()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;->a()V

    return-void
.end method
