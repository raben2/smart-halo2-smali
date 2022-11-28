.class public Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AlternateRoutesControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/adapters/AlternateRoutesControlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public background:Landroid/widget/LinearLayout;

.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field final synthetic this$0:Llayout/adapters/AlternateRoutesControlAdapter;

.field public time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Llayout/adapters/AlternateRoutesControlAdapter;Landroid/view/View;)V
    .locals 0

    .line 209
    iput-object p1, p0, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->this$0:Llayout/adapters/AlternateRoutesControlAdapter;

    .line 210
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a005a

    .line 211
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->background:Landroid/widget/LinearLayout;

    const p1, 0x7f0a005d

    .line 212
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0a005c

    .line 213
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const p1, 0x7f0a005b

    .line 214
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->time:Landroid/widget/TextView;

    return-void
.end method
