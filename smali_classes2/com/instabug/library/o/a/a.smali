.class public Lcom/instabug/library/o/a/a;
.super Ljava/lang/Object;
.source "PromptOptionsLauncher.java"


# static fields
.field private static a:Lcom/instabug/library/o/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/instabug/library/o/a/a;
    .locals 2

    const-class v0, Lcom/instabug/library/o/a/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/o/a/a;->a:Lcom/instabug/library/o/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/instabug/library/o/a/a;

    invoke-direct {v1}, Lcom/instabug/library/o/a/a;-><init>()V

    sput-object v1, Lcom/instabug/library/o/a/a;->a:Lcom/instabug/library/o/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->INVOCATION_HEADER:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 10
    invoke-static {p1}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/instabug/library/R$string;->instabug_str_invocation_dialog_title:I

    invoke-static {v1, v2, p1}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {v0, p1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/core/plugin/PluginPromptOption;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/instabug/library/o/a/a;->a(Lcom/instabug/library/core/plugin/PluginPromptOption;Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)Ljava/util/ArrayList;
    .locals 4
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
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
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 32
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/core/plugin/PluginPromptOption;

    invoke-virtual {p0, v3, p2}, Lcom/instabug/library/o/a/a;->a(Lcom/instabug/library/core/plugin/PluginPromptOption;Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getAvailablePromptOptions()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/instabug/library/o/a/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/instabug/library/core/plugin/PluginPromptOption;Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
    .locals 2
    .param p2    # Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-virtual {p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getOrder()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 16
    new-instance v0, Lcom/instabug/library/invocation/invocationdialog/a;

    invoke-direct {v0}, Lcom/instabug/library/invocation/invocationdialog/a;-><init>()V

    .line 17
    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setOrder(I)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    invoke-direct {v0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setOrder(I)V

    .line 22
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setResDrawable(I)V

    .line 23
    invoke-virtual {p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setTitle(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setDescription(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getNotificationCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setBadge(I)V

    .line 26
    invoke-virtual {p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->isInitialScreenshotRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setInitialScreenshotRequired(Z)V

    .line 27
    invoke-virtual {v0, p2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setParent(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)V

    .line 28
    invoke-virtual {p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getSubOptions()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/instabug/library/o/a/a;->a(Ljava/util/ArrayList;Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setSubItems(Ljava/util/ArrayList;)V

    .line 29
    invoke-virtual {p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getPromptOptionIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->setIdentifier(I)V

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/o/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/instabug/library/o/a/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, p2, v1, v2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, p3, p2, p4, v0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
