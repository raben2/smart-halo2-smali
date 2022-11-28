.class public Lcom/instabug/library/invocation/invocationdialog/f;
.super Landroid/widget/BaseAdapter;
.source "InstabugDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/invocation/invocationdialog/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/f;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private a(Lcom/instabug/library/invocation/invocationdialog/f$a;Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 5
    iget-object v0, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    invoke-virtual {p2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getResDrawable()I

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getResDrawable()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object p2, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object p1, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object p2, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object p2, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->b:Landroid/widget/TextView;

    invoke-static {p2, v2, v2, v2, v2}, Lcom/instabug/library/invocation/invocationdialog/f;->a(Landroid/view/View;IIII)V

    .line 19
    iget-object p1, p1, Lcom/instabug/library/invocation/invocationdialog/f$a;->c:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-static {p1, v2, p2, v2, v2}, Lcom/instabug/library/invocation/invocationdialog/f;->a(Landroid/view/View;IIII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/f;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/invocationdialog/f;->getItem(I)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/instabug/library/R$layout;->ib_dialog_list_item:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/instabug/library/invocation/invocationdialog/f$a;

    invoke-direct {p3, p2}, Lcom/instabug/library/invocation/invocationdialog/f$a;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/instabug/library/invocation/invocationdialog/f$a;

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/invocationdialog/f;->getItem(I)Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/instabug/library/invocation/invocationdialog/f;->a(Lcom/instabug/library/invocation/invocationdialog/f$a;Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)V

    return-object p2
.end method
