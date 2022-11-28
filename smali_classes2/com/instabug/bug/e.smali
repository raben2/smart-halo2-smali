.class public Lcom/instabug/bug/e;
.super Ljava/lang/Object;
.source "ReportingPluginWrapper.java"


# direct methods
.method public static a(Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;)Lcom/instabug/library/OnSdkDismissCallback$DismissType;
    .locals 1

    .line 19
    sget-object v0, Lcom/instabug/bug/e$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 22
    sget-object p0, Lcom/instabug/library/OnSdkDismissCallback$DismissType;->CANCEL:Lcom/instabug/library/OnSdkDismissCallback$DismissType;

    return-object p0

    .line 26
    :cond_0
    sget-object p0, Lcom/instabug/library/OnSdkDismissCallback$DismissType;->ADD_ATTACHMENT:Lcom/instabug/library/OnSdkDismissCallback$DismissType;

    return-object p0

    .line 27
    :cond_1
    sget-object p0, Lcom/instabug/library/OnSdkDismissCallback$DismissType;->SUBMIT:Lcom/instabug/library/OnSdkDismissCallback$DismissType;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/instabug/library/OnSdkDismissCallback$ReportType;
    .locals 5

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const v4, -0xb6a147b

    if-eq v0, v4, :cond_3

    const v4, 0x17e74

    if-eq v0, v4, :cond_2

    const v4, 0xf1eec4f

    if-eq v0, v4, :cond_1

    const v4, 0x609fc0cc

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ask a question"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "not-available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const-string v0, "bug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "feedback"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_5

    .line 31
    sget-object p0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->BUG:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    return-object p0

    .line 37
    :cond_5
    sget-object p0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->OTHER:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    return-object p0

    .line 38
    :cond_6
    sget-object p0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->QUESTION:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    return-object p0

    .line 39
    :cond_7
    sget-object p0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->FEEDBACK:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    return-object p0
.end method

.method static a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/instabug/bug/e$a;

    invoke-direct {v0, p0}, Lcom/instabug/bug/e$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static a(ZLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    .line 8
    sget-object v1, Lcom/instabug/library/Feature;->BUG_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    new-instance p0, Lcom/instabug/bug/i/c;

    invoke-direct {p0}, Lcom/instabug/bug/i/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/c;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p0, Lcom/instabug/bug/i/d;

    invoke-direct {p0}, Lcom/instabug/bug/i/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/d;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p0, Lcom/instabug/bug/i/a;

    invoke-direct {p0}, Lcom/instabug/bug/i/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/a;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 14
    new-instance p0, Lcom/instabug/bug/i/c;

    invoke-direct {p0}, Lcom/instabug/bug/i/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/c;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p0, Lcom/instabug/bug/i/d;

    invoke-direct {p0}, Lcom/instabug/bug/i/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/d;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p0, Lcom/instabug/bug/i/a;

    invoke-direct {p0}, Lcom/instabug/bug/i/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/a;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/instabug/bug/e;->b()V

    :cond_0
    return-void
.end method

.method static a(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p0    # Lio/reactivex/disposables/Disposable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 17
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/instabug/bug/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/bug/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/instabug/bug/i/a;

    invoke-direct {v0}, Lcom/instabug/bug/i/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/instabug/bug/i/a;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lcom/instabug/library/Feature;->BUG_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "bug"

    .line 4
    invoke-static {v1}, Lcom/instabug/bug/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/instabug/bug/i/c;

    invoke-direct {v1}, Lcom/instabug/bug/i/c;-><init>()V

    invoke-virtual {v1, p0}, Lcom/instabug/bug/i/c;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "feedback"

    .line 6
    invoke-static {v1}, Lcom/instabug/bug/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lcom/instabug/bug/i/d;

    invoke-direct {v1}, Lcom/instabug/bug/i/d;-><init>()V

    invoke-virtual {v1, p0}, Lcom/instabug/bug/i/d;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-static {v0, p0}, Lcom/instabug/bug/e;->a(Ljava/util/ArrayList;Landroid/content/Context;)V

    return-object v0
.end method

.method private static b()V
    .locals 2

    .line 11
    invoke-static {}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator()Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    new-instance v1, Lcom/instabug/bug/e$b;

    invoke-direct {v1}, Lcom/instabug/bug/e$b;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrate()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .line 10
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/bug/settings/a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c()V
    .locals 1

    .line 3
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0}, Lcom/instabug/bug/BugReporting;->setState(Lcom/instabug/library/Feature$State;)V

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/instabug/bug/a;->b([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/bug/settings/a;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/instabug/bug/e;->a()V

    return-void
.end method

.method private static d()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->CHATS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v0

    return v0
.end method

.method private static e()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->IN_APP_MESSAGING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()V
    .locals 0

    return-void
.end method
