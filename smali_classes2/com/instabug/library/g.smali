.class Lcom/instabug/library/g;
.super Ljava/lang/Object;
.source "SessionDetailsProvider.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/library/g;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method a()Lcom/instabug/library/model/d;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/instabug/library/model/d$a;

    invoke-direct {v1}, Lcom/instabug/library/model/d$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/d$a;->c(Ljava/lang/String;)Lcom/instabug/library/model/d$a;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/d$a;->b(Ljava/lang/String;)Lcom/instabug/library/model/d$a;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/g;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instabug/library/model/d$a;->a(J)Lcom/instabug/library/model/d$a;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/g;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Lcom/instabug/library/model/d$a;->a(Ljava/lang/String;)Lcom/instabug/library/model/d$a;

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/instabug/library/model/d$a;->a()Lcom/instabug/library/model/d;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput-object v0, p0, Lcom/instabug/library/g;->a:Ljava/lang/ref/WeakReference;

    return-object v1

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/instabug/library/g;->a:Ljava/lang/ref/WeakReference;

    .line 12
    throw v1
.end method

.method b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getAppToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/g;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/instabug/library/util/DeviceStateProvider;->getFreeMemory(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getOS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
