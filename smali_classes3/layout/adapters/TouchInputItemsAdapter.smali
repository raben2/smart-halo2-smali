.class public Llayout/adapters/TouchInputItemsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TouchInputItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d00d6

    .line 27
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 28
    iput-object p2, p0, Llayout/adapters/TouchInputItemsAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemType(I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
    .locals 1

    .line 107
    iget-object v0, p0, Llayout/adapters/TouchInputItemsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Llayout/adapters/TouchInputItemsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0}, Llayout/adapters/TouchInputItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 36
    invoke-virtual {p0, p1}, Llayout/adapters/TouchInputItemsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    const p2, 0x7f0d00d6

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-virtual {p3, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    new-instance p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;

    invoke-direct {p3, p0, p2}, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;-><init>(Llayout/adapters/TouchInputItemsAdapter;Landroid/view/View;)V

    .line 43
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;

    :goto_0
    if-eqz p3, :cond_5

    .line 49
    iget-boolean v1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->isSpacer:Z

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 50
    iget-object p1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->touchItem:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 51
    iget-object p1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->itemSpacer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    iget-object p1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->itemDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object p1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->chevron:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 55
    :cond_1
    iget-object v1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->touchItem:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 56
    iget-object v1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->itemSpacer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 57
    iget-object v1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->icon:Landroid/widget/ImageView;

    iget v2, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->touchInputTapDescription:Landroid/widget/TextView;

    iget-object v2, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcodeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->touchInputDescription:Landroid/widget/TextView;

    iget-object v2, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->chevron:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    if-ne v0, v1, :cond_2

    .line 63
    iget-object v0, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->touchInputDescription:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Llayout/adapters/TouchInputItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0602b9

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->touchInputDescription:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Llayout/adapters/TouchInputItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060021

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_3

    goto :goto_2

    .line 77
    :cond_3
    iget-object p1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->itemDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 75
    :cond_4
    :goto_2
    iget-object p1, p3, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->itemDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_3
    return-object p2
.end method
