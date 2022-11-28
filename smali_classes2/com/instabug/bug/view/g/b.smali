.class public Lcom/instabug/bug/view/g/b;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "DisclaimerDetailsFragment.java"


# instance fields
.field a:Lcom/instabug/bug/view/g/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/instabug/bug/view/g/a;)Lcom/instabug/bug/view/g/b;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "disclaimer"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    new-instance p0, Lcom/instabug/bug/view/g/b;

    invoke-direct {p0}, Lcom/instabug/bug/view/g/b;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$layout;->instabug_lyt_disclaimer_details:I

    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/instabug/library/R$id;->instabug_disclaimer_details:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/bug/view/g/b;->b:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "disclaimer"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/g/a;

    iput-object p1, p0, Lcom/instabug/bug/view/g/b;->a:Lcom/instabug/bug/view/g/a;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/instabug/bug/view/g/b;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/instabug/bug/view/g/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
