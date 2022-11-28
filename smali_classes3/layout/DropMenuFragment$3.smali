.class Llayout/DropMenuFragment$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DropMenuFragment.java"


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

    .line 122
    iput-object p1, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 125
    iget-object p3, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    invoke-virtual {p3}, Llayout/DropMenuFragment;->getView()Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return p4

    .line 131
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 133
    iget-object v1, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    invoke-static {v1}, Llayout/DropMenuFragment;->access$200(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    invoke-static {v1}, Llayout/DropMenuFragment;->access$200(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_2

    .line 134
    :cond_1
    iget-object v1, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    mul-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Llayout/DropMenuFragment;->access$202(Llayout/DropMenuFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 135
    iget-object v0, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    invoke-static {v0}, Llayout/DropMenuFragment;->access$200(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Llayout/DropMenuFragment;->access$002(Llayout/DropMenuFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 138
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 140
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr p1, p2

    .line 144
    iget-object p2, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    invoke-static {p2}, Llayout/DropMenuFragment;->access$200(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    .line 145
    iget-object p1, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    invoke-static {p1}, Llayout/DropMenuFragment;->access$200(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 146
    :cond_3
    iget-object p2, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    invoke-static {p2}, Llayout/DropMenuFragment;->access$400(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_4

    .line 147
    iget-object p1, p0, Llayout/DropMenuFragment$3;->this$0:Llayout/DropMenuFragment;

    invoke-static {p1}, Llayout/DropMenuFragment;->access$400(Llayout/DropMenuFragment;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    :cond_4
    :goto_0
    float-to-int p1, p1

    int-to-float p1, p1

    .line 152
    invoke-virtual {p3, p1}, Landroid/view/View;->setY(F)V

    .line 153
    invoke-virtual {p3}, Landroid/view/View;->postInvalidateOnAnimation()V

    return p4
.end method
