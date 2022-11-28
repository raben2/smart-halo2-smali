.class Lcom/mikepenz/itemanimators/BaseItemAnimator$4;
.super Lcom/mikepenz/itemanimators/BaseItemAnimator$VpaListenerAdapter;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/itemanimators/BaseItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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

    .line 246
    iput-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iput-object p2, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator$VpaListenerAdapter;-><init>(Lcom/mikepenz/itemanimators/BaseItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 254
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 255
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->removeAnimationCleanup(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 256
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 257
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$700(Lcom/mikepenz/itemanimators/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {p1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$800(Lcom/mikepenz/itemanimators/BaseItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 249
    iget-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
