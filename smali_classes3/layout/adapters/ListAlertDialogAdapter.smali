.class public Llayout/adapters/ListAlertDialogAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListAlertDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;,
        Llayout/adapters/ListAlertDialogAdapter$ItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Llayout/adapters/ListAlertDialogAdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private listener:Llayout/adapters/ListAlertDialogAdapter$ItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Llayout/adapters/ListAlertDialogAdapterItem;Llayout/adapters/ListAlertDialogAdapter$ItemClickListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Llayout/adapters/ListAlertDialogAdapterItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string p2, "layout_inflater"

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Llayout/adapters/ListAlertDialogAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object p4, p0, Llayout/adapters/ListAlertDialogAdapter;->listener:Llayout/adapters/ListAlertDialogAdapter$ItemClickListener;

    return-void
.end method

.method public static synthetic lambda$getView$0(Llayout/adapters/ListAlertDialogAdapter;ILandroid/view/View;)V
    .locals 0

    .line 43
    iget-object p2, p0, Llayout/adapters/ListAlertDialogAdapter;->listener:Llayout/adapters/ListAlertDialogAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Llayout/adapters/ListAlertDialogAdapter$ItemClickListener;->onItemClicked(I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 34
    iget-object p2, p0, Llayout/adapters/ListAlertDialogAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00dc

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 35
    new-instance p3, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;

    invoke-direct {p3, p0, p2}, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;-><init>(Llayout/adapters/ListAlertDialogAdapter;Landroid/view/View;)V

    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Llayout/adapters/ListAlertDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llayout/adapters/ListAlertDialogAdapterItem;

    if-eqz v0, :cond_1

    .line 43
    iget-object v1, p3, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;->rootView:Landroid/view/View;

    new-instance v2, Llayout/adapters/-$$Lambda$ListAlertDialogAdapter$lYwvF6jWZ9NP3Ho7X99ogqqnPoQ;

    invoke-direct {v2, p0, p1}, Llayout/adapters/-$$Lambda$ListAlertDialogAdapter$lYwvF6jWZ9NP3Ho7X99ogqqnPoQ;-><init>(Llayout/adapters/ListAlertDialogAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p3, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;->itemText:Landroid/widget/TextView;

    invoke-virtual {p0}, Llayout/adapters/ListAlertDialogAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Llayout/adapters/ListAlertDialogAdapterItem;->textResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p3, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;->itemIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Llayout/adapters/ListAlertDialogAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v0, v0, Llayout/adapters/ListAlertDialogAdapterItem;->iconResourceId:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p2
.end method
