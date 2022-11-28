.class public Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "FeaturesRequestActivity.java"

# interfaces
.implements Lcom/instabug/library/_InstabugActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation


# instance fields
.field a:Lcom/instabug/featuresrequest/ui/custom/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;->a:Lcom/instabug/featuresrequest/ui/custom/b;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-class v0, Lcom/instabug/featuresrequest/FeaturesRequestPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/FeaturesRequestPlugin;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    .line 7
    new-instance p1, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    const-string v0, "foreground_status"

    const-string v1, "available"

    invoke-direct {p1, v0, v1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventPublisher;->post(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v2, v1, Lcom/instabug/featuresrequest/ui/c/a;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v1}, Lcom/instabug/featuresrequest/ui/c/a;->t()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/b;->a()Lcom/instabug/featuresrequest/ui/custom/b;

    move-result-object v1

    iput-object v1, p0, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;->a:Lcom/instabug/featuresrequest/ui/custom/b;

    const-string v2, "progress_dialog_fragment"

    .line 3
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 5
    instance-of v2, v1, Lcom/instabug/featuresrequest/ui/d/c;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lcom/instabug/featuresrequest/ui/d/c;

    invoke-virtual {v1}, Lcom/instabug/featuresrequest/ui/d/c;->t()V

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/e;->a()Lcom/instabug/featuresrequest/ui/custom/e;

    move-result-object v1

    const-string v2, "thanks_dialog_fragment"

    .line 13
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/LocaleUtils;->setLocale(Landroid/app/Activity;Ljava/util/Locale;)V

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/featuresrequest/g/c;->a(Lcom/instabug/library/InstabugColorTheme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    .line 5
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    sget v0, Lcom/instabug/featuresrequest/R$layout;->instabug_activity:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/instabug/featuresrequest/R$id;->instabug_fragment_container:I

    new-instance v1, Lcom/instabug/featuresrequest/ui/d/c;

    invoke-direct {v1}, Lcom/instabug/featuresrequest/ui/d/c;-><init>()V

    .line 11
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;->a(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;->a(Z)V

    return-void
.end method
