.class public Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;
.super Ljava/lang/Object;
.source "TouchInputItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/adapters/TouchInputItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchInputItemViewHolder"
.end annotation


# instance fields
.field chevron:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field itemDivider:Landroid/widget/ImageView;

.field itemSpacer:Landroid/view/ViewGroup;

.field final synthetic this$0:Llayout/adapters/TouchInputItemsAdapter;

.field touchInputDescription:Landroid/widget/TextView;

.field touchInputTapDescription:Landroid/widget/TextView;

.field touchItem:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Llayout/adapters/TouchInputItemsAdapter;Landroid/view/View;)V
    .locals 0

    .line 95
    iput-object p1, p0, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->this$0:Llayout/adapters/TouchInputItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0576

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0a057d

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->touchInputTapDescription:Landroid/widget/TextView;

    const p1, 0x7f0a0574

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->touchInputDescription:Landroid/widget/TextView;

    const p1, 0x7f0a00e0

    .line 99
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->chevron:Landroid/widget/ImageView;

    const p1, 0x7f0a030d

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->itemSpacer:Landroid/view/ViewGroup;

    const p1, 0x7f0a030b

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->itemDivider:Landroid/widget/ImageView;

    const p1, 0x7f0a0577

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Llayout/adapters/TouchInputItemsAdapter$TouchInputItemViewHolder;->touchItem:Landroid/view/ViewGroup;

    return-void
.end method
