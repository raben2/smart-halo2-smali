.class Lcom/mikepenz/itemanimators/BaseItemAnimator$2;
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

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mikepenz/itemanimators/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$2;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    iput-object p2, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;

    .line 170
    iget-object v2, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$2;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {v2, v1}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$200(Lcom/mikepenz/itemanimators/BaseItemAnimator;Lcom/mikepenz/itemanimators/BaseItemAnimator$ChangeInfo;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v0, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$2;->this$0:Lcom/mikepenz/itemanimators/BaseItemAnimator;

    invoke-static {v0}, Lcom/mikepenz/itemanimators/BaseItemAnimator;->access$300(Lcom/mikepenz/itemanimators/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
