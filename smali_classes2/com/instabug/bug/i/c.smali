.class public Lcom/instabug/bug/i/c;
.super Lcom/instabug/bug/i/b;
.source "BugReportingPromptItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/i/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;
    .locals 4

    .line 1
    new-instance v0, Lcom/instabug/library/core/plugin/PluginPromptOption;

    invoke-direct {v0}, Lcom/instabug/library/core/plugin/PluginPromptOption;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setOrder(I)V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setInvocationMode(I)V

    .line 4
    sget v3, Lcom/instabug/bug/R$drawable;->ibg_core_ic_report_bug:I

    invoke-virtual {v0, v3}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setIcon(I)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setPromptOptionIdentifier(I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setTitle(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setDescription(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/instabug/bug/i/c$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/bug/i/c$a;-><init>(Lcom/instabug/bug/i/c;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setOnInvocationListener(Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;)V

    .line 14
    invoke-virtual {v0, v2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setInitialScreenshotRequired(Z)V

    const-string p1, "bug"

    .line 15
    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setSubOptions(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method protected a(Lcom/instabug/bug/model/ReportCategory;Lcom/instabug/library/core/plugin/PluginPromptOption;Ljava/lang/String;I)Lcom/instabug/library/core/plugin/PluginPromptOption;
    .locals 0
    .param p2    # Lcom/instabug/library/core/plugin/PluginPromptOption;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/instabug/bug/i/b;->a(Lcom/instabug/bug/model/ReportCategory;Lcom/instabug/library/core/plugin/PluginPromptOption;Ljava/lang/String;I)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p1

    const/4 p2, 0x1

    .line 34
    invoke-virtual {p1, p2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setInvocationMode(I)V

    const/4 p2, 0x0

    .line 35
    invoke-virtual {p1, p2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setPromptOptionIdentifier(I)V

    return-object p1
.end method

.method protected varargs a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 3
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-static {}, Lcom/instabug/bug/i/b;->a()V

    const-string v0, "BugReportingPromptItem"

    const-string v1, "Handle invocation request new bug"

    .line 17
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Lcom/instabug/bug/i/b;->a(Landroid/net/Uri;)V

    .line 19
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 20
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Lcom/instabug/bug/model/a;->a(Ljava/util/ArrayList;)V

    .line 21
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object p2

    const-string v0, "Report a problem"

    .line 22
    invoke-virtual {p2, v0}, Lcom/instabug/bug/model/a;->a(Ljava/lang/String;)V

    .line 23
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p3, v0

    .line 24
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Lcom/instabug/bug/model/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/instabug/bug/i/b;->b()V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 30
    invoke-static {p1, p3, p3, p3, p2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/instabug/bug/i/c;->d(Landroid/content/Context;)V

    return-void
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_BUG_DESCRIPTION:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 3
    invoke-static {p1}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/instabug/bug/R$string;->ib_bug_report_bug_description:I

    invoke-static {v1, v2, p1}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_BUG:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 3
    invoke-static {p1}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/instabug/bug/R$string;->IBGPromptOptionsReportBug:I

    invoke-static {v1, v2, p1}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method d(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/instabug/bug/d;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
