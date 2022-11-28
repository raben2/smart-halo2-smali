.class public Lcom/mikepenz/itemanimators/ScaleYAnimator;
.super Lcom/mikepenz/itemanimators/BaseScaleAnimator;
.source "ScaleYAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/itemanimators/BaseScaleAnimator<",
        "Lcom/mikepenz/itemanimators/ScaleYAnimator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/mikepenz/itemanimators/BaseScaleAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2

    .line 16
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/itemanimators/ScaleYAnimator;->getAddDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public addAnimationCleanup(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public addAnimationPrepare(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public changeAnimationCleanup(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 55
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public changeAnimationPrepare1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 34
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getScaleY(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public changeAnimationPrepare2(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V
    .locals 0

    .line 38
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public changeAnimationPrepare3(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 42
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public changeNewAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2

    .line 51
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/itemanimators/ScaleYAnimator;->getChangeDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public changeOldAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2

    .line 46
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/itemanimators/ScaleYAnimator;->getChangeDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p2, Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;->toX:I

    iget v1, p2, Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p2, Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;->toY:I

    iget p2, p2, Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2

    .line 25
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/mikepenz/itemanimators/ScaleYAnimator;->getRemoveDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public removeAnimationCleanup(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 30
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method
