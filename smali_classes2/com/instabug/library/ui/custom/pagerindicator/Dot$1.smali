.class Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Dot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/ui/custom/pagerindicator/Dot;->animateDotChange(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

.field final synthetic val$endColor:I

.field final synthetic val$endSize:I

.field final synthetic val$startColor:I

.field final synthetic val$startSize:I


# direct methods
.method constructor <init>(Lcom/instabug/library/ui/custom/pagerindicator/Dot;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->val$endSize:I

    iput p3, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->val$endColor:I

    iput p4, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->val$startSize:I

    iput p5, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->val$startColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-static {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$000(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-static {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$000(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->isStable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-static {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$000(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->transitioningFrom()Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$002(Lcom/instabug/library/ui/custom/pagerindicator/Dot;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->val$startSize:I

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$100(Lcom/instabug/library/ui/custom/pagerindicator/Dot;I)V

    .line 7
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->val$startColor:I

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$200(Lcom/instabug/library/ui/custom/pagerindicator/Dot;I)V

    .line 10
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$302(Lcom/instabug/library/ui/custom/pagerindicator/Dot;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-static {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$000(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-static {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$000(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->isStable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-static {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$000(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->transitioningTo()Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$002(Lcom/instabug/library/ui/custom/pagerindicator/Dot;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->val$endSize:I

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$100(Lcom/instabug/library/ui/custom/pagerindicator/Dot;I)V

    .line 7
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->val$endColor:I

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$200(Lcom/instabug/library/ui/custom/pagerindicator/Dot;I)V

    .line 10
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$302(Lcom/instabug/library/ui/custom/pagerindicator/Dot;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-static {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$000(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    sget-object v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->TRANSITIONING_TO_ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$002(Lcom/instabug/library/ui/custom/pagerindicator/Dot;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-static {p1}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$000(Lcom/instabug/library/ui/custom/pagerindicator/Dot;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$1;->this$0:Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    sget-object v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->TRANSITIONING_TO_INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    invoke-static {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->access$002(Lcom/instabug/library/ui/custom/pagerindicator/Dot;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    :cond_1
    :goto_0
    return-void
.end method
