.class Lcom/mikepenz/itemanimators/BaseItemAnimator$8;
.super Lcom/mikepenz/itemanimators/BaseItemAnimator$VpaListenerAdapter;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/itemanimators/BaseItemAnimator;->animateChangeImpl(Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

.field final synthetic val$changeInfo:Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;

.field final synthetic val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/mikepenz/itemanimators/BaseItemAnimator;Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iput-object p2, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$changeInfo:Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p5, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator$VpaListenerAdapter;-><init>(Lcom/mikepenz/itemanimators/BaseItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 438
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 439
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->changeAnimationCleanup(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 440
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 441
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 442
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$changeInfo:Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 443
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$1300(Lcom/mikepenz/itemanimators/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$changeInfo:Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 444
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$800(Lcom/mikepenz/itemanimators/BaseItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 433
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$8;->val$changeInfo:Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
