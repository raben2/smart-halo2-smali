.class Llayout/DropMenuFragment$1;
.super Ljava/lang/Object;
.source "DropMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/DropMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/DropMenuFragment;


# direct methods
.method constructor <init>(Llayout/DropMenuFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 66
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    .line 72
    iget-object v0, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {v0}, Llayout/DropMenuFragment;->access$000(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {v0}, Llayout/DropMenuFragment;->access$000(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 73
    iget-object p2, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p2}, Llayout/DropMenuFragment;->access$100(Llayout/DropMenuFragment;)Landroid/view/VelocityTracker;

    move-result-object p2

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 74
    iget-object p2, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p2}, Llayout/DropMenuFragment;->access$100(Llayout/DropMenuFragment;)Landroid/view/VelocityTracker;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    const/high16 v0, -0x3b860000    # -1000.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 75
    iget-object p2, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p2}, Llayout/DropMenuFragment;->access$200(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 76
    iget-object v0, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {v0, v1}, Llayout/DropMenuFragment;->access$302(Llayout/DropMenuFragment;Z)Z

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p2}, Llayout/DropMenuFragment;->access$400(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 80
    :cond_1
    iget-object p2, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p2}, Llayout/DropMenuFragment;->access$200(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 81
    iget-object p2, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p2}, Llayout/DropMenuFragment;->access$200(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 82
    iget-object v0, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {v0, v1}, Llayout/DropMenuFragment;->access$302(Llayout/DropMenuFragment;Z)Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const-string v0, "y"

    .line 85
    new-array v1, v1, [F

    int-to-float p2, p2

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 86
    iget-object p2, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p2}, Llayout/DropMenuFragment;->access$500(Llayout/DropMenuFragment;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return v2

    :cond_3
    const/4 p1, 0x2

    if-ne v0, p1, :cond_5

    .line 92
    iget-object p1, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p1}, Llayout/DropMenuFragment;->access$100(Llayout/DropMenuFragment;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-nez p1, :cond_4

    .line 93
    iget-object p1, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-static {p1, v0}, Llayout/DropMenuFragment;->access$102(Llayout/DropMenuFragment;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 96
    :cond_4
    iget-object p1, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p1}, Llayout/DropMenuFragment;->access$100(Llayout/DropMenuFragment;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 99
    :cond_5
    iget-object p1, p0, Llayout/DropMenuFragment$1;->this$0:Llayout/DropMenuFragment;

    invoke-static {p1}, Llayout/DropMenuFragment;->access$600(Llayout/DropMenuFragment;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
