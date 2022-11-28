.class public abstract Lcom/mikepenz/itemanimators/BaseScaleAnimator;
.super Lcom/mikepenz/itemanimators/BaseItemAnimator;
.source "BaseScaleAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mikepenz/itemanimators/BaseItemAnimator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public changeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 3

    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    .line 12
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    .line 13
    invoke-virtual {p0, p1}, Lcom/mikepenz/itemanimators/BaseScaleAnimator;->changeAnimationPrepare1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v2

    .line 14
    invoke-virtual {p0, p1}, Lcom/mikepenz/itemanimators/BaseScaleAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int/2addr p5, p3

    int-to-float p3, p5

    sub-float/2addr p3, v0

    float-to-int p3, p3

    sub-int/2addr p6, p4

    int-to-float p4, p6

    sub-float/2addr p4, v1

    float-to-int p4, p4

    .line 18
    iget-object p5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p5, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 19
    iget-object p5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p5, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 21
    invoke-virtual {p0, p1, v2}, Lcom/mikepenz/itemanimators/BaseScaleAnimator;->changeAnimationPrepare2(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p0, p2}, Lcom/mikepenz/itemanimators/BaseScaleAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 25
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int p3, p3

    int-to-float p3, p3

    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 26
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int p3, p4

    int-to-float p3, p3

    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/mikepenz/itemanimators/BaseScaleAnimator;->changeAnimationPrepare3(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public abstract changeAnimationPrepare1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
.end method

.method public abstract changeAnimationPrepare2(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V
.end method

.method public abstract changeAnimationPrepare3(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method
