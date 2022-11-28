.class Lcom/mikepenz/itemanimators/BaseItemAnimator$6;
.super Lcom/mikepenz/itemanimators/BaseItemAnimator$VpaListenerAdapter;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/itemanimators/BaseItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mikepenz/itemanimators/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iput-object p2, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$deltaX:I

    iput p4, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$deltaY:I

    iput-object p5, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator$VpaListenerAdapter;-><init>(Lcom/mikepenz/itemanimators/BaseItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .line 369
    iget v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 372
    :cond_0
    iget v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 373
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 379
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 380
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 381
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$1100(Lcom/mikepenz/itemanimators/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 382
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$800(Lcom/mikepenz/itemanimators/BaseItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 364
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
