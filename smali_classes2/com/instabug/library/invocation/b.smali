.class public Lcom/instabug/library/invocation/b;
.super Ljava/lang/Object;
.source "InvocationRequestListenerImp.java"

# interfaces
.implements Lcom/instabug/library/invocation/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/instabug/library/core/plugin/PluginPromptOption$PromptOptionIdentifier;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/instabug/library/core/plugin/b;->a(IZ)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/instabug/library/invocation/b;->a(Landroid/net/Uri;Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->isInitialScreenShotAllowed()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnInvokeCallback()Lcom/instabug/library/invocation/OnInvokeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnInvokeCallback()Lcom/instabug/library/invocation/OnInvokeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/invocation/OnInvokeCallback;->onInvoke()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/instabug/library/invocation/b;->b(Landroid/net/Uri;)V

    return-void
.end method

.method a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x5

    .line 16
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/b;->c(I)V

    return-void

    :pswitch_1
    const/4 p1, 0x2

    .line 17
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/b;->c(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    .line 18
    invoke-static {p1, v1}, Lcom/instabug/library/core/plugin/b;->a(IZ)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p1

    goto :goto_1

    .line 26
    :pswitch_3
    invoke-static {v1, v1}, Lcom/instabug/library/core/plugin/b;->a(IZ)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    const/4 p1, 0x0

    .line 27
    invoke-static {p1, v1}, Lcom/instabug/library/core/plugin/b;->a(IZ)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p1

    goto :goto_1

    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/instabug/library/invocation/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/b;->a(Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/instabug/library/invocation/b;->a(Landroid/net/Uri;Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/b;->b(Landroid/net/Uri;)V

    return-void
.end method

.method a(Landroid/net/Uri;Lcom/instabug/library/core/plugin/PluginPromptOption;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/core/plugin/PluginPromptOption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/instabug/library/o/a/a;->a()Lcom/instabug/library/o/a/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/instabug/library/o/a/a;->a(Lcom/instabug/library/core/plugin/PluginPromptOption;Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getSubItems()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getSubItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/instabug/library/o/a/a;->a()Lcom/instabug/library/o/a/a;

    move-result-object v2

    .line 12
    invoke-virtual {p2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getSubItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v0, p1, p2, v1}, Lcom/instabug/library/o/a/a;->a(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/instabug/library/core/plugin/PluginPromptOption;->invoke(Landroid/net/Uri;[Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method a(Lcom/instabug/library/core/plugin/PluginPromptOption;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 15
    new-instance v0, Lcom/instabug/library/invocation/b$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/invocation/b$b;-><init>(Lcom/instabug/library/invocation/b;Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    invoke-static {v0}, Lcom/instabug/library/core/InitialScreenshotHelper;->captureScreenshot(Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;)V

    return-void
.end method

.method b()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 53
    new-instance v0, Lcom/instabug/library/invocation/b$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/b$a;-><init>(Lcom/instabug/library/invocation/b;)V

    invoke-static {v0}, Lcom/instabug/library/core/InitialScreenshotHelper;->captureScreenshot(Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;)V

    return-void
.end method

.method b(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x5

    .line 54
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/b;->c(I)V

    return-void

    :pswitch_1
    const/4 p1, 0x2

    .line 55
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/b;->c(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    .line 56
    invoke-static {p1, v1}, Lcom/instabug/library/core/plugin/b;->a(IZ)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    const/4 p1, 0x1

    .line 62
    invoke-static {p1, v1}, Lcom/instabug/library/core/plugin/b;->a(IZ)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p1

    goto :goto_1

    .line 63
    :pswitch_4
    invoke-static {v1, v1}, Lcom/instabug/library/core/plugin/b;->a(IZ)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p1

    goto :goto_1

    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/instabug/library/invocation/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/b;->a(Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    goto :goto_2

    .line 80
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/instabug/library/invocation/b;->a(Landroid/net/Uri;Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/invocation/b;->c()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/instabug/library/invocation/b;->c(I)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/b;->c(I)V

    return-void

    :cond_2
    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 13
    invoke-direct {p0}, Lcom/instabug/library/invocation/b;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 23
    :pswitch_0
    invoke-direct {p0}, Lcom/instabug/library/invocation/b;->e()V

    .line 24
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/core/plugin/PluginPromptOption;

    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/b;->a(Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    goto :goto_0

    .line 25
    :pswitch_1
    invoke-direct {p0}, Lcom/instabug/library/invocation/b;->e()V

    .line 26
    invoke-virtual {p0}, Lcom/instabug/library/invocation/b;->b()V

    goto :goto_0

    :cond_3
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-direct {p0}, Lcom/instabug/library/invocation/b;->e()V

    .line 50
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/core/plugin/PluginPromptOption;

    invoke-virtual {p0, p1, v0}, Lcom/instabug/library/invocation/b;->a(Landroid/net/Uri;Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    goto :goto_0

    .line 51
    :pswitch_3
    invoke-direct {p0}, Lcom/instabug/library/invocation/b;->e()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/b;->c(Landroid/net/Uri;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method c()I
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, -0x1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/core/plugin/PluginPromptOption;

    .line 7
    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getPromptOptionIdentifier()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    return v3

    :cond_1
    return v1

    :cond_2
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method c(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 11
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/instabug/library/o/a/a;->a()Lcom/instabug/library/o/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/instabug/library/o/a/a;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
