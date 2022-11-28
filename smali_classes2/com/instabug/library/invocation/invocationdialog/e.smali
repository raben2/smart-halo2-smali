.class public Lcom/instabug/library/invocation/invocationdialog/e;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "InstabugDialogActivityPresenter.java"

# interfaces
.implements Lcom/instabug/library/invocation/invocationdialog/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/library/invocation/invocationdialog/d;",
        ">;",
        "Lcom/instabug/library/invocation/invocationdialog/c;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/library/invocation/invocationdialog/d;

.field private b:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/invocationdialog/d;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/e;->a:Lcom/instabug/library/invocation/invocationdialog/d;

    .line 3
    invoke-interface {p1}, Lcom/instabug/library/invocation/invocationdialog/d;->getFadeInAnimation()I

    move-result p1

    iput p1, p0, Lcom/instabug/library/invocation/invocationdialog/e;->d:I

    .line 4
    iget-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/e;->a:Lcom/instabug/library/invocation/invocationdialog/d;

    invoke-interface {p1}, Lcom/instabug/library/invocation/invocationdialog/d;->getSlidOutLeftAnimation()I

    move-result p1

    iput p1, p0, Lcom/instabug/library/invocation/invocationdialog/e;->e:I

    .line 6
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instabug/library/settings/SettingsManager;->setProcessingForeground(Z)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/invocationdialog/e;)Lcom/instabug/library/invocation/invocationdialog/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->a:Lcom/instabug/library/invocation/invocationdialog/d;

    return-object p0
.end method

.method private b(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;Landroid/net/Uri;)V
    .locals 3
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getAvailablePromptOptions()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/invocationdialog/e;->c(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getOrder()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/instabug/library/core/plugin/PluginPromptOption;

    .line 7
    invoke-virtual {p2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getOrder()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->invoke()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getIdentifier()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instabug/library/core/plugin/b;->a(IZ)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/invocationdialog/e;->b(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->invoke(Landroid/net/Uri;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)[Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getParent()Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getParent()Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 22
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private c(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
    .locals 1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getParent()Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getParent()Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private h()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->c:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/instabug/library/invocation/invocationdialog/e;->a:Lcom/instabug/library/invocation/invocationdialog/d;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/library/invocation/invocationdialog/e$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/invocation/invocationdialog/e$a;-><init>(Lcom/instabug/library/invocation/invocationdialog/e;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->d:I

    return v0
.end method

.method a(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->isInitialScreenshotRequired()Z

    move-result p1

    if-nez p1, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/instabug/library/invocation/invocationdialog/d;->onInitialScreenShotNotRequired()V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/e;->b:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/invocation/invocationdialog/e;->h()V

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getSubItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object p2, p0, Lcom/instabug/library/invocation/invocationdialog/e;->a:Lcom/instabug/library/invocation/invocationdialog/d;

    invoke-interface {p2}, Lcom/instabug/library/invocation/invocationdialog/d;->getSlidInRightAnimation()I

    move-result p2

    iput p2, p0, Lcom/instabug/library/invocation/invocationdialog/e;->d:I

    .line 8
    iget-object p2, p0, Lcom/instabug/library/invocation/invocationdialog/e;->a:Lcom/instabug/library/invocation/invocationdialog/d;

    invoke-interface {p2}, Lcom/instabug/library/invocation/invocationdialog/d;->getSlidOutLeftAnimation()I

    move-result p2

    iput p2, p0, Lcom/instabug/library/invocation/invocationdialog/e;->e:I

    .line 9
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/invocationdialog/e;->c(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/instabug/library/invocation/invocationdialog/e;->a:Lcom/instabug/library/invocation/invocationdialog/d;

    invoke-interface {p2, p1, v0}, Lcom/instabug/library/invocation/invocationdialog/d;->setContent(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/invocation/invocationdialog/e;->b(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs a([Landroid/net/Uri;)V
    .locals 5

    .line 15
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {v0}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 19
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 20
    new-instance v4, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;

    invoke-direct {v4, v3}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Lcom/instabug/library/internal/storage/DiskUtils;->deleteOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;

    move-result-object v3

    const/4 v4, 0x0

    .line 21
    invoke-virtual {v3, v4}, Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;->executeAsync(Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "InstabugDialogActivityPresenter"

    const-string v0, "Can\'t execute dumpAttachments() due to null context"

    .line 23
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->e:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->b:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->b:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getParent()Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->b:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->a:Lcom/instabug/library/invocation/invocationdialog/d;

    invoke-interface {v0}, Lcom/instabug/library/invocation/invocationdialog/d;->getSlidInLeftAnimation()I

    move-result v0

    iput v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->d:I

    .line 5
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->a:Lcom/instabug/library/invocation/invocationdialog/d;

    invoke-interface {v0}, Lcom/instabug/library/invocation/invocationdialog/d;->getSlidOutRightAnimation()I

    move-result v0

    iput v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->e:I

    return-void
.end method

.method public e()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getLastUsedInvoker()Lcom/instabug/library/invocation/d/a;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lcom/instabug/library/invocation/d/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/invocation/invocationdialog/e;->i()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/invocationdialog/e;->h()V

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setShouldAutoShowOnboarding(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/e;->b:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    return-void
.end method
