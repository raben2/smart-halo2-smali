.class Llayout/GoalStatusLayout$1;
.super Ljava/lang/Object;
.source "GoalStatusLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Llayout/GoalStatusLayout;Landroid/app/Activity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    iput-object p2, p0, Llayout/GoalStatusLayout$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 60
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$000(Llayout/GoalStatusLayout;)I

    move-result p1

    const v0, 0x7f06007e

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$100(Llayout/GoalStatusLayout;)Landroid/widget/ImageButton;

    move-result-object p1

    const p2, 0x7f080237

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 62
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$200(Llayout/GoalStatusLayout;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Llayout/GoalStatusLayout$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0, p2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextColor(Landroid/widget/TextView;ILandroid/content/Context;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$000(Llayout/GoalStatusLayout;)I

    move-result p1

    if-ne p1, p2, :cond_3

    .line 64
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$100(Llayout/GoalStatusLayout;)Landroid/widget/ImageButton;

    move-result-object p1

    const p2, 0x7f0800a6

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 65
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$200(Llayout/GoalStatusLayout;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Llayout/GoalStatusLayout$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0, p2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextColor(Landroid/widget/TextView;ILandroid/content/Context;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$000(Llayout/GoalStatusLayout;)I

    move-result p1

    if-nez p1, :cond_2

    .line 69
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$100(Llayout/GoalStatusLayout;)Landroid/widget/ImageButton;

    move-result-object p1

    const p2, 0x7f080236

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 70
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$200(Llayout/GoalStatusLayout;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f060079

    iget-object v0, p0, Llayout/GoalStatusLayout$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextColor(Landroid/widget/TextView;ILandroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$000(Llayout/GoalStatusLayout;)I

    move-result p1

    if-ne p1, p2, :cond_3

    .line 72
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$100(Llayout/GoalStatusLayout;)Landroid/widget/ImageButton;

    move-result-object p1

    const p2, 0x7f0800a5

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 73
    iget-object p1, p0, Llayout/GoalStatusLayout$1;->this$0:Llayout/GoalStatusLayout;

    invoke-static {p1}, Llayout/GoalStatusLayout;->access$200(Llayout/GoalStatusLayout;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f0602ae

    iget-object v0, p0, Llayout/GoalStatusLayout$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextColor(Landroid/widget/TextView;ILandroid/content/Context;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
