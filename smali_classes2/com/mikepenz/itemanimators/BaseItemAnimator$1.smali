.class Lcom/mikepenz/itemanimators/BaseItemAnimator$1;
.super Ljava/lang/Object;
.source "BaseItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/itemanimators/BaseItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mikepenz/itemanimators/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$1;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iput-object p2, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 145
    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;

    .line 146
    iget-object v2, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$1;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iget-object v3, v1, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->toY:I

    invoke-static/range {v2 .. v7}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$000(Lcom/mikepenz/itemanimators/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$1;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$100(Lcom/mikepenz/itemanimators/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
