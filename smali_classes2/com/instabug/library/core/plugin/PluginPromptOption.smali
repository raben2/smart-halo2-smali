.class public Lcom/instabug/library/core/plugin/PluginPromptOption;
.super Ljava/lang/Object;
.source "PluginPromptOption.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/core/plugin/PluginPromptOption$PromptOptionIdentifier;,
        Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;,
        Lcom/instabug/library/core/plugin/PluginPromptOption$a;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "SE_BAD_FIELD"
    }
.end annotation


# static fields
.field public static final NO_ORDER:I = -0x1


# instance fields
.field private description:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private icon:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private invocationMode:I

.field private isInitialScreenshotRequired:Z

.field private notificationCount:I

.field private onInvocationListener:Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private order:I

.field private parent:Lcom/instabug/library/core/plugin/PluginPromptOption;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private promptOptionIdentifier:I
    .annotation build Lcom/instabug/library/core/plugin/PluginPromptOption$PromptOptionIdentifier;
    .end annotation
.end field

.field private subOptions:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->icon:I

    return v0
.end method

.method public getInvocationMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->invocationMode:I

    return v0
.end method

.method public getNotificationCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->notificationCount:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->order:I

    return v0
.end method

.method public getParent()Lcom/instabug/library/core/plugin/PluginPromptOption;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->parent:Lcom/instabug/library/core/plugin/PluginPromptOption;

    return-object v0
.end method

.method public getPromptOptionIdentifier()I
    .locals 1
    .annotation build Lcom/instabug/library/core/plugin/PluginPromptOption$PromptOptionIdentifier;
    .end annotation

    .line 1
    iget v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->promptOptionIdentifier:I

    return v0
.end method

.method public getSubOptions()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->subOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->title:Ljava/lang/String;

    return-object v0
.end method

.method public invoke()V
    .locals 2

    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/instabug/library/core/plugin/PluginPromptOption;->invoke(Landroid/net/Uri;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs invoke(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->onInvocationListener:Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;->onInvoke(Landroid/net/Uri;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isInitialScreenshotRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->isInitialScreenshotRequired:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->description:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->icon:I

    return-void
.end method

.method public setInitialScreenshotRequired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->isInitialScreenshotRequired:Z

    return-void
.end method

.method public setInvocationMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->invocationMode:I

    return-void
.end method

.method public setNotificationCount(I)V
    .locals 1

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 1
    iput v0, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->notificationCount:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->notificationCount:I

    goto :goto_0

    .line 5
    :cond_1
    iput p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->notificationCount:I

    :goto_0
    return-void
.end method

.method public setOnInvocationListener(Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;)V
    .locals 0
    .param p1    # Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->onInvocationListener:Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->order:I

    return-void
.end method

.method public setParent(Lcom/instabug/library/core/plugin/PluginPromptOption;)V
    .locals 0
    .param p1    # Lcom/instabug/library/core/plugin/PluginPromptOption;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->parent:Lcom/instabug/library/core/plugin/PluginPromptOption;

    :cond_0
    return-void
.end method

.method public setPromptOptionIdentifier(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/instabug/library/core/plugin/PluginPromptOption$PromptOptionIdentifier;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->promptOptionIdentifier:I

    return-void
.end method

.method public setSubOptions(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->subOptions:Ljava/util/ArrayList;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/core/plugin/PluginPromptOption;->title:Ljava/lang/String;

    return-void
.end method
