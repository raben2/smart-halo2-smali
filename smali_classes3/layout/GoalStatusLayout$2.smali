.class Llayout/GoalStatusLayout$2;
.super Ljava/lang/Object;
.source "GoalStatusLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/GoalStatusLayout;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/GoalStatusLayout;

.field final synthetic val$setInstructions:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Llayout/GoalStatusLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Llayout/GoalStatusLayout$2;->this$0:Llayout/GoalStatusLayout;

    iput-object p2, p0, Llayout/GoalStatusLayout$2;->val$setInstructions:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 85
    iget-object v0, p0, Llayout/GoalStatusLayout$2;->val$setInstructions:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 86
    iget-object v1, p0, Llayout/GoalStatusLayout$2;->val$setInstructions:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 88
    iget-object v0, p0, Llayout/GoalStatusLayout$2;->val$setInstructions:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x3f666666    # 0.9f

    mul-float v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Llayout/GoalStatusLayout$2;->val$setInstructions:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
