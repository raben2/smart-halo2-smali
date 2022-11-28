.class public abstract Lcom/instabug/bug/i/b;
.super Ljava/lang/Object;
.source "BaseReportingPromptItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getOnSdkInvokedCallback()Lcom/instabug/library/OnSdkInvokedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getOnSdkInvokedCallback()Lcom/instabug/library/OnSdkInvokedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/OnSdkInvokedCallback;->onSdkInvoked()V

    :cond_0
    return-void
.end method

.method static a(Landroid/net/Uri;)V
    .locals 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    const-class v0, Lcom/instabug/bug/BugPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/BugPlugin;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/bug/c;->b(Landroid/content/Context;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 8
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isShouldTakesInitialScreenshot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/instabug/bug/model/a;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v0}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {v0}, Lcom/instabug/bug/k/b/a;->b(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Lcom/instabug/bug/model/ReportCategory;Lcom/instabug/library/core/plugin/PluginPromptOption;Ljava/lang/String;I)Lcom/instabug/library/core/plugin/PluginPromptOption;
    .locals 1
    .param p2    # Lcom/instabug/library/core/plugin/PluginPromptOption;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    new-instance v0, Lcom/instabug/library/core/plugin/PluginPromptOption;

    invoke-direct {v0}, Lcom/instabug/library/core/plugin/PluginPromptOption;-><init>()V

    .line 18
    invoke-virtual {v0, p4}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setOrder(I)V

    .line 19
    invoke-virtual {p1}, Lcom/instabug/bug/model/ReportCategory;->getLabel()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setTitle(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/instabug/bug/model/ReportCategory;->getDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setDescription(Ljava/lang/String;)V

    const/4 p4, 0x1

    .line 21
    invoke-virtual {v0, p4}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setInitialScreenshotRequired(Z)V

    .line 22
    invoke-virtual {v0, p2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setParent(Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    .line 23
    invoke-virtual {p1}, Lcom/instabug/bug/model/ReportCategory;->getSubs()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p3}, Lcom/instabug/bug/i/b;->a(Ljava/util/List;Lcom/instabug/library/core/plugin/PluginPromptOption;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setSubOptions(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/instabug/bug/model/ReportCategory;->getSubReportCategories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, p1}, Lcom/instabug/bug/i/b;->a(Ljava/util/List;Lcom/instabug/library/core/plugin/PluginPromptOption;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/util/List;Lcom/instabug/library/core/plugin/PluginPromptOption;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/core/plugin/PluginPromptOption;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_NULLABLE_DEREFERENCE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/ReportCategory;",
            ">;",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/bug/model/ReportCategory;

    invoke-virtual {p0, v3, p2, p3, v2}, Lcom/instabug/bug/i/b;->a(Lcom/instabug/bug/model/ReportCategory;Lcom/instabug/library/core/plugin/PluginPromptOption;Ljava/lang/String;I)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
