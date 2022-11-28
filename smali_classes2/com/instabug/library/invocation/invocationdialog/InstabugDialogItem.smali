.class public Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
.super Ljava/lang/Object;
.source "InstabugDialogItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private badgeCount:I

.field private description:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private identifier:I

.field private isInitialScreenshotRequired:Z

.field private order:I

.field private parent:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private resDrawable:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private subItems:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
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

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->title:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->badgeCount:I

    .line 5
    iput p3, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->resDrawable:I

    .line 6
    iput-boolean p4, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->isInitialScreenshotRequired:Z

    return-void
.end method


# virtual methods
.method public getBadgeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->badgeCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()I
    .locals 1
    .annotation build Lcom/instabug/library/core/plugin/PluginPromptOption$PromptOptionIdentifier;
    .end annotation

    .line 1
    iget v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->identifier:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->order:I

    return v0
.end method

.method public getParent()Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->parent:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    return-object v0
.end method

.method public getResDrawable()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->resDrawable:I

    return v0
.end method

.method public getSubItems()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->subItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isInitialScreenshotRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->isInitialScreenshotRequired:Z

    return v0
.end method

.method public setBadge(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->badgeCount:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/instabug/library/core/plugin/PluginPromptOption$PromptOptionIdentifier;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->identifier:I

    return-void
.end method

.method public setInitialScreenshotRequired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->isInitialScreenshotRequired:Z

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->order:I

    return-void
.end method

.method public setParent(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)V
    .locals 0
    .param p1    # Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->parent:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    :cond_0
    return-void
.end method

.method public setResDrawable(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->resDrawable:I

    return-void
.end method

.method public setSubItems(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->subItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->title:Ljava/lang/String;

    return-void
.end method
