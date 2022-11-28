.class Lcom/mikepenz/itemanimators/BaseItemAnimator$5;
.super Lcom/mikepenz/itemanimators/BaseItemAnimator$VpaListenerAdapter;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/itemanimators/BaseItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mikepenz/itemanimators/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iput-object p2, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator$VpaListenerAdapter;-><init>(Lcom/mikepenz/itemanimators/BaseItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .line 287
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->addAnimationCleanup(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 293
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 294
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$900(Lcom/mikepenz/itemanimators/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 295
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$800(Lcom/mikepenz/itemanimators/BaseItemAnimator;)V

    .line 296
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->addAnimationCleanup(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
