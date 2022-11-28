.class public Lcom/instabug/bug/b;
.super Ljava/lang/Object;
.source "CoreEventsHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    .line 49
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instabug/bug/settings/a;->a(J)V

    .line 50
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/bug/settings/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 33
    new-instance v0, Lcom/instabug/bug/b$a;

    invoke-direct {v0, p0}, Lcom/instabug/bug/b$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "Bug/CoreEventsHandler"

    const-string v0, "Context was null during Bugs retrieval from DB"

    .line 48
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive new core event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-class v1, Lcom/instabug/bug/b;

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x36ebcb

    if-eq v1, v2, :cond_3

    const v2, 0x67a27890

    if-eq v1, v2, :cond_2

    const v2, 0x6de15a2e

    if-eq v1, v2, :cond_1

    const v2, 0x76508296

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "invocation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 24
    :pswitch_0
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    invoke-static {p0}, Lcom/instabug/bug/b;->a(Landroid/content/Context;)V

    goto :goto_2

    .line 26
    :pswitch_1
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "logged_out"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 27
    invoke-static {}, Lcom/instabug/bug/b;->d()V

    goto :goto_2

    .line 28
    :pswitch_2
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "started"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    invoke-static {p0}, Lcom/instabug/bug/view/actionList/service/ReportCategoriesService;->a(Landroid/content/Context;)V

    goto :goto_2

    .line 31
    :pswitch_3
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "invoked"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 32
    invoke-static {}, Lcom/instabug/bug/b;->b()V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method public static c()V
    .locals 2

    .line 1
    const-class v0, Lcom/instabug/bug/b;

    const-string v1, "SDK dismissed Handle sdk dismissing"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/instabug/bug/b;->f()V

    .line 3
    invoke-static {}, Lcom/instabug/bug/b;->e()V

    return-void
.end method

.method private static d()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/bug/b;->a()V

    return-void
.end method

.method private static e()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->f()V

    return-void
.end method

.method private static f()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->f()Lcom/instabug/library/OnSdkDismissCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->b()Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->f()Lcom/instabug/library/OnSdkDismissCallback;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->b()Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/bug/e;->a(Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;)Lcom/instabug/library/OnSdkDismissCallback$DismissType;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/model/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/bug/e;->a(Ljava/lang/String;)Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/instabug/library/OnSdkDismissCallback;->call(Lcom/instabug/library/OnSdkDismissCallback$DismissType;Lcom/instabug/library/OnSdkDismissCallback$ReportType;)V

    :cond_0
    return-void
.end method
